import mysql.connector
import yaml

# Load connection parameters from a YAML file
with open('db.yaml') as f:
    params = yaml.load(f, Loader=yaml.FullLoader)

# Connect to the database
mydb = mysql.connector.connect(
    host=params['host'],
    user=params['user'],
    password=params['password'],
    db=params['db']
)

mycursor = mydb.cursor()

while(True):

  print("""what OLAP Quarie you want to exicute from the following 
  
  ================================================================
  1) Show the number of products available in each category:
  2) Show the top 10 products based on their sales:
  3) What are the top 5 products in terms of average customer ratings?
  4) total amount spent by each customer on orders 
  5) Exit
  =================================================================
  """)
  x=int(input("enter: "))
  if(x==1):
    mycursor.execute("""SELECT IFNULL(t1.Category_name, 'Total') AS Category_name, SUM(t1.Total_products) AS Total_products
FROM (
    SELECT c.Category_name, COUNT(p.Prod_ID) AS Total_products
    FROM Category c
    JOIN Product p ON c.Category_ID = p.Category_ID
    GROUP BY c.Category_name 
    WITH ROLLUP
) t1
GROUP BY t1.Category_name WITH ROLLUP;""")

    result = mycursor.fetchall()
    for row in result:
        l=list(row)
        print(' '.join(map(str,l)))

  elif(x==2):
    mycursor.execute("""SELECT Prod_name, SUM(Total_sales) AS Total_sales
                            FROM (
                            SELECT p.Prod_name, COUNT(o.Order_ID) AS Total_sales
                            FROM Product p
                            JOIN Order_ o ON p.Supplier_ID = o.Supplier_ID
                            GROUP BY p.Prod_name
                            ) t1
                            GROUP BY Prod_name
                            WITH ROLLUP
                            ORDER BY Total_sales DESC
                            LIMIT 10;
    """)
    result = mycursor.fetchall()
    for row in result:
        l=list(row)
        print(' '.join(map(str,l)))

  elif(x==3):
    mycursor.execute("""SELECT 
    CASE WHEN Prod_name IS NULL THEN 'Total' ELSE Prod_name END AS Prod_name,
    AVG(Prod_rating) AS Avg_Rating
    FROM (
      SELECT p.Prod_name, pf.Prod_rating
      FROM Product p
      JOIN Prod_Feedback pf ON p.Prod_ID = pf.Prod_ID
    ) AS subquery
    GROUP BY Prod_name WITH ROLLUP
    HAVING Prod_name IS NOT NULL OR GROUPING(Prod_name) = 0
    ORDER BY Avg_Rating DESC
    LIMIT 5""")
    result = mycursor.fetchall()
    for row in result:
        l=list(row)
        print(' '.join(map(str,l)))

  elif(x==4):
    mycursor.execute("""SELECT 
      CASE WHEN c.Cust_name IS NULL THEN 'Total' ELSE c.Cust_name END AS Cust_name,
      MAX(c.Customer_ID) AS Customer_ID,
      SUM(o.Order_cost) AS total_spent
    FROM Customer c
    JOIN Order_ o ON c.Customer_ID = o.Customer_ID
    GROUP BY c.Cust_name WITH ROLLUP
    ORDER BY c.Cust_name DESC, total_spent DESC;""")
    result = mycursor.fetchall()
    for row in result:
        l=list(row)
        print(' '.join(map(str,l)))
  elif(x==5):
    break