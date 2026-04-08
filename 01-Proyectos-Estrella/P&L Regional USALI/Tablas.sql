CREATE TABLE Dim_Inventario_Hoteles (
    ID_Pais VARCHAR(50) PRIMARY KEY,
    Habitaciones_Totales INT
);

INSERT INTO Dim_Inventario_Hoteles (ID_Pais, Habitaciones_Totales)
VALUES 
('Argentina', 150), 
('Uruguay', 80),    
('Brasil', 250),    
('Mexico', 300);
GO

-- 1. Insertamos la nueva lógica unificada (Válida para los 4 países)
INSERT INTO Dim_Mapeo_Cuentas (ID_Pais, Cuenta_Local_Desde, Cuenta_Local_Hasta, Cuenta_Corporativa, Tipo_Movimiento)
VALUES 
-- Aplicamos esto para cada país (Argentina, Uruguay, Brasil, Mexico)
('Argentina', 1000, 1099, 'Ventas Alojamiento', 'Ingresos'),
('Argentina', 1100, 1199, 'Ventas F&B', 'Ingresos'),
('Argentina', 1200, 1299, 'Otros Ingresos', 'Ingresos'),
('Argentina', 2000, 2999, 'Costos Directos', 'Costos'),
('Argentina', 3000, 3999, 'Gastos Operativos', 'Gastos OP'),
('Argentina', 4000, 4999, 'Gastos No Operativos', 'Gastos No OP'),

('Uruguay', 1000, 1099, 'Ventas Alojamiento', 'Ingresos'),
('Uruguay', 1100, 1199, 'Ventas F&B', 'Ingresos'),
('Uruguay', 1200, 1299, 'Otros Ingresos', 'Ingresos'),
('Uruguay', 2000, 2999, 'Costos Directos', 'Costos'),
('Uruguay', 3000, 3999, 'Gastos Operativos', 'Gastos OP'),
('Uruguay', 4000, 4999, 'Gastos No Operativos', 'Gastos No OP'),

('Brasil', 1000, 1099, 'Ventas Alojamiento', 'Ingresos'),
('Brasil', 1100, 1199, 'Ventas F&B', 'Ingresos'),
('Brasil', 1200, 1299, 'Otros Ingresos', 'Ingresos'),
('Brasil', 2000, 2999, 'Costos Directos', 'Costos'),
('Brasil', 3000, 3999, 'Gastos Operativos', 'Gastos OP'),
('Brasil', 4000, 4999, 'Gastos No Operativos', 'Gastos No OP'),

('Mexico', 1000, 1099, 'Ventas Alojamiento', 'Ingresos'),
('Mexico', 1100, 1199, 'Ventas F&B', 'Ingresos'),
('Mexico', 1200, 1299, 'Otros Ingresos', 'Ingresos'),
('Mexico', 2000, 2999, 'Costos Directos', 'Costos'),
('Mexico', 3000, 3999, 'Gastos Operativos', 'Gastos OP'),
('Mexico', 4000, 4999, 'Gastos No Operativos', 'Gastos No OP');
GO

-- Usamos un bucle simple para cargar los 4 países con la misma lógica
DECLARE @Paises TABLE (Nombre VARCHAR(50));
INSERT INTO @Paises VALUES ('Argentina'), ('Uruguay'), ('Brasil'), ('Mexico');

INSERT INTO Dim_Mapeo_Cuentas (ID_Pais, Cuenta_Local_Desde, Cuenta_Local_Hasta, Cuenta_Corporativa, Tipo_Movimiento)
SELECT 
    Nombre, 
    R.Desde, R.Hasta, R.Corp, R.Tipo
FROM @Paises
CROSS JOIN (
    VALUES 
    (1000, 1099, 'Ventas Alojamiento', 'Ingresos'),
    (1100, 1199, 'Ventas F&B', 'Ingresos'), -- Aquí recuperamos F&B
    (1200, 1299, 'Otros Ingresos', 'Ingresos'),
    (2000, 2999, 'Costos Directos', 'Costos'),
    (3000, 3999, 'Gastos Operativos', 'Gastos OP'),
    (4000, 4999, 'Gastos No Operativos', 'Gastos No OP')
) AS R(Desde, Hasta, Corp, Tipo);
GO

INSERT INTO transacciones_contables_reales (Fecha, ID_Pais, Moneda, Depto, Cuenta_Local, Importe_Local)
SELECT 
    DATEADD(day, (ABS(CHECKSUM(NEWID())) % 365), '2024-01-01') AS Fecha,
    P.Pais,
    CASE P.Pais 
        WHEN 'Argentina' THEN 'ARS' 
        WHEN 'Uruguay' THEN 'UYU' 
        WHEN 'Brasil' THEN 'BRL' 
        ELSE 'MXN' END AS Moneda,
    'Miscellaneous' AS Depto,
    1250 AS Cuenta_Local, 
    (ABS(CHECKSUM(NEWID())) % 50 + 20) * CASE P.Pais 
        WHEN 'Argentina' THEN 1000 
        WHEN 'Uruguay' THEN 39 
        WHEN 'Brasil' THEN 5 
        ELSE 17 END AS Importe_Local
FROM (VALUES ('Argentina'), ('Uruguay'), ('Brasil'), ('Mexico')) AS P(Pais)
-- Usamos una tabla de sistema solo para "multiplicar" las filas, 
-- pero le ponemos un nombre que no te traiga problemas:
CROSS JOIN (SELECT TOP 250 name FROM sys.all_objects) AS GeneradorDeFilas;
GO

-- 1. Inflamos los Gastos Operativos (HR, Mantenimiento, etc.) x25
UPDATE transacciones_contables_reales
SET Importe_Local = Importe_Local * 25
WHERE Depto IN ('Administracion', 'Mantenimiento', 'HR', 'Ventas');

-- 2. Inflamos los Gastos No Operativos (Impuestos, Intereses) x10
UPDATE transacciones_contables_reales
SET Importe_Local = Importe_Local * 10
WHERE Depto = 'Otros';
GO

CREATE TABLE Dim_Estructura_USALI (
    ID INT PRIMARY KEY,
    Depto VARCHAR(50),      -- El "Padre" en la jerarquía
    Tipo_Movimiento VARCHAR(50),   -- El "Hijo" (Ingreso / Gasto)
    Orden_Departamento INT,        -- Para que Rooms aparezca primero que F&B
    Orden_Movimiento INT           -- Para que Ingresos aparezca arriba de Gastos
);

-- Ejemplo de datos:
INSERT INTO Dim_Estructura_USALI VALUES 
(1, 'Accomodation', 'Ingresos', 1, 1),
(2, 'Accomodation', 'Costos', 1, 2),
(3, 'F&B', 'Ingresos', 2, 1),
(4, 'F&B', 'Costos', 2, 2),
(5, 'Miscellaneous', 'Ingresos', 3, 1),
(6, 'Miscellaneous', 'Costos', 3, 2),
(7, 'Administracion', 'Gastos OP', 4, 1),
(8, 'Ventas', 'Gastos OP', 5, 1),
(9, 'HR', 'Gastos OP', 6, 1),
(10, 'Mantenimiento', 'Gastos OP', 7, 1),
(11, 'Otros', 'Gastos No OP', 8, 1);
GO
