#
# CT60A4304 Basics of Database Systems
# Course Project: CRM System
#

import sqlite3
db = sqlite3.connect('crm.db')
cur = db.cursor()

import sqlite3
from sqlite3 import Error

def initDB():

    db_file = 'crm.db'
    conn = None
    try:
        conn = sqlite3.connect(db_file)
        print('Connected on SQLite database version ', sqlite3.version)
    except Error as e:
        print(e)
    finally:
        if conn:
            conn.close()

def createLead():
    initDB()
    
def convertLead():
    initDB()
    
def createAccount():
    initDB()
    
def getAccount():
    initDB()
    
def getOpportunitySummary():
    initDB()
    
def getContactList():
    initDB()

    cur = conn.cursor()
    cur.execute("SELECT * FROM contactPersons")

    rows = cur.fetchall()

    for row in rows:
        print(row)

main()
    initDB()
