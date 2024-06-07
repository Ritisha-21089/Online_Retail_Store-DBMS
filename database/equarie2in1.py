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

  print("""what  Quarie you want to exicute from the following 
  
  =======================================================================================================================

  1) category with more than avaerage rating and the no of products in that category 
  2) customer id and his name  with his payment detais and his last payment date if he is using protonmail and Creditcard
  ========================================================================================================================
  """)
  x=int(input("enter: "))
  if(x==1):
    mycursor.execute("""SELECT 
  Category.Category_name, 
  AVG(Prod_rating) AS Avg_rating, 
  COUNT(*) AS Num_products_with_rating_above_avg
FROM 
  Product
  INNER JOIN Category ON Product.Category_Id = Category.Category_Id
  INNER JOIN Prod_feedback ON Product.Prod_Id = Prod_feedback.Prod_Id
WHERE 
  Prod_rating > (
    SELECT 
      AVG(Prod_rating) 
    FROM (
      SELECT 
        Prod_rating 
      FROM 
        Prod_feedback 
      WHERE 
        Prod_Id IN (
          SELECT Prod_Id FROM Product WHERE Category_Id = Category.Category_Id
        )
    ) AS Avg_rating_by_category
  )
GROUP BY 
  Category.Category_name;""")

    result = mycursor.fetchall()
    for row in result:
      l=list(row)
      print(' '.join(map(str,l)))

  elif(x==2):
    mycursor.execute("""SELECT c.customer_ID, ca.Cart_ID,c.Cust_name,c.Cust_email, ca.Total_cost, p.Payment_type, p.Payment_date
FROM cart ca 
JOIN customer c ON ca.customer_id = c.customer_id 
JOIN payment_portal p ON ca.cart_id = p.cart_id AND p.payment_type LIKE '%Card'
WHERE ca.customer_id IN(SELECT customer_id
                        FROM customer
                        WHERE cust_email LIKE '%pro%')
ORDER BY c.Customer_ID
LIMIT 0, 2000;
    """)
    result = mycursor.fetchall()
    for row in result:
        l=list(row)
        print(' '.join(map(str,l)))
  elif(x==3):
    break