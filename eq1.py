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
query = """SELECT 
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
  Category.Category_name;"""

cursor.execute(query)


results = cursor.fetchall()


for row in results:
    l=list(row)
    
    print(' '.join(map(str,l)))

cursor.close()
conn.close()
