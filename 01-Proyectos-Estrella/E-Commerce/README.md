🛒 Dashboard de Performance E-Commerce \& Customer Intelligence

Análisis de rentabilidad neta, recuperación de activos y segmentación de fidelización.

📌 Resumen del Proyecto

Este ecosistema de datos transforma un registro masivo de transacciones globales en una herramienta de auditoría y decisión comercial. El proyecto se centra en la integridad del dato: desde la recuperación de $1.10M USD en devoluciones omitidas hasta la creación de indicadores de fidelización y valor de vida del cliente.

📈 Metodología STAR

Situación

El set de datos presentaba inconsistencias críticas: duplicados, importes en notación científica y una pérdida de trazabilidad en las notas de crédito. La dirección carecía de una visión clara sobre la Venta Neta real, ya que las devoluciones no estaban correctamente vinculadas al flujo de ingresos, distorsionando el cálculo de eficiencia por país y categoría.

Acción

Ingeniería de Datos (SQL \& Python): Procesamiento de datos crudos mediante Python (Pandas) para normalización de tipos de datos y corrección de formatos. Se diseñaron vistas en SQL para estructurar la relación entre facturas y devoluciones.

Auditoría de Devoluciones: Identificación y limpieza de 10,000 registros negativos, logrando reintegrar al análisis financiero el impacto real de las cancelaciones en el margen operativo.

Visualización Estratégica:

\* Análisis de Eficiencia: Diseño de una hoja específica para monitorear la Tasa de Retorno, permitiendo identificar categorías críticas (ej. Repostería) donde las devoluciones superaban el promedio.

\* Customer Intelligence: Implementación de segmentación de clientes (Nuevos vs. Recurrentes) para medir la salud de la cartera.

Lógica DAX Avanzada: Creación de un Benchmarking Dinámico (Ticket Promedio Global) utilizando funciones CALCULATE y ALL para mantener líneas de referencia estables frente a filtros cruzados de país y cliente.

Resultado

El tablero permitió identificar que, a pesar de una facturación bruta sólida, la tasa de fidelización del 92.92% sostiene el negocio. Se detectó que mercados específicos presentaban tickets promedio significativamente superiores al global, lo que permitió reorientar la estrategia de captación hacia esos segmentos de alto valor.

🛠️ Ficha Técnica

Arquitectura: Extracción en SQL -> Transformación en Python -> Modelado en Power BI.

Modelo de Datos: Esquema en Estrella con tablas de hechos optimizadas para análisis de series temporales y geografía.

Cálculos DAX Clave:

* Ticket Promedio Global: Inmune a filtros de segmentación mediante ALL y REMOVEFILTERS.
* % Fidelización: Cálculo dinámico de retención de clientes basado en frecuencia de compra.
* Revenue USD Neto: Medida que integra ventas y devoluciones con tratamiento de signos dinámicos.

UX/UI: Navegación por iconos, sincronización total de slicers y diseño orientado a la detección de anomalías.

* Archivos disponibles en la parte superior de este repositorio.

Fuente de datos: E-Commerce Data Dataset by The UCI Machine Learning - https://www.kaggle.com/datasets/carrie1/ecommerce-data

* Proyecto desarrollado por Jimena Laura Figueiró
