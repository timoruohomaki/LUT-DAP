#
# CT60A4304 Basics of Database Systems
# Course Project: CRM System
#

import sqlite3
from sqlite3 import Error

def createLead():
    print("")
    
def convertLead():
    print("")
    
def createAccount():
    print("")
    
def getAccount():
    print("")
    
def getOpportunitySummary():
    print("")
    
def getContactList():

    cur = conn.cursor()
    cur.execute("SELECT * FROM contactPersons")

    rows = cur.fetchall()

    for row in rows:
        print(row)

def navi():
    print("")
    print("======================")
    print("=== CRM NAVIGATION ===")
    print("======================")
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

    try:

        naviSelect = int(input("Select option (1-9):"))

        match naviSelect:
            case 1:
                print("Listing latest accounts:")
            case 2:
                print("Listing latest contacts")
            case 3:
                print("Listing latest leads")
            case 4:
                print("Listing latest opportunities")
            case 9:
                print("Bye!")
    
    except ValueError:
        print("Invalid option.")
 

# MAIN PROGRAM STARTS HERE

navi()


