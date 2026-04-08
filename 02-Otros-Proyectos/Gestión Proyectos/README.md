📊 Dashboard de Gestión de Proyectos (PMO) y Análisis de Desvíos

Control de eficiencia operativa mediante métricas CPI y SPI.

📌 Resumen del Proyecto

Este dashboard proporciona una visión integral del ciclo de vida de múltiples proyectos tecnológicos (App Móvil, Ciberseguridad, Migración Cloud, etc.). Utiliza el modelo de Gestión del Valor Ganado (EVM) para monitorear en tiempo real si los proyectos están en línea, excedidos en presupuesto o en riesgo de incumplimiento de plazos.

📈 Metodología STAR

Situación

La PMO necesitaba una herramienta centralizada para identificar proactivamente qué proyectos presentaban ineficiencias de costos o retrasos críticos. La falta de indicadores normalizados dificultaba la comparación entre proyectos de distinta escala y la asignación eficiente de recursos humanos.

Acción

Implementación de KPIs de Eficiencia: Desarrollo de indicadores CPI (Cost Performance Index) y SPI (Schedule Performance Index). Un CPI de 1.01 global indica que, en promedio, el portafolio está rindiendo por encima de cada dólar invertido.

Análisis de Desvíos (Varianza): Creación de un gráfico de cuadrantes para cruzar CPI vs. SPI, permitiendo identificar proyectos "estrella" (Migración Cloud) frente a proyectos con bajo rendimiento (ERP Update).

Gestión de Horas (Waterfall): Uso de un gráfico de cascada para visualizar la varianza de horas por etapa (Desarrollo, Testing, Diseño), detectando que la fase de Desarrollo es la que genera el mayor desvío positivo de horas (89 hs).

Productividad de Recursos: Análisis de correlación entre horas estimadas y reales por consultor, permitiendo detectar sobrecargas de trabajo o subestimación de tareas en perfiles específicos.

Resultado

El tablero permitió identificar que, aunque el portafolio está "En Línea" globalmente con una varianza de costo de $11.55K, proyectos críticos como el ERP Update presentan un CPI de 0.65, señalando una necesidad urgente de auditoría de procesos en ese sector.

🛠️ Ficha Técnica

Metodología Aplicada: Earned Value Management (EVM).

DAX Avanzado:

CPI: Cálculo de eficiencia de costo (Valor Ganado / Costo Real).

SPI: Cálculo de eficiencia de tiempo (Valor Ganado / Valor Planificado).

Estado del Proyecto: Lógica condicional dinámica para clasificar en "En Línea", "Excede" o "En Riesgo".

Visuales Clave: Gráfico de Burbujas (Análisis de Desvíos), Waterfall (Gestión de Horas) y Scatter Chart para productividad de recursos.

* Archivos disponibles en la parte superior de este repositorio.

* Proyecto desarrollado por Jimena Laura Figueiró
