-- Creamos la tabla
CREATE TABLE Maestro_Monedas (
    Country NVARCHAR(50) PRIMARY KEY,
    Tasa_Conversion DECIMAL(18,4)
);

-- Insertamos los principales (luego podés agregar el resto)
INSERT INTO Maestro_Monedas (Country, Tasa_Conversion)
VALUES 
('United Kingdom', 1.25),
('France', 1.08),
('Germany', 1.08),
('EIRE', 1.08),
('Spain', 1.08),
('Netherlands', 1.08),
('Belgium', 1.08),
('Switzerland', 1.10),
('Portugal', 1.08),
('Australia', 0.65);
-- Los que falten, Python los manejará como 1.0 (USD)