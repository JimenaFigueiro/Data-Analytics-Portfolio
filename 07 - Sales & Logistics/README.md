🚚 Dashboard de Revenue \& Logística E-commerce

Análisis integral de ventas, cumplimiento de entregas y riesgo de cancelación.

📌 Resumen del Proyecto

Este ecosistema de datos monitorea el ciclo completo del E-commerce: desde la generación de ingresos hasta la entrega final al cliente. El enfoque principal es la identificación de cuellos de botella logísticos y el impacto financiero de las cancelaciones, permitiendo una gestión proactiva del "Revenue at Risk".

📈 Metodología STAR

Situación

La operación presentaba dificultades para entender por qué ciertos estados tenían tasas de cancelación más altas. No se tenía claridad sobre si las demoras en las entregas estaban directamente relacionadas con la pérdida de ingresos o si era un problema específico de ciertas categorías de productos.

Acción

Visibilidad de Ingresos: Consolidación de un Revenue total de $7.39M, desglosado por categorías líderes (Beleza \& Saúde, Relógios \& Presentes) y distribución geográfica (Concentración del 40% en SP).

Auditoría Logística: Implementación de KPIs de cumplimiento: 93.38% On Time vs. 6.62% Delayed. Se identificó que estados como CE y MA presentan las mayores demoras promedio (>2.6 días).

Análisis de Riesgo (Deep Dive): Creación de un modelo de "Revenue at Risk" ($599.28K) que identifica pedidos con demoras críticas que aún no han sido cancelados pero tienen alta probabilidad de serlo.

Control de Vendedores (Sellers): Identificación de "Sellers Críticos" (4.83% del total) que concentran la mayor cantidad de tickets cancelados y demoras, permitiendo acciones de penalización o capacitación dirigida.

Resultado

El dashboard permitió cuantificar una pérdida real de $44.87K por cancelaciones. Gracias al análisis de correlación entre demora y cancelación, se establecieron alertas para pedidos que superan los 2 días de retraso, logrando mitigar el impacto en el Revenue mensual.

🛠️ Ficha Técnica

Cálculos DAX Clave:

Revenue at Risk: Suma de ingresos de pedidos con demora superior al umbral de seguridad.

% On Time Delivery: (Pedidos a tiempo / Total pedidos) \* 100.

Avg Ticket Delivered: Promedio de venta por orden completada.

Visuales Clave: Treemap para Revenue por Estado, Donut Chart para cumplimiento de entregas, y Scatter Chart para correlación de Demora vs. Cancelación.

Funcionalidad Avanzada: Uso de Parámetros de Hipótesis (What-if) para ajustar el "Threshold Days" y recalcular el riesgo en tiempo real.

* Archivos disponibles en la parte superior de este repositorio.
  Fuente de datos: Brazilian E-Commerce Public Dataset by Olist - https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce
* Proyecto desarrollado por Jimena Laura Figueiró
