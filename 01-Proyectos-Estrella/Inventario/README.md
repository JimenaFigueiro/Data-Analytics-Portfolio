📦 Dashboard de Control de Inventario y Gestión de Compras



Análisis de stock, rotación y riesgo de abastecimiento para operaciones comerciales



📌 Resumen del Proyecto



Este ecosistema de datos optimiza la gestión de suministros transformando registros detallados en una herramienta de decisión para el área de compras y operaciones. El objetivo es minimizar el quiebre de stock y eficientizar el capital de trabajo mediante la clasificación estratégica de productos y el monitoreo de la performance de proveedores.



📈 Metodología STAR



Situación



La gestión operativa presentaba dificultades para identificar productos críticos y riesgos de abastecimiento en tiempo real. Se requería una solución que no solo mostrara la "foto" del inventario actual, sino que permitiera predecir faltantes y evaluar la confiabilidad de la cadena de suministro.



Acción



Arquitectura de Datos: Extracción y procesamiento de datos mediante Python para la normalización de costos y stock. Modelado en estrella en Power BI conectado a SQL Server.



Inteligencia de Tiempo: Implementación de lógica DAX avanzada para el cálculo de stock al cierre y variaciones mensuales, evitando duplicaciones por año fiscal.



Visualización Estratégica:
\* Matriz ABC: Clasificación de productos según su contribución al margen total.
\* Análisis de Cobertura: Cálculo dinámico de días de autonomía para identificar alertas de quiebre.

\* Gestión de Proveedores: Cruce de rentabilidad vs. reputación para mitigar riesgos operativos.



UX/UI Dinámica: Menú lateral de navegación, botones interactivos y alertas visuales por formato condicional.



Resultado



El tablero permitió reducir el riesgo de quiebre de stock mediante la identificación inmediata de productos con cobertura menor a 5 días. Asimismo, facilitó la renegociación con proveedores de baja reputación que concentraban un alto volumen de margen, optimizando la seguridad del abastecimiento.



🛠️ Ficha Técnica



Modelo de Datos: Esquema basado en una tabla de hechos principal (Tab\_Inventario\_Detallado) vinculada a una tabla de dimensiones temporal (Dim\_Calendario) y una tabla de soporte estratégica (Tab\_Inventario\_Resumen\_ABC) para segmentación y KPIs de cierre.



Origen de Datos: SQL Server y archivos procesados en Python.



Cálculos DAX Clave:



\* Stock Cierre: Captura el estado del inventario al último día del periodo filtrado.

\* Inventario Valorizado: Cálculo preciso producto por producto utilizando SUMX para evitar distorsiones de costos.

\* Días de Cobertura: Relación dinámica entre stock actual y promedio de ventas.



Visuales Clave: Pareto de Margen, Evolución Stock vs. Ventas, Treemap de Concentración por Proveedor y Funnel de Reputación.



* Archivos disponibles en la parte superior de este repositorio.



* Proyecto desarrollado por Jimena Laura Figueiró

