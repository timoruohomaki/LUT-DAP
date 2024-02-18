#
# CT60A4304 Basics of Database Systems
# Course Project: CRM System
# Developer: Timo Ruohomäki
#
# Docs: https://docs.python.org/3/library/sqlite3.html 

import os
import sqlite3
from sqlite3 import Error
import TableIt

myList = [
    ["Name", "Email"],
    ["Richard", "richard@fakeemail.com"],
    ["Tasha", "tash@fakeemail.com"]
]

TableIt.printTable(myList, useFieldNames=True)

dbcon = None

# Functions

def createLead():
    print("Not implemented yet, sorry!")
    
def convertLead():
    print("Not implemented yet, sorry!")
    
def createAccount():
    print("Not implemented yet, sorry!")

def updateAccount():
    print("Not implemented yet, sorry!")
    
def getAccount():
    print("Not implemented yet, sorry!")
    
def getOpportunitySummary():
    print("Not implemented yet, sorry!")
    
def getContactList():
    
    dbcur = dbcon.cursor()
    dbcur.execute("SELECT * FROM contactPersons LIMIT 10")

    rows = dbcur.fetchall()

    for row in rows:
        print(row)
        
def createDemo():
    
    q = input("Do you want to create an empty new database? (Y/N) ")
    
    if q == "Y":
    
        print("Creating database file CRMDEMO.DB...")
        print("Database file location: ", os.getcwd())
        
        try:
            dbcon = sqlite3.connect("CRMDEMO.DB")
            print("SQLite Database Version: ", sqlite3.sqlite_version)
            
        except Error as e:
            print("SQLite error: ", e)
            
        finally:
            if dbcon: 
                print("Creating tables...")
        
                with open('createdb.sql', 'r') as sql_file:
                    sql_script = sql_file.read()

                    dbcur = dbcon.cursor()
                    
                    dbcur.executescript(sql_script)
                    dbcon.commit()
                    dbcon.close()
                    
                    print("Database creation completed.")
        
    q = input("Do you want to populate the database with demo data? (Y/N) ")
    
    if q == "Y":
        
        print("Inserting data...")
        
        #
        
        print("Database creation completed, you can now use options 1-8.")
        print("")
        
    navi()

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
    print("[9] - CREATE DEMO DATABASE")
    print("[0] - EXIT")
    print("===================")
    
    naviSelect = input("Select option (0-9):" )

    match naviSelect:
        
        case "1":
            print("Listing latest accounts:")

            navi()
        case "2":
            print("Listing latest contacts")

            navi()
        case "3":
            print("Listing latest leads")

            navi()
        case "4":
            print("Listing latest opportunities")

            navi()
        case "9":
            createDemo()
        case "0":
            print("Bye!")
            
            if dbcon:
                dbcon.close()   

# MAIN PROGRAM STARTS HERE

navi()


