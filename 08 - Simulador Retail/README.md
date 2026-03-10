📉 Simulador de Rentabilidad Retail - Global

Herramienta de planificación estratégica y proyecciones de impacto financiero.

📌 Resumen del Proyecto

Este dashboard funciona como una calculadora dinámica de rentabilidad para una operación regional (Argentina, Brasil, México). Permite a los usuarios simular escenarios de reducción de devoluciones y visualizar instantáneamente el impacto en el Margen Neto y el resultado final del negocio, facilitando la fijación de objetivos (Target Setting).

📈 Metodología STAR

Situación

La dirección comercial necesitaba cuantificar cuánto dinero se estaba perdiendo debido a las devoluciones por categoría (Electrónica, Hogar, Moda) y qué impacto real tendría en el flujo de caja una mejora operativa en la logística inversa.

Acción

Modelado de Datos Sintético: Creación del dataset completo mediante scripts de Power Query (Lenguaje M) para asegurar una estructura de datos limpia y optimizada para simulaciones.

Parámetros de Hipótesis (What-if): Implementación de un selector dinámico de "Reducción de Devoluciones" que permite proyectar mejoras desde el 0% al 100%.

Análisis de Sensibilidad: Creación de métricas que comparan el Margen Neto Real (86.27%) vs. el Margen Neto Proyectado (87.19%), detectando un impacto positivo de USD 617.98K bajo un escenario de mejora moderada.

Desglose de Resultados: Uso de gráficos de cascada (Waterfall) para explicar el "Resultado Proyectado", visualizando cómo cada categoría (Moda, Hogar, Electrónica) suma al incremento del margen.

Geolocalización del Riesgo: Identificación de Argentina como el país con mayor tasa de devolución inicial (22.49%), señalándolo como el mercado con mayor oportunidad de optimización.

Resultado

La herramienta permite transformar una métrica operativa (devoluciones) en una métrica financiera (USD de impacto). Se identificó que una reducción del 50% en las devoluciones globales resultaría en un incremento directo de USD 0.8M en las ventas proyectadas para el año 2025. (pp. 1-2)

🛠️ Ficha Técnica

Ingeniería de Datos: Generación de tablas de hechos y dimensiones mediante Lenguaje M.

DAX Avanzado:

Margen Neto Proyectado: Medida dinámica que recalcula el resultado neto en función del parámetro de reducción seleccionado.

Impacto Proyectado: Diferencial de rentabilidad entre el escenario base y el simulado.

Ventas Proyectadas: Cálculo de recuperación de ingresos por reducción de devoluciones.

Visuales Clave: Waterfall Chart para desglose de resultados, Gráficos de líneas para evolución del impacto y Matrices de tasa de devolución por país/categoría.

* Archivos disponibles en la parte superior de este repositorio.

* Proyecto desarrollado por Jimena Laura Figueiró