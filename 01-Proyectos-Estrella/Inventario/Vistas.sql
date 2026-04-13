CREATE OR ALTER VIEW V_Analisis_Inventario AS
SELECT 
    f.fecha,
    p.product_id,
    p.nombre_prod,
    p.categoria,
    prov.nombre_prov as proveedor,
    prov.reputacion as prov_reputacion,
    
    -- Métricas de Cantidad
    f.stock_inicial,
    f.entradas,
    f.salidas,
    f.stock_final,
    
    -- Métricas Financieras (Calculadas en SQL)
    p.costo_unitario,
    p.precio_venta,
    (f.stock_final * p.costo_unitario) AS valor_inventario_costo,
    (f.salidas * p.precio_venta) AS ingresos_ventas,
    (f.salidas * (p.precio_venta - p.costo_unitario)) AS margen_bruto_operativo,
    
    -- Porcentaje de Margen (Evitando división por cero)
    CASE 
        WHEN p.precio_venta = 0 THEN 0 
        ELSE (p.precio_venta - p.costo_unitario) / p.precio_venta 
    END AS pct_margen
FROM inventario_vf f
LEFT JOIN productos_vf p ON f.product_id = p.product_id
LEFT JOIN proveedores_vf prov ON p.supplier_id = prov.supplier_id;
GO

CREATE OR ALTER VIEW V_Resumen_Desempeño_Productos AS
SELECT 
    product_id,
    nombre_prod,
    categoria,
    -- Flujos (Totales)
    SUM(salidas) as total_unidades_vendidas,
    SUM(margen_bruto_operativo) as margen_total_generado,
    SUM(ingresos_ventas) as ingresos_totales,
    -- Stock (Promedios y Foto Actual)
    AVG(stock_final) as stock_promedio_diario,
    (SELECT TOP 1 stock_final 
     FROM inventario_vf 
     WHERE product_id = p.product_id 
     ORDER BY fecha DESC) as stock_actual
FROM V_Analisis_Inventario p
GROUP BY product_id, nombre_prod, categoria;
GO