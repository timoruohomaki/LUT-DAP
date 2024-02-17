#
# CT60A4304 Basics of Database Systems
# Course Project: CRM System
# Developer: Timo Ruohomäki
#
# Docs: https://docs.python.org/3/library/sqlite3.html 

import os
import sqlite3
from sqlite3 import Error

dbcon = None

# Functions

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
    
    cur = dbcon.cursor()
    cur.execute("SELECT * FROM contactPersons LIMIT 10")

    rows = cur.fetchall()

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
            print(e)
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
        
    q = input("Do you want to populate the database with demo data? (Y/N)")
    
    if q == "Y":
        
        print("Inserting data...")
        
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

    naviSelect = int(input("Select option (0-9): "))

    match naviSelect:
        case 1:
            print("Listing last 10 accounts:")

            
            navi()
        case 2:
            print("Listing last 10 contacts")
            
            
        case 3:
            print("Listing last 10 leads")
            
            
        case 4:
            print("Listing latest opportunities")
            
            
        case 9:
            createDemo()
            
        case 0:
            print("Bye!")
            
            if dbcon:
                dbcon.close()

# MAIN PROGRAM STARTS HERE

navi()


