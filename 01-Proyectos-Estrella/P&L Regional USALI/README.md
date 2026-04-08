🏨 Dashboard de Gestión de Rentabilidad Hotelera Regional (USALI)

Análisis consolidado de P\&L y eficiencia operativa para mercados de LatAm

📌 Resumen del Proyecto

Este ecosistema de datos transforma asientos contables crudos en una herramienta de decisión estratégica para la dirección regional. El objetivo es desglosar el resultado neto regional, identificando qué mercados y departamentos operativos están impulsando la rentabilidad y cuáles presentan ineficiencias estructurales bajo el estándar "USALI".

📈 Metodología STAR

Situación

La dirección financiera requería una visión unificada de cuatro mercados (Argentina, Brasil, México y Uruguay). El desafío principal era normalizar datos de diferentes orígenes para permitir una comparabilidad real en USD y detectar fugas de rentabilidad que quedaban ocultas en los balances consolidados.

Acción

Arquitectura de Datos: Procesamiento de datos crudos mediante "Python" para normalización y limpieza. Diseño de un modelo en estrella en "Power BI" conectando a "SQL Server".

Estandarización USALI: Implementación de una matriz jerárquica que respeta el orden contable de la industria.

Visualización Avanzada:
\* Gráfico de Cascada ("Waterfall") para visualizar el flujo desde el Revenue hasta el Resultado Neto.
\* Análisis de Margen por Departamento para evaluar la eficiencia operativa de cada unidad de negocio.
\* "Net Result by Country" para identificar la contribución específica de cada mercado al consolidado regional.

UX/UI Dinámica: Integración de navegación entre hojas (Revenue vs. Financial), títulos dinámicos y banderas que cambian según el filtro de país seleccionado.

Resultado

El tablero reveló que, a pesar de un GOP regional positivo del 16.8%, los altos costos fijos y gastos no operativos (NOIE) en Argentina y Uruguay estaban erosionando el beneficio generado por México y Brasil, resultando en una pérdida neta regional de ($2.03M). Esta visibilidad permite una renegociación estratégica de costos en los mercados deficitarios.

🛠️ Ficha Técnica

Modelo de Datos: Esquema en Estrella (Star Schema) con tabla de hechos centralizada y tablas dimensiones para estructura USALI y geografía.

Origen de Datos: CSV procesados con 🐍 Python y alojados en 🛢️ SQL.

Cálculos DAX Clave:

\* Net Result consolidado con lógica de signos invertidos para gastos.
\* % GOP dinámico por región y departamento.
\* Importe USALI mediante relaciones compuestas para mantener la jerarquía contable.

Visuales Clave: Waterfall Bridge, Matriz jerárquica USALI y Slicers sincronizados.

* Archivos disponibles en la parte superior de este repositorio.

* Proyecto desarrollado por Jimena Laura Figueiró

