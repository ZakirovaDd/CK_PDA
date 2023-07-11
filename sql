import pandas as pd
import numpy as np
import sqlalchemy as sql

#Запишите загруженный датафрейм с доходами в виде таблицы incomes внутри файла sqlite в директории с блокнотом

from sqlite3 import connect
conn = connect('df_sibirian')
df_incomes=pd.DataFrame(data= df_sibirian)
df_incomes.to_sql('incomes', conn,  index=False, if_exists='replace')
pd.read_sql('select * from incomes', conn)
