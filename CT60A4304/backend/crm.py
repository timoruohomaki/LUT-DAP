#
# CT60A4304 Basics of Database Systems
# Course Project: CRM System
#


import sqlite3
from sqlite3 import Error

# from prettytable import PrettyTable
# from prettytable import from_db_cursor

db = sqlite3.connect('crm.db')
cur = db.cursor()



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

def mainNavi():
    print("")
    print("===================")
    print("=== CRM CONSOLE ===")
    print("===================")
    print("")
    print("[1] - LIST ACCOUNTS")
    print("[2] - LIST CONTACTS")
    print("[3] - LIST NEW LEADS")
    print("[4] - LIST NEW OPPORTUNITIES")
    print("[5] - CREATE NEW LEAD")
    print("[6] - CREATE NEW ACCOUNT")
    print("[7] - CREATE NEW CONTACT")
    print("[8] - CREATE NEW OPPORTUNITY")
    print("[9] - EXIT")
    print("===================")

    mainSelect = int(input("Select option (1-9):"))

    match mainSelect:
        case 1:
            print("Listing accounts")
            mainNavi()
        case 2:
            print("Listing contacts")
        case 3:
            print("Listing new leads")
        case 4:
            print("Listing new opportunities")
        case 9:
            print("Bye!")

# MAIN PROGRAM STARTS HERE

mainNavi()


