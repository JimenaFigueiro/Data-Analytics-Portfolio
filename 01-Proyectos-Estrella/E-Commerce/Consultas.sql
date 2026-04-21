SELECT Country, AVG(Tasa_Conversion)
FROM Vista_Reporte_Final
GROUP BY Country;
GO

SELECT TOP 5 Country, 
SUM(Total_Bruto) AS Total_MLocal,
SUM(Total_Bruto * Tasa_Conversion) AS Total_USD
FROM Vista_Reporte_Final
GROUP BY Country, Tasa_Conversion
ORDER BY Total_USD DESC;
GO

SELECT * FROM Vista_Reporte_Final;
GO

SELECT SUM(Total_Bruto*Tasa_Conversion) FROM Vista_Reporte_Final;
GO

SELECT DISTINCT Country
FROM Maestro_Monedas;