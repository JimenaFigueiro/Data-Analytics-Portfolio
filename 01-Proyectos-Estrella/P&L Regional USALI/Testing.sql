SELECT *
FROM Vista_Consolidacion_Global;
GO

SELECT
Id_Pais,
Cuenta_Corporativa,
COUNT(*) AS Cantidad_Registros,
SUM(Importe_USD) AS Total_USD
FROM Vista_Consolidacion_Global
GROUP BY ID_Pais, Cuenta_Corporativa
ORDER BY ID_Pais, Cuenta_Corporativa;
GO

SELECT 
    ID_Pais,
    -- Contamos cuántas habitaciones vendimos en el año
    COUNT(*) AS Total_Ventas_Habitacion,
    -- Calculamos la capacidad real: (Habitaciones del hotel * 365 días)
    MAX(Capacidad_Diaria_Hotel) * 365 AS Capacidad_Anual_Real,
    -- La magia del porcentaje
    CAST(COUNT(*) AS FLOAT) / (MAX(Capacidad_Diaria_Hotel) * 365) AS Porcentaje_TO_Real
FROM Vista_Consolidacion_Global
WHERE Cuenta_Corporativa = 'Ventas Alojamiento'
GROUP BY ID_Pais;
GO

SELECT 
    ID_Pais,
    Cuenta_Corporativa, 
    Tipo_Movimiento, 
    COUNT(*) as Cantidad_Filas,
    SUM(Importe_USD) as Total_USD
FROM Vista_Consolidacion_Global -- <--- Miramos la VISTA directamente
GROUP BY ID_Pais,Cuenta_Corporativa, Tipo_Movimiento
ORDER BY ID_Pais,Cuenta_Corporativa,Tipo_Movimiento;