CREATE DATABASE Inventario;
GO

-- 1. Corregir Tabla de Productos
ALTER TABLE productos_vf 
ALTER COLUMN costo_unitario DECIMAL(18, 2);

ALTER TABLE productos_vf 
ALTER COLUMN precio_venta DECIMAL(18, 2);

-- 2. Corregir Tabla de Inventario (Precios y cantidades)
ALTER TABLE inventario_vf 
ALTER COLUMN stock_inicial INT;

ALTER TABLE inventario_vf 
ALTER COLUMN entradas INT;

ALTER TABLE inventario_vf 
ALTER COLUMN salidas INT;

ALTER TABLE inventario_vf 
ALTER COLUMN stock_final INT;

-- 3. Asegurar formato de fecha (si no se importó como DATE)
-- Nota: Si falla, puede que necesites un paso intermedio de conversión
ALTER TABLE inventario_vf 
ALTER COLUMN fecha DATE;