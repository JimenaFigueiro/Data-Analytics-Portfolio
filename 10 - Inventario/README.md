📦 Dashboard de Optimización y Rendimiento de Inventario

Gestión de stock crítico, reducción de excesos y análisis de ventas perdidas.

📌 Resumen del Proyecto

Este proyecto ofrece una solución integral para la gestión de suministros. El objetivo principal es maximizar la eficiencia del capital de trabajo mediante la identificación de productos con exceso de stock y la prevención de quiebres de inventario que resultan en ventas no realizadas.

📈 Metodología STAR

Situación

La organización presentaba desequilibrios en su inventario: alta inversión en productos de baja rotación (sobrestock) y faltantes recurrentes en productos estrella, lo que generaba un impacto negativo en el flujo de caja y en la satisfacción del cliente.

Acción

Monitoreo de Flujo de Mercadería: Implementación de un análisis dinámico de Entradas vs. Salidas, detectando una rotación global de 0.28 y un inventario total valorizado en $57.5M.

Identificación de Ventas Perdidas: Creación de un KPI de "Ventas Perdidas" ($31.43M de inventario en riesgo) que cuantifica el impacto financiero de no contar con stock mínimo para la demanda proyectada.

Optimización de Stock: Desarrollo de un modelo de clasificación que identifica 33 productos en riesgo y detecta un Exceso de Inventario de $804K, permitiendo acciones de liquidación o redistribución.

Análisis de Rendimiento por Categoría: Uso de gráficos de dispersión (Scatter Chart) para cruzar Ventas vs. Stock, identificando que la categoría Hogar concentra el 39.7% del desglose, pero presenta desafíos de optimización.

Control de Días de Inventario: Implementación de una métrica de "Días de Inventario" por categoría (Hogar: 127 días vs. Electrónica: 92 días) para ajustar las políticas de compra.

Resultado

El dashboard permitió identificar un Inventario Faltante de $23.62M, señalando una oportunidad crítica de reabastecimiento para recuperar ventas. La visibilidad del exceso de stock ($804K) facilitó la liberación de capital de trabajo mediante promociones dirigidas.

🛠️ Ficha Técnica

Cálculos DAX Clave:

Ventas Perdidas: Cálculo basado en la demanda no satisfecha por falta de stock.

Días de Inventario: (Inventario Promedio / Costo de Ventas) * Período.

Inventario en Riesgo: Valorización de productos con stock por debajo del mínimo de seguridad.

Visuales Clave: Waterfall Chart para Variación de Stock, Scatter Chart para correlación Ventas/Stock y Treemap para Desglose de Inventario.

Análisis de Optimización: Uso de formato condicional para alertas de "Stock Crítico" y "Exceso".

* Archivos disponibles en la parte superior de este repositorio.

* Proyecto desarrollado por Jimena Laura Figueiró
