🏨 Dashboard de Estrategia y Rentabilidad Hotelera (BI Predictivo)


Optimización de GOP y Simulación de Impacto bajo Estándar USALI


📌 Resumen del Proyecto


Este proyecto representa la evolución de un reporte de gestión tradicional hacia un ecosistema de Financial BI. No solo conecta la ocupación operativa con los resultados financieros, sino que permite realizar Análisis de Sensibilidad (What-if) para proyectar el impacto de decisiones operativas sobre la última línea del P\&L.



📈 Metodología STAR



Situación


Se identificó una erosión persistente en el GOP (Gross Operating Profit) durante el tercer trimestre. La falta de una herramienta predictiva impedía a la gerencia cuantificar cuánto beneficio extra se obtendría al corregir las ineficiencias de costos en departamentos específicos como Alimentos y Bebidas (A\&B).



Acción



Modelado de Datos Avanzado: Aplicación de técnicas de Unpivot y normalización para transformar datos contables planos en un esquema relacional dinámico.



Diagnóstico Departamental: Implementación de variaciones YoY (Year-over-Year) y análisis de márgenes operativos, detectando que A\&B operaba con un margen del 31.90% frente al 75% de habitaciones.



Arquitectura de Simulación: Desarrollo de un Parámetro What-if en DAX para simular escenarios de optimización de márgenes.



Diseño de Experiencia de Usuario (UX): Transición a un Modo Claro (Light Mode) con jerarquía visual de KPIs para facilitar la lectura en directorios ejecutivos.



Resultado



Identificación de Brechas: Se detectó que el margen de A\&B presentaba una caída del -0.82% interanual.



Cuantificación de Oportunidad: El simulador demostró que ajustar el margen de A\&B al 45% generaría un incremento de $339.71K en el resultado neto anual, sin necesidad de aumentar la ocupación.



Eficiencia Financiera: Se validó un Margen de Seguridad del 74.05%, garantizando la robustez de la operación frente a caídas en la demanda.



🛠️ Ficha Técnica



Herramienta: Power BI Desktop / DAX Avanzado.



Estándar Contable: USALI (Uniform System of Accounts for the Lodging Industry).



Cálculos Clave:



Margen de Seguridad = DIVIDE(\[Ingresos Totales] - \[Punto de Equilibrio], \[Ingresos Totales])



Impacto en Caja = \[GOP Simulado] - \[GOP Real]



Visuales: Gráfico de Cascada para flujo de resultados, Comparativas YoY dinámicas y Simulador de parámetros.


* Archivos disponibles en la parte superior de este repositorio.



* Proyecto desarrollado por Jimena Laura Figueiró
