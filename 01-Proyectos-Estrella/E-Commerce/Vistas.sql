CREATE OR ALTER VIEW Vista_Ventas_Limpias AS
SELECT 
    InvoiceNo,
    StockCode,
    UPPER(Description) AS Description,
    Quantity,
    -- Aquí forzamos a SQL a leer el texto como fecha de EE.UU. (culture 101)
    TRY_CAST(InvoiceDate AS DATETIME) AS InvoiceDate, 
    UnitPrice,
    ISNULL(CustomerID,0) AS CustomerID,
    Country,
    (Quantity * UnitPrice) AS Total_Bruto
FROM Ventas_Brutas;
  GO

CREATE OR ALTER VIEW Vista_Reporte_Final AS
SELECT
    v.*,
    ISNULL (m.Tasa_Conversion, 1.0) AS Tasa_Conversion
FROM Vista_Ventas_Limpias v
LEFT JOIN Maestro_Monedas m ON v.Country=m.Country;
GO