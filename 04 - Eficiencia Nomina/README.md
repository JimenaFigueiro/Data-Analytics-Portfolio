👥 Dashboard de Eficiencia de Nómina y Productividad

Optimización de costos laborales y control de horas extras.

📌 Resumen del Proyecto

Este tablero analiza el impacto financiero del costo laboral, enfocándose en la relación entre el gasto en nómina y la productividad operativa. El objetivo principal es identificar desviaciones en el uso de horas extras (HE) y establecer un modelo de ahorro potencial basado en promedios globales por departamento.

📈 Metodología STAR

Situación

La empresa presentaba un incremento constante en el costo de nómina sin una correlación clara con la productividad. No se tenía visibilidad sobre qué departamentos superaban el promedio global de horas extras ni cuánto dinero se podría ahorrar mediante una mejor planificación de turnos.

Acción

Ratio de Productividad: Creación de una métrica que cruza el costo total de nómina con el rendimiento operativo, permitiendo visualizar la eficiencia por departamento.
Control de Horas Extras: Implementación de un análisis de "HE x Emp Global" (4.81) para usarlo como benchmark.

Sistema de Alertas: Desarrollo de una tabla de control que clasifica a los departamentos en "OK" o "Revisar" según su desvío frente al promedio.

Cálculo de Ahorro Potencial: Creación de una medida DAX que cuantifica el ahorro en dólares si los departamentos con exceso de horas (como Administración o Front Office) se ajustaran al promedio global.

Análisis de Estacionalidad: Uso de gráficos de evolución para identificar meses críticos (diciembre) donde el costo por empleado y el impacto de HE alcanzan picos del 6.92%.

Resultado

El dashboard identificó un Ahorro Potencial total de $17,378.25 solo mediante la regularización de horas extras. Se detectó que el departamento de Administración es el más crítico, con un desvío que representa la mayor oportunidad de optimización de costos.

🛠️ Ficha Técnica

Cálculos DAX Clave:

HE x Emp: Horas extras totales dividido por cantidad de empleados.

Ahorro Potencial HE: Diferencial entre el costo actual y el costo proyectado bajo el benchmark global.

Ratio Productividad: Medida personalizada de eficiencia costo-rendimiento.

Visuales Clave: Gráfico de dispersión para Ratio de Productividad vs. HE, Gráficos de barras con formato condicional (Alertas) y Heatmap de impacto mensual por departamento.

Análisis Estadístico: Identificación de "Mes Crítico" mediante análisis de varianza de costos.

* Archivos disponibles en la parte superior de este repositorio.

* Proyecto desarrollado por Jimena Laura Figueiró