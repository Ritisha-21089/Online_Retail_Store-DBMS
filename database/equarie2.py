import mysql.connector
import yaml
with open('db.yaml') as f:
    params = yaml.load(f, Loader=yaml.FullLoader)
conn = mysql.connector.connect(
    host=params['host'],
    user=params['user'],
    password=params['password'],
    db=params['db']
)

cursor = conn.cursor()

#category with more than avaerage rating and the no of products in that category 
query = """SELECT c.customer_ID, ca.Cart_ID,c.Cust_name,c.Cust_email, ca.Total_cost, p.Payment_type, p.Payment_date
FROM cart ca 
JOIN customer c ON ca.customer_id = c.customer_id 
JOIN payment_portal p ON ca.cart_id = p.cart_id AND p.payment_type LIKE '%Card'
WHERE ca.customer_id IN(SELECT customer_id
                        FROM customer
                        WHERE cust_email LIKE '%pro%')
ORDER BY c.Customer_ID
LIMIT 0, 2000;"""

cursor.execute(query)


results = cursor.fetchall()


for row in results:
    l=list(row)
    
    print(' '.join(map(str,l)))

cursor.close()
conn.close()
