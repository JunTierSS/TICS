# -*- coding: utf-8 -*-
"""
Created on Thu Nov  2 23:09:51 2023

@author: junwe
"""

import pandas as pd
from sqlalchemy import create_engine

# Leer el archivo CSV
df = pd.read_csv('C:/Users/junwe/OneDrive/Documentos/prueba.csv', sep=';', encoding='utf-8')

# Crear conexión a la base de datos PostgreSQL
engine = create_engine('postgresql+psycopg2://cc3201:henry@cc3201.dcc.uchile.cl:5533/cc3201')

# Insertar el DataFrame en la tabla 'nombre_tabla'
df.to_sql('nombre_tabla', engine, if_exists='append', index=False)