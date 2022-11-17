from peewee import *
from playhouse.shortcuts import model_to_dict, dict_to_model

db = PostgresqlDatabase('contact_list', user='laurenpowers', password=12345, host='localhost', port=5432)

class BaseModel(Model):
  class Meta:
    database = db
    
class contacts(BaseModel):
  contact_name = CharField()
  date_of_birth = IntegerField()
  
class information(BaseModel):
  email = CharField()
  city = CharField()
  contacts_id = IntegerField()

db.connect()
  
def contact_list_start():
  print("Welcome to your contact list")
  answer = input("What would you like to do today? View Contacts(v), Add Contact(a), Update Contact(u), Delete Contact(d)")
  
  if answer == "v":
    contacts = contacts.select()