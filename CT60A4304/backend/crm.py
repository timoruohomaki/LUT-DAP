#
# CT60A4304 Basics of Database Systems
# Course Project: CRM System
# Developer: Timo Ruohomäki
#
# Docs: https://docs.python.org/3/library/sqlite3.html
#       https://github.com/SuperMaZingCoder/TableIt 

import os,traceback
import sqlite3
from sqlite3 import Error
import TableIt
import subprocess

dbcon = None

# Functions

def searchAccount():
    term = input("Enter search term (company name or industry): ")

    if term:
        try:
            dbcon = sqlite3.connect("CRMDEMO.DB3")
            
            if dbcon:
            
                term = "%" + term + "%"
            
                params = {"term1": term}
            
                sql = "SELECT company,industry,city FROM account WHERE company LIKE :term1 OR industry LIKE :term1 ORDER BY company ASC"
            
                dbcon.row_factory = sqlite3.Row

                dbcur = dbcon.cursor()
                dbcur.execute(sql,params)
                accounts = dbcur.fetchall()
                
                if len(accounts) > 0:
                    print("ACCOUNTS:")
                    TableIt.printTable(accounts, useFieldNames=False)
                else:
                    print("No results.")
                
            else:
                print("Failed to open database connection.")
            

               
        except sqlite3.OperationalError as err:
                print("[ERROR] Database error:",traceback.print_exc())
        
        finally:
            
            dbcon.close()
            
            print("Press any key to get back to main menu. ")
            input()
            navi()   

   
    

def searchContact():
    
    term = input("Enter search term (first name, last name or company): ")
    
    if term:
        try:
            dbcon = sqlite3.connect("CRMDEMO.DB3")
            
            if dbcon:
            
                term = "%" + term + "%"
            
                params = {"term1": term}
            
                sql = "SELECT C.first_name || \' \' || COALESCE(C.last_name,' ') AS ContactPerson, A.company \
                FROM contactPersons AS C JOIN account AS A ON C.FK_acc = A.acc_id \
                    WHERE C.first_name LIKE :term1 OR C.last_name LIKE :term1 ORDER BY C.last_name ASC LIMIT 10"
            
                dbcon.row_factory = sqlite3.Row
                dbcur = dbcon.cursor()
                dbcur.execute(sql,params)
                contacts = dbcur.fetchall()

                if len(contacts) > 0:
                    print("CONTACTS:")
                    TableIt.printTable(contacts, useFieldNames=False)
                else:
                    print("No results.")

            else:
               print("Failed to open database connection.")
               
        except sqlite3.OperationalError as err:
                print("[ERROR] Database error:",traceback.print_exc())
        
        finally:
            
            dbcon.close()
            
            print("Press any key to get back to main menu. ")
            input()
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
        dbcon = sqlite3.connect("CRMDEMO.DB3")   
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
            
        except sqlite3.OperationalError as err:
                print("[ERROR] Database error:",traceback.print_exc())

        print("Press any key to get back to main menu. ")
        input()
        navi()   
    
def getLatestLeads():
    
    try:
        dbcon = sqlite3.connect("CRMDEMO.DB3")            
    except Error as err:
        print("[ERROR]]: ", err.sqlite_errorname)
            
    finally:
        
        params = ("",)

        sql = "SELECT L.lead_id, L.first_name || \' \' || COALESCE(L.last_name,' ') AS ContactPerson, L.company, \
            S.first_name || \' \' || COALESCE(S.last_name, '') AS SalesPerson \
            FROM lead AS L JOIN salesPerson AS S ON L.FK_salesRep = S.sales_id \
                ORDER BY L.lead_id DESC LIMIT 10"
           
        dbcon.row_factory = sqlite3.Row
        dbcur = dbcon.cursor()
        dbcur.execute(sql)
        leads = dbcur.fetchall()

        dbcon.close()

        print("NEW LEADS:")

        TableIt.printTable(leads)
    
        print("Press any key to get back to main menu. ")
        input()
        navi()   

def createAccount():
    print("Not implemented yet, sorry!")

def createContact():
    print("Not implemented yet, sorry!")

def updateAccount():
    print("Not implemented yet, sorry!")
    
def getOpportunitySummary():
    print("Not implemented yet, sorry!")

def salesTeamStatus():

    try:
        dbcon = sqlite3.connect("CRMDEMO.DB3")            
    except Error as err:
        print("[ERROR]]: ", err.sqlite_errorname)
            
    finally:
        sql = "SELECT S.first_name || \' \' || COALESCE(S.last_name,' ') AS SalesPerson \
            count(SELECT * FROM A.FK_acc_rep)
            FROM salesPerson AS S JOIN account AS A ON S.sales_id = A.acc_id \
                ORDER BY S.last_name ASC"

        dbcon.row_factory = sqlite3.Row
        dbcur = dbcon.cursor()
        dbcur.execute(sql)
        summary = dbcur.fetchall()

        dbcon.close()

        print("SALES TEAM STATUS:")

        TableIt.printTable(summary, useFieldNames=True)
        
        print("Press any key to get back to main menu. ")
        input()
        navi()   
        
def createDemo():
    
    q = input("Do you want to create an empty new database? (Y/N) ")
    
    if q == "Y":
    
        print("Creating database file CRMDEMO.DB3...")
        print("Database file location: ", os.getcwd())
        
        try:
            dbcon = sqlite3.connect("CRMDEMO.DB3")
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
            dbcon = sqlite3.connect("CRMDEMO.DB3")
            
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
                        
                        print("Press any key to get back to main menu. ")
                        input()
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

print("Starting CRM application...")

os.chdir(os.path.dirname(__file__))
print("Current working directory:", os.getcwd())

print("")
navi()


