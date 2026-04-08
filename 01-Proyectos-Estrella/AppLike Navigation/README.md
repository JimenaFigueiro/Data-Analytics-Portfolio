📊 App-Like Financial Dashboard | Adventure Works (SQL Server)



Ecosistema de BI para la Toma de Decisiones Estratégicas en Finanzas



📌 Resumen del Proyecto



Este proyecto marca la transición de un reporte estático hacia un ecosistema interactivo de Financial BI. El objetivo fue consolidar datos operativos y financieros provenientes de un servidor SQL para ofrecer una visión 360° del negocio (P\&L, Portafolio y Clientes) mediante una navegación intuitiva de tipo "App".



📈 Metodología STAR



Situación



Se requería una herramienta que permitiera a la gerencia auditar la rentabilidad desde el nivel macro (Margen Neto) hasta el micro (Margen por Producto y Cliente), eliminando discrepancias por granularidad de datos y mejorando la visualización de la salud financiera interanual.



Acción



Ingeniería de Datos: Conexión directa a SQL Server y modelado relacional. Implementación de una Tabla de Calendario robusta marcada para Inteligencia de Tiempo.



Navegación Avanzada: Diseño de interfaz "App-Like" utilizando Marcadores (Bookmarks) y el Panel de Selección para alternar entre visuales (Ventas vs. Costos, Mapas vs. Perfil Demográfico) sin saturar la pantalla.



Precisión Técnica: Ajuste de granularidad mediante CustomerKey para evitar duplicidad de nombres en el análisis de dispersión y configuración manual de ejes secundarios para garantizar una lectura honesta del Margen %.



Resultado



Análisis Multidimensional: Tres paneles operativos sincronizados: Resumen Ejecutivo (P\&L), Análisis de Productos y Insights de Clientes.



Inteligencia de Tiempo: Visualización del crecimiento de cartera (YoY Growth) con indicadores de alerta (KPI Cards) que comparan el rendimiento actual contra objetivos estratégicos.



Optimización de Espacio: Reducción del 40% en la carga visual mediante el uso de toggles interactivos, mejorando la experiencia del usuario final.



🛠️ Ficha Técnica



Fuente de Datos: SQL Server (Database: AdventureWorks).



Páginas: 3 (Executive, Product, Customer).

Consultas SQL: Se añade un archivo con los scripts SQL utilizados para la extracción y pre-procesamiento de datos, garantizando la integridad de la información antes de su modelado en Power BI.



Cálculos Clave (DAX):



% Crecimiento Clientes (YoY) = DIVIDE(\[Distinct Customers] - \[Customers LY], \[Customers LY]).



Avg Profit per Product = DIVIDE(\[Total Profit], \[Distinct Products]).



P\&L dinámico con gráfico de cascada.



* Archivos disponibles en la parte superior de este repositorio.



* Proyecto desarrollado por Jimena Laura Figueiró

