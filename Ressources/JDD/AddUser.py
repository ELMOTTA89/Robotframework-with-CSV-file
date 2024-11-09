#ADD USER with valid credentials
import pandas as pd

JEmployeeName = "Ibrahim"
JuserName="MomoTest"
Jpassword="Momo1234"

df_users=pd.read_csv('Ressources\JDD\Data.csv',sep=';')

users=df_users.values.tolist()
ligne=len(users)
colonne=len(users[0])