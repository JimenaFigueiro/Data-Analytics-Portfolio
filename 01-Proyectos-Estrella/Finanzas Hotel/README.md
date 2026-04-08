🏨 Dashboard de Gestión de Rendimiento Hotelero (Global)


Análisis de rentabilidad operativa y eficiencia bajo estándar USALI


📌 Resumen del Proyecto


Este ecosistema de datos conecta la ocupación operativa con los resultados financieros detallados. El objetivo es identificar áreas con márgenes negativos o ineficiencias en los costos directos e indirectos, permitiendo una "cirugía financiera" sobre el GOP (Gross Operating Profit).


📈 Metodología STAR


Situación


Se detectó la necesidad de una visión integral que unifique los indicadores operativos (Occ Rate, ARR, RevPAR) con el P\&L (Pérdidas y Ganancias) por departamento. La falta de visibilidad impedía detectar qué sectores estaban canibalizando las ganancias de las habitaciones.


Acción


Indicadores de Eficiencia: Implementación de KPIs fundamentales para medir el rendimiento por habitación disponible.


Punto de Equilibrio Dinámico: Desarrollo de un Gauge dinámico mediante DAX que recalcula el umbral de rentabilidad según filtros de temporada.


Análisis de Rentabilidad (GOP): Creación de un desglose por área para identificar motores de ingresos y sectores críticos.


Eficiencia Operativa: Implementación de una matriz para evaluar el peso del Payroll (nómina) sobre los ingresos de cada departamento.


Control de Costos: Diseño de un gráfico de Waterfall (Cascada) para visualizar el flujo del resultado final y un Top 10 de Egresos para priorizar el ahorro.


Resultado


El tablero permitió identificar que el departamento de Miscellaneous presentaba un margen negativo crítico (-539%), erosionando la rentabilidad global. Gracias a esta visibilidad, se facilita la reestructuración de costos fijos y el monitoreo del flujo de caja mediante la métrica DSO.


🛠️ Ficha Técnica


Modelo de Datos: Esquema en Estrella (Star Schema) con tablas de hechos financieros y operativos.


Origen de Datos: Archivos CSV/XLSX normalizados bajo el estándar USALI.


Cálculos DAX Clave:


RevPAR = DIVIDE(\[Room Revenue], \[Total Rooms Available])


GOPPar = DIVIDE(\[GOP], \[Total Rooms Available])


DSO (Days Sales Outstanding) para control de cobranzas.


Breakeven Point dinámico.


Visuales Avanzados: Gráfico de Cascada (Waterfall) para Net Income Bridge y Gráfico de Burbujas para correlación ARR vs Occ Rate.



* Archivos disponibles en la parte superior de este repositorio.



* Proyecto desarrollado por Jimena Laura Figueiró
