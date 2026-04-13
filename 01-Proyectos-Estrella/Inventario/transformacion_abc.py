import pandas as pd

# 1. Traemos los datos de SQL
df = dataset

# 2. Lógica ABC basada en el Margen Total Generado
# Ordenamos de mayor a menor margen
df = df.sort_values(by='margen_total_generado', ascending=False)
df['margen_acumulado'] = df['margen_total_generado'].cumsum()
total_margen = df['margen_total_generado'].sum()

# Calculamos el porcentaje acumulado
df['pct_acumulado'] = df['margen_acumulado'] / total_margen

# Función para categorizar
def categorizar_abc(pct):
    if pct <= 0.80:
        return 'A (Estratégico)'
    elif pct <= 0.95:
        return 'B (Intermedio)'
    else:
        return 'C (Bajo Impacto)'

df['Categoria_ABC'] = df['pct_acumulado'].apply(categorizar_abc)

# 3. Cálculo de Días de Cobertura (Stock Actual / Venta Promedio)
# Calculamos la venta promedio diaria (asumiendo los ~465 días que generamos)
df['venta_prom_diaria'] = df['total_unidades_vendidas'] / 465
df['dias_cobertura'] = df['stock_actual'] / df['venta_prom_diaria']

# IMPORTANTE: El nombre del DataFrame final debe ser 'df' para que PBI lo reconozca