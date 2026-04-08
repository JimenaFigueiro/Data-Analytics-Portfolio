CREATE OR ALTER VIEW Vista_Consolidacion_Global AS
SELECT 
    T.Fecha,
    T.ID_Pais,
    T.Depto,
    T.Moneda,
    T.Cuenta_Local,
    M.Cuenta_Corporativa,
    M.Tipo_Movimiento,
    T.Importe_Local,
    -- Calculamos el USD en la misma vista
    ROUND(T.Importe_Local / TC.Tipo_Cambio_USD, 2) AS Importe_USD,
    -- Aquí está el truco: Traemos el valor real de la tabla de inventario
    I.Habitaciones_Totales AS Capacidad_Diaria_Hotel
FROM transacciones_contables_reales T
LEFT JOIN Dim_Mapeo_Cuentas M 
    ON T.ID_Pais = M.ID_Pais 
    AND T.Cuenta_Local BETWEEN M.Cuenta_Local_Desde AND M.Cuenta_Local_Hasta
LEFT JOIN dimension_tc_robusta TC 
    ON T.Fecha = TC.Fecha 
    AND T.Moneda = TC.Moneda
LEFT JOIN Dim_Inventario_Hoteles I 
    ON T.ID_Pais = I.ID_Pais;
GO

CREATE OR ALTER VIEW Vista_Dim_USALI AS
SELECT
    ID,
    Depto,
    Tipo_Movimiento,
    Orden_Departamento,
    Orden_Movimiento
FROM Dim_Estructura_USALI;
GO