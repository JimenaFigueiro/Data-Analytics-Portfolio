-- Total Vendido
SELECT
	ROUND(SUM(SalesAmount),2) AS TotalVentas,
	ROUND(SUM(TaxAmt),2) AS TotalImpuetos,
	ROUND(SUM(TotalProductCost),2) AS CostoTotal
FROM FactInternetSales;
GO

-- Top 5 de Productos
SELECT TOP 5
	p.EnglishProductName AS Producto,
    SUM(f.SalesAmount) AS VentasPorProducto
FROM FactInternetSales f
JOIN DimProduct p ON f.ProductKey = p.ProductKey
GROUP BY p.EnglishProductName
ORDER BY VentasPorProducto DESC;
GO

-- Analisis por año
SELECT 
    d.CalendarYear AS Año,
    SUM(f.SalesAmount) AS VentasAnuales
FROM FactInternetSales f
JOIN DimDate d ON f.OrderDateKey = d.DateKey
GROUP BY d.CalendarYear
ORDER BY Año ASC;
GO

-- Ventas por Region
SELECT
	t.SalesTerritoryRegion AS Region,
	SUM(f.SalesAmount) AS Ventas
FROM FactInternetSales f
JOIN DimSalesTerritory t ON f.SalesTerritoryKey = t.SalesTerritoryKey
GROUP BY t.SalesTerritoryRegion
ORDER BY Ventas DESC;
GO

-- Margen de Beneficio
SELECT 
    p.EnglishProductName AS Producto,
    SUM(f.SalesAmount) AS VentasTotales,
    SUM(f.TotalProductCost) AS CostoTotal,
    SUM(f.SalesAmount) - SUM(f.TotalProductCost) AS GananciaBruta,
    ROUND(((SUM(f.SalesAmount) - SUM(f.TotalProductCost)) / SUM(f.SalesAmount)) * 100, 2) AS Margen_Porcentaje
FROM FactInternetSales f
JOIN DimProduct p ON f.ProductKey = p.ProductKey
GROUP BY p.EnglishProductName
ORDER BY GananciaBruta DESC;
GO