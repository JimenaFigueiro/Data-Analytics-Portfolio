📈 Dashboard de Revenue Management \& Picking Strategy


Optimización de tarifas y análisis de comportamiento de reserva (2025)


📌 Resumen del Proyecto


Este dashboard especializado analiza la dinámica de ingresos y el comportamiento de las reservas. Se centra en la elasticidad del precio (ADR), el rendimiento por habitación disponible (RevPAR) y la eficiencia de los canales de venta, permitiendo ajustar la estrategia de pricing según la anticipación de compra (Lead Time).


📈 Metodología STAR


Situación


La cadena hotelera necesitaba entender la correlación entre la anticipación de la reserva y la tarifa pagada para optimizar el inventario. Se detectó una falta de claridad sobre qué canales eran más rentables tras deducir las comisiones de las OTAs.


Acción


Análisis de Yield Management: Implementación de un Yield Index y un Revenue Gap para medir cuánto ingreso se está dejando de percibir frente al objetivo teórico.


Segmentación por Canal: Desglose de ingresos por canal (OTA, Directo, Agencias, Corporativo) identificando que, aunque las OTAs traen volumen, el canal Directo mantiene un GOP más saludable (79.28%) (p. 2).


Estrategia de Picking: Análisis del Avg LTP (Lead Time Period) de 14.14 días. Se creó una comparativa de ADR Early Bird vs Last Minute para validar la política de descuentos por reserva anticipada (p. 3).


Monitoreo de Rentabilidad: Uso de un gráfico de cascada (Waterfall) para visualizar cómo los costos variables y las comisiones de OTAs impactan el ingreso bruto hasta llegar al GOP (p. 2).


Resultado


El tablero permitió identificar que el segmento Luxury Resort es el más eficiente en términos de RevPAR ($553k), mientras que en el segmento Midscale City se detectó una oportunidad para mejorar el Yield Index, que actualmente se encuentra por debajo del objetivo (p. 1).


🛠️ Ficha Técnica


Modelo de Datos: Star Schema unificando presupuestos (Targets) con datos reales de reservas.


Cálculos DAX Clave:


ADR (Average Daily Rate): Ingreso total / Habitaciones vendidas (p. 1).


RevPAR: Medición del rendimiento por habitación disponible.


GOPPAR: Rentabilidad operativa por habitación disponible (p. 2).


Yield Index: Eficiencia de la captura de ingresos frente al potencial máximo.


Visuales Clave: Scatter Chart (TO \& ADR) para posicionamiento de hoteles, Waterfall para detalle de GOP y Gráfico de Área para evolución de habitaciones vendidas por canal (pp. 1, 3).


\*Archivos disponibles en la parte superior de este repositorio.


\*Proyecto desarrollado por Jimena Laura Figueiró

