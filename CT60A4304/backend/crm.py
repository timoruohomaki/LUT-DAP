#
# CT60A4304 Basics of Database Systems
# Course Project: CRM System
# Developer: Timo Ruohomäki
#
# Docs: https://docs.python.org/3/library/sqlite3.html
#       https://github.com/SuperMaZingCoder/TableIt 

import os
import sqlite3
from sqlite3 import Error
import TableIt

dbcon = None

# Functions

def searchAccount():
    print("Not implemented yet, sorry!")

    q = input("Press any key to get back to main menu. ")
    if q:
        navi()
    else:
        navi()    
    

def searchContact():
    
    term = input("Enter search term (first name, last name or company): ")
    
    if term:
        try:
            dbcon = sqlite3.connect("CRMDEMO.DB")
            
            params = (term,)
            
            sql = "SELECT C.con_id, C.first_name || \' \' || COALESCE(C.last_name,' ') AS ContactPerson, A.company \
                FROM contactPerson AS C JOIN account AS A ON C.FK_acc = A.acc_id \
                    WHERE C.first_name LIKE %?% ORDER BY C.last_name ASC LIMIT 10"
            
            dbcon.row_factory = sqlite3.Row
            dbcur = dbcon.cursor()
       
            contacts = dbcur.execute(sql,params).fetchall()
            
            TableIt.printTable(leadList)
               
        except Error as err:
            print("[ERROR]: ", err.sqlite_errorname, "code", str(err.sqlite_errorcode))
        
        finally:
            
            dbcon.close()
            
            q = input("Press any key to get back to main menu. ")
            if q:
                navi()
            else:
                navi()

def createLead():
    
    print("Enter lead details:")
    first_name = input("First name: ")
    last_name = input("Last name: ")
    company = input("Company: ")
    street = input("Street address: ")
    zipcode = input("Postal code: ")
    city = input("City: ")
    country = input("Country: ")
    email = input("Email: ")
    phone = input("Phone: ")
    salesRep = int(input("Sales Rep ID (Integer value): "))

    data = [(first_name, last_name, company, street, zipcode, city, country, email, phone, salesRep)]

    try:
        dbcon = sqlite3.connect("CRMDEMO.DB")   
    except Error as err:
        print("[ERROR] Database connect failed: ", err.sqlite_errorname)
        
    finally:
        
        # (first_name, last_name, company, street, zip, city, country, email, phone, salesRep)
        
        try:
            sql = "INSERT INTO lead VALUES (?,?,?,?,?,?,?,?,?,?)"
            
            dbcur = dbcon.cursor()
            dbcur.execute(sql, data)
            
            dbcon.commit()
            
            print("Created new lead with id ", str(dbcur.lastrowid),".")
            
            dbcon.close()
            
        except Error as err:
            print("[ERROR] In INSERT statement: ", err.sqlite_errorname)

    q = input("Press any key to get back to main menu. ")
    if q:
        navi()
    else:
        navi()
    
def getLatestLeads():
    
    try:
        dbcon = sqlite3.connect("CRMDEMO.DB")            
    except Error as err:
        print("[ERROR]]: ", err.sqlite_errorname)
            
    finally:
        
        sql = "SELECT L.lead_id, L.first_name || \' \' || COALESCE(L.last_name,' ') AS ContactPerson, L.company, \
            S.first_name || \' \' || COALESCE(S.last_name, '') AS SalesPerson \
            FROM lead AS L JOIN salesPerson AS S ON L.FK_salesRep = S.sales_id \
                ORDER BY L.lead_id DESC LIMIT 10"
        
        dbcon.row_factory = sqlite3.Row
        dbcur = dbcon.cursor()
       
        leadList = dbcur.execute(sql).fetchall()
          
        dbcon.close()

        print("LATEST LEADS:")

        TableIt.printTable(leadList)
    
        q = input("Press any key to get back to main menu. ")
        if q:
            navi()
        else:
            navi()


def createAccount():
    print("Not implemented yet, sorry!")

def createContact():
    print("Not implemented yet, sorry!")

def updateAccount():
    print("Not implemented yet, sorry!")
    
def getAccount():
    print("Not implemented yet, sorry!")
    
def getOpportunitySummary():
    print("Not implemented yet, sorry!")
    
def getContactList():
    print("")

def salesTeamStatus():
    print("")
        
def createDemo():
    
    q = input("Do you want to create an empty new database? (Y/N) ")
    
    if q == "Y":
    
        print("Creating database file CRMDEMO.DB...")
        print("Database file location: ", os.getcwd())
        
        try:
            dbcon = sqlite3.connect("CRMDEMO.DB")
            print("[INFO] SQLite Database Version: ", sqlite3.sqlite_version)
            
        except Error as e:
            print("[ERROR] Database error: ", e.sqlite_errorname)
            
        finally:
            if dbcon: 
                print("Creating tables...")
        
                with open('createdb.sql', 'r') as sql_file:

                    sql_script = sql_file.read()

                    dbcur = dbcon.cursor()
                    
                    try:
                        dbcur.execute("BEGIN TRANSACTION")
                    
                        dbcur.executescript(sql_script)
                        
                        dbcon.commit()
                        
                        dbcon.close()

                        print("Database creation completed.")

                    except dbcon.Error as err:
                        print("[ERROR] Database error code ",err.sqlite_errorcode)
                        print("[ERROR] ", err.sqlite_errorname)
                        dbcon.rollback()
                    
    q = input("Do you want to populate the database with demo data? (Y/N) ")
    
    if q == "Y":
        
        try:
            dbcon = sqlite3.connect("CRMDEMO.DB")
            
        except Error as e:
            print("[ERROR] Database error: ", e.sqlite_errorname)

        finally:

            if dbcon: 
                print("Populating tables with demo data...")
        
                with open('insertdemo.sql', 'r') as sql_file:

                    sql_script = sql_file.read()

                    dbcur = dbcon.cursor()
                    
                    try:
                        dbcur.execute("BEGIN TRANSACTION")
                    
                        dbcur.executescript(sql_script)
                        
                        dbcon.commit()
                        dbcon.close()
                    
                        print("Demo data populated successfully.")
                        print("")
                        print("### Database created and demo data inserted, you can now use options 1-8. ###")
                        
                        q = input("Press any key to get back to main menu. ")
                        if q:
                            navi()
                        else:
                            navi()
                    
                    except dbcon.Error as err:
                        
                        print("[ERROR] Database error code ",err.sqlite_errorcode)
                        print(err.sqlite_errorname)
                        
                        dbcon.rollback()

def navi():
    print("")
    print("======================")
    print("=== CRM NAVIGATION ===")
    print("======================")
    print("")
    print("[1] - SEARCH ACCOUNTS")
    print("[2] - SEARCH CONTACTS")
    print("[3] - SEARCH LEADS")
    print("[4] - SHOW LATEST OPPORTUNITIES")
    print("[5] - CREATE NEW LEAD")
    print("[6] - CREATE NEW ACCOUNT")
    print("[7] - CREATE NEW CONTACT")
    print("[8] - SALES TEAM STATUS")
    print("[9] - CREATE DEMO DATABASE")
    print("[0] - EXIT")
    print("===================")
    
    naviSelect = input("Select option (0-9):" )

    match naviSelect:
        
        case "1":
            searchAccount()

        case "2":
            searchContact()

        case "3":
            
            getLatestLeads()
            
        case "4":
            print("Listing latest opportunities")

        case "5":
            
            createLead()
            
        case "6":
            
            createAccount()
        
        case "7":
            
            createContact()
            
        case "8":
            
            salesTeamStatus()
            
        case "9":
            
            createDemo()
                                
        case _:
            print("")
            print("Bye!")
            
            if dbcon:
                dbcon.close()

# MAIN PROGRAM STARTS HERE

navi()


