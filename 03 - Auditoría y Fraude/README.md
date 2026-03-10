🔍 Dashboard de Auditoría Forense y Detección de Fraude


Monitoreo preventivo de anomalías financieras y conflictos de interés.


📌 Resumen del Proyecto


Este ecosistema de control está diseñado para identificar irregularidades en el ciclo de egresos. Utiliza modelos estadísticos para detectar desviaciones en el comportamiento de transacciones, identificar potenciales conflictos de interés entre empleados y proveedores, y señalar patrones de "pitufeo" o fraccionamiento de pagos (Splitting).


📈 Metodología STAR


Situación


La organización carecía de una herramienta de monitoreo continuo para detectar fraudes internos. Las auditorías eran manuales y reactivas, lo que dificultaba la identificación de patrones sutiles como la duplicidad de datos bancarios o transacciones que evaden los límites de aprobación.


Acción


Análisis de Benford: Implementación de la Ley de Benford para analizar la frecuencia del primer dígito de los montos, detectando una desviación del 52.23% en el dígito 9 (indicador clásico de manipulación de cifras).


Detección de Cuentas Espejo: Desarrollo de un algoritmo de cruce de datos que identificó una coincidencia exacta de CBU entre el empleado EMP005 y el proveedor PROV012.


Monitoreo de "Split" de Pagos: Identificación de transacciones consecutivas justo por debajo del umbral de auditoría ($1,000) para evadir controles jerárquicos.


Score de Riesgo: Creación de un medidor de riesgo dinámico por empleado basado en la acumulación de hallazgos (Monto en conflicto, días de mayor riesgo y antigüedad).


Resultado


Se detectó un conflicto de interés específico por un monto de $70,156.95. El tablero permitió pasar de una auditoría basada en el azar a una auditoría dirigida por datos, reduciendo el tiempo de investigación en un 80% y señalando al responsable con pruebas técnicas irrefutables.


🛠️ Ficha Técnica


Técnicas Estadísticas: Aplicación de la Ley de Benford para detección de anomalías numéricas (pp. 1, 3).


DAX Avanzado:


Cuentas Espejo: Cruce de tablas de maestros de empleados vs. proveedores.


Análisis de Benford: Frecuencia observada vs. Frecuencia teórica.


Score de Riesgo: Ponderación de alertas por transacciones en riesgo (p. 2).


Visuales Clave: Gráfico de dispersión para Proveedores en Riesgo, Gauge de Score de Riesgo y Tablas de Detalle Forense (pp. 2-3).



* Archivos disponibles en la parte superior de este repositorio.



* Proyecto desarrollado por Jimena Laura Figueiró
