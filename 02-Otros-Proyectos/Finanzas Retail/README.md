🛒 Dashboard de Análisis Financiero Retail & Forecasting

Simulación dinámica de rentabilidad global y proyecciones de EBITDA.

📌 Resumen del Proyecto

Este proyecto presenta un modelo integral de control financiero para una operación de Retail con presencia en Argentina, Brasil y México. (p. 1) Lo más destacado es la arquitectura técnica del reporte: el dataset fue generado íntegramente mediante scripts de Power Query (Lenguaje M), utilizando funciones aleatorias para simular un entorno de negocio dinámico y realista. (p. 2)

📈 Metodología STAR

Situación

Se requería un modelo de "Análisis de Sensibilidad" y Proyección que permitiera a la gerencia visualizar el impacto de un incremento en las ventas sobre el EBITDA proyectado, (p. 2) integrando datos de COGS, OPEX y presupuestos (Budget) por departamento. (p. 1)

Acción

Generación Sintética de Datos: Desarrollo de un motor de datos en Power Query utilizando Number.RandomBetween y lógica condicional para crear transacciones de ventas, devoluciones y gastos operativos coherentes.

EERR Dinámico: Creación de un Estado de Resultados (Waterfall Chart) que desglosa las Ventas Netas ($3.18M) hasta llegar al EBITDA, permitiendo identificar el impacto de Logística, Marketing y Payroll. (p. 1)

Módulo de Forecasting: Implementación de un modelo de proyección basado en un incremento paramétrico del 5% sobre las ventas reales, (p. 2) permitiendo visualizar el EBITDA Proyectado ($2.84M) por país y categoría. (p. 2)

Control Presupuestario: Diseño de una comparativa de Gastos Reales vs. Budget YTD con visuales de seguimiento mensual para detectar desviaciones tempranas. (p. 1)
Resultado

El modelo permite una planificación financiera ágil. Se identificó que, bajo la simulación actual, Brasil lidera la generación de EBITDA ($1.68M), (p. 1) mientras que la categoría Hogar muestra la mayor eficiencia operativa proyectada frente a Electrónica e Indumentaria. (p. 2)

🛠️ Ficha Técnica

Ingeniería de Datos: Generación de datasets dinámicos mediante scripts en Lenguaje M. (p. 2)

DAX Avanzado:

Ventas Proyectadas: Cálculo dinámico basado en multiplicadores de crecimiento. (p. 2)

MTD / YTD Metrics: Medidas de inteligencia de tiempo para comparativas interanuales. (p. 1)

Formatos Condicionales: Alertas visuales para el % de Devoluciones y % de Ahorro. (p. 1)

Visuales Clave: Waterfall (EERR), Gráficos de Área para Forecasting de Ventas y Matrices de eficiencia por Categoría. (pp. 1-2)

* Archivos disponibles en la parte superior de este repositorio.

* Proyecto desarrollado por Jimena Laura Figueiró