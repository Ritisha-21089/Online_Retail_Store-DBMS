import mysql.connector
import yaml
import eq2in1
import OLAP
import triggers

with open('db.yaml') as f:
    params = yaml.load(f, Loader=yaml.FullLoader)
conn = mysql.connector.connect(
    host=params['host'],
    user=params['user'],
    password=params['password'],
    db=params['db']
)

cursor = conn.cursor()
def update_order_history():
    triggers.update_order_history
    print("trigger ran sucessfully ")
def before_insert_prod_feedback():
    triggers.before_insert_prod_feedback
    print("trigger ran sucessfully ")
def before_insert_partner_feedback():
    triggers.before_insert_partner_feedback
    print("trigger ran sucessfully ")
def check_deal_requirement_trigger():
    triggers.check_deal_requirement_trigger
    print("trigger ran sucessfully ")
def membership_update_trigger():
    triggers.membership_update_trigger
    print("trigger ran sucessfully ")
def validate_deal_min_req ():
    triggers.validate_deal_min_req
    print("trigger ran sucessfully ")




def category_more_than_average_rating():
    eq2in1.category_more_than_average_rating()
def customer_details_with_payment():
    eq2in1.customer_details_with_payment()
        

def delete_supplier():
    supplier_id = input("Enter Supplier ID to delete: ")
    cursor.execute(f"DELETE FROM Supplier WHERE Supplier_ID = '{supplier_id}'")
    conn.commit()
    print("Supplier deleted successfully!")

def delete_delivery_partner():
    delivery_partner_id = input("Enter Delivery Partner ID to delete: ")
    cursor.execute(f"DELETE FROM Delivery_Partner WHERE Delivery_Partner_ID = '{delivery_partner_id}'")
    conn.commit()
    print("Delivery Partner deleted successfully!")



   

def view_suppliers_and_products():
    cursor.execute("SELECT Supplier.Supplier_ID, Supplier.Supplier_name, Product.Prod_name FROM Supplier INNER JOIN Product ON Supplier.Supplier_ID = Product.Supplier_ID")
    rows = cursor.fetchall()
    for row in rows:
        print(f"Supplier ID: {row[0]}, Supplier Name: {row[1]}, Product Name: {row[2]}")



# Define functions for different menu options
def add_admin():
    admin_id = input("Enter Admin ID: ")
    admin_name = input("Enter Admin Name: ")
    admin_pass = input("Enter Admin Password: ")
    admin_email = input("Enter Admin Email: ")
    admin_mobile = input("Enter Admin Mobile: ")
    query = "INSERT INTO admin (Admin_ID, Admin_name, Admin_pass, Admin_mobile, Admin_email) VALUES ('{}', '{}', '{}', '{}', '{}')".format(admin_id, admin_name, admin_pass, admin_mobile, admin_email)
    cursor.execute(query)
    conn.commit()
    print("Admin added successfully!")

def add_customer():
    customer_id = input("Enter Customer ID: ")
    cust_name = input("Enter Customer Name: ")
    cust_pass = input("Enter Customer Password: ")
    cust_email = input("Enter Customer Email: ")
    cust_mobile = input("Enter Customer Mobile: ")
    cust_dob = input("Enter Customer Date of Birth: ")
    cust_street = input("Enter Customer Street: ")
    cust_city = input("Enter Customer City: ")
    cust_country = input("Enter Customer Country: ")
    query = "INSERT INTO Customer VALUES ('{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}')".format(customer_id, cust_name, cust_pass, cust_email, cust_mobile, cust_dob, cust_street, cust_city, cust_country)
    cursor.execute(query)
    conn.commit()
    print("Customer added successfully!")

def add_supplier():
    supplier_id = input("Enter Supplier ID: ")
    supplier_name = input("Enter Supplier Name: ")
    supplier_pass = input("Enter Supplier Password: ")
    supplier_email = input("Enter Supplier Email: ")
    supplier_mobile = input("Enter Supplier Mobile: ")
    supplier_street = input("Enter Supplier Street: ")
    supplier_city = input("Enter Supplier City: ")
    supplier_country = input("Enter Supplier Country: ")
    query = "INSERT INTO Supplier VALUES ('{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}')".format(supplier_id, supplier_name, supplier_pass, supplier_email, supplier_mobile, supplier_street, supplier_city, supplier_country)
    cursor.execute(query)
    conn.commit()
    print("Supplier added successfully!")

def add_product():
    prod_id = input("Enter Product ID: ")
    deal_id = input("Enter Deal ID: ")
    supplier = input("Enter Supplier: ")
    categ_id = input("Enter Category ID: ")
    prod_name = input("Enter Product Name: ")
    brand = input("Enter Brand: ")
    description = input("Enter Description: ")
    availability = input("Enter Availability: ")
    max_discount_avail = input("Enter Maximum Discount Available: ")
    query = "INSERT INTO Product VALUES ('{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}', '{}')".format(prod_id, deal_id, supplier, categ_id, prod_name, brand, description, availability, max_discount_avail)
    cursor.execute(query)
    conn.commit()
    print("Product added successfully!")

def add_category():
    categ_id = input("Enter Category ID: ")
    categ_name = input("Enter Category Name: ")
    query = "INSERT INTO Category VALUES ('{}', '{}')".format(categ_id, categ_name)
    cursor.execute(query)
    conn.commit()
    print("Category added successfully!")


def main_menu():
    while True:
        print("1. Add Admin")
        print("2. Add Customer")
        print("3. Add Supplier")
        print("4. Add Product")
        print("5. Add Category")
        print("6. Enter as Admin")
        print("7. Enter as Supplier")
        print("8.Enter as customer")
        print("0. Exit")
        choice = input("Enter your choice: ")
        if choice == '1':
            add_admin()
        elif choice == '2':
            add_customer()
        elif choice == '3':
            add_supplier()
        elif choice == '4':
            add_product()
        elif choice == '5':
            add_category()
        elif choice == '6':
                print("WELCOME ADMIN")
            
                while True:
                    print("1. View Suppliers and Products")
                    print("2. Delete Supplier")
                    print("3. Delete Delivery Partner")
                    
                    print("4. View Categories with more than average rating")
                    print("5. View Customer Details with Payment Information")
                    print("6.Run triggers")
                    print("0. Exit")
                    admin_choice = input("Enter your choice: ")
                    if admin_choice == '1':
                        view_suppliers_and_products()
                    elif admin_choice == '2':
                        delete_supplier()
                    elif admin_choice == '3':
                        delete_delivery_partner()
                    elif admin_choice == '4':
                        category_more_than_average_rating()
                    elif admin_choice == '5':
                        customer_details_with_payment()
                    elif admin_choice == '6':
                        while(True):
                            print("TRIGGER TESTING ")
                            print("you have the following trigers in the database")
                            print("1.update product feedback before inserting ")
                            print("2.Update partner feedback before inserting ")
                            print("3.Update order history")
                            print("4.validate deak min req")
                            print("5.membership update trigger ")
                            print("6.check dealrequirment ")
                            print("0.EXIT")     
                            trigerinput =input("Enter: ")

                            if trigerinput=='1':
                                before_insert_prod_feedback()

                             
                            elif trigerinput=='2':
                                before_insert_prod_feedback()
                                
                            elif trigerinput=='3':
                                update_order_history()
                            elif trigerinput=='4':
                                validate_deal_min_req
                            elif trigerinput=='5':
                                membership_update_trigger
                            elif trigerinput=='6':
                                check_deal_requirement_trigger
                            elif trigerinput=='0':
                                break
                            

                           
                            
                    elif admin_choice == '0':

                        break
                    else:
                        print("Invalid choice. Please try again.")

        elif choice == '7':
                print("WELCOME SUPPLIER")
                while True:
                    print("1. Show the number of products available in each category")
                    print("2. Show the top 10 products based on their sales")
                    print("3. Show the top 5 products based on their average customer ratings")
                    print("4. Show the total amount spent by each customer on orders")
                    print("0. Exit")
                    supplier_choice = input("Enter your choice: ")
                    if supplier_choice == '1':
                        OLAP.products_by_category()
                    elif supplier_choice == '2':
                        OLAP.top_products_by_sales()
                    elif supplier_choice == '3':
                        OLAP.top_products_by_ratings()
                    elif supplier_choice == '4':
                        OLAP.total_spent_by_customers()
                    elif supplier_choice == '0':
                        break
                    else:
                        print("Invalid choice. Please try again.")
        elif choice=='8':
            print("WELCOME CUSTOMER")
            print("THE FOLLOWING ARE THE PRODUCTS IN OUR WEBSITE ")
            cursor.execute("""SELECT * FROM onlineretailstore.product;""")
            result = cursor.fetchall()
            for row in result:
                l=list(row)
                print(' '.join(map(str,l)))
        elif choice == '0':
            break
        else:
            print("Invalid choice. Please try again.")



# Call the main menu
main_menu()

# Close the database connection
conn.close()


