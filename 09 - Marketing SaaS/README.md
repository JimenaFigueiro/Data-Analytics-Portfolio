🚀 Dashboard de Marketing & Suscripciones SaaS

Análisis de retención, rentabilidad de clientes (LTV/ARPU) y análisis de cohortes.

📌 Resumen del Proyecto

Este dashboard integral monitorea la salud financiera de un modelo de negocio por suscripción. El enfoque principal es el análisis del ciclo de vida del cliente, permitiendo identificar patrones de abandono (Churn) y medir la lealtad a largo plazo mediante una matriz de retención por cohortes.

📈 Metodología STAR

Situación

La empresa necesitaba entender por qué la tasa de cancelación se mantenía alta (33.99%) y si existía algún mes de "quiebre" crítico donde los clientes dejaban de usar la plataforma. Se requería diferenciar el comportamiento entre los segmentos B2B, B2C y Académico para optimizar las campañas de marketing.

Acción

Métricas Core de SaaS: Implementación de KPIs financieros críticos: MRR ($29.39K), ARPU ($23.74) y LTV ($69.84) para medir el valor proyectado de cada cliente (p. 1).

Análisis de Cohortes (Lealtad): Desarrollo de una matriz dinámica que rastrea el comportamiento de los clientes según su mes de alta. Se identificó que tras el Mes 1, la retención cae drásticamente a niveles cercanos al 35-40%, estabilizándose a partir del Mes 6 (p. 3).

Geolocalización y Soporte: Cruce de datos de tickets de soporte con el MRR por país. Se detectó que España y Colombia lideran los ingresos, pero también concentran la mayor carga de tickets (p. 2).

Análisis de Churn por Plan: Identificación de que el Plan Basic concentra la mayor cantidad de cancelaciones (258), sugiriendo una necesidad de mejorar el onboarding para ese segmento (p. 2).

Resultado

El dashboard permite una gestión basada en la Curva de Retención. Al identificar que el mayor riesgo de abandono ocurre en el primer mes de suscripción, se propuso una estrategia de re-engagement dirigida para los primeros 30 días, buscando elevar el LTV global mediante la reducción del Churn temprano.

🛠️ Ficha Técnica

Cálculos DAX Avanzados:

Monthly Recurring Revenue (MRR): Cálculo dinámico de ingresos recurrentes.

Churn Rate: Tasa de cancelación mensual.

Customer Lifetime Value (LTV): Relación entre ARPU y Tasa de Churn.

Retención de Cohortes: Uso de funciones de inteligencia de tiempo para calcular el % de permanencia por mes de alta.

Visuales Clave: Matriz de Cohortes con formato condicional, Mapa de Presencia Global, y Gráfico de Líneas para evolución de Clientes Activos vs. Perdidos.

* Archivos disponibles en la parte superior de este repositorio.

* Proyecto desarrollado por Jimena Laura Figueiró