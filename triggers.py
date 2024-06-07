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

def before_insert_partner_feedback():
    mycursor.execute("""
                       DROP TRIGGER  IF EXISTS before_insert_partner_feedback;
                        DELIMITER $$
                        CREATE TRIGGER before_insert_partner_feedback
                        BEFORE INSERT ON Partner_feedback
                        FOR EACH ROW
                        BEGIN
                            DELETE FROM Partner_feedback
                            WHERE Partner_Id = NEW.Partner_Id AND Customer_Id = NEW.Customer_Id;
                        END$$

                        """)

    result = mycursor.fetchall()
    for row in result:
      l=list(row)
      print(' '.join(map(str,l)))

    
def  before_insert_prod_feedback():
      
      mycursor.execute("""
                            DROP TRIGGER  IF EXISTS before_insert_prod_feedback;
                        DELIMITER $$
                        CREATE TRIGGER before_insert_prod_feedback
                        BEFORE INSERT ON Prod_feedback
                        FOR EACH ROW
                        BEGIN
                            DELETE FROM Prod_feedback
                            WHERE Prod_Id = NEW.Prod_Id AND Customer_Id = NEW.Customer_Id;
                        END$$""")
      result = mycursor.fetchall()
      for row in result:
          l=list(row)
          print(' '.join(map(str,l)))


def update_order_history ():
      mycursor.execute("""DROP TRIGGER IF EXISTS update_order_history;

                            DELIMITER $$

                            CREATE TRIGGER update_order_history
                            AFTER INSERT ON order_
                            FOR EACH ROW
                            BEGIN
                                UPDATE Account_data
                                SET Order_history = Order_history+1
                                WHERE Account_data.Customer_ID = NEW.Customer_ID;

                                UPDATE Account_data
                                SET Wishlist = Wishlist-1
                                WHERE Account_data.Customer_ID = NEW.Customer_ID;
                            END$$""")
      result = mycursor.fetchall()
      for row in result:
          l=list(row)
          print(' '.join(map(str,l)))


def validate_deal_min_req():
      mycursor.execute("""DROP TRIGGER IF EXISTS validate_deal_min_req;
                            DELIMITER $$
                            CREATE TRIGGER validate_deal_min_req
                            BEFORE INSERT ON Offer
                            FOR EACH ROW
                                BEGIN
                                    IF NEW.min_requirement < 300 THEN
                                        SIGNAL SQLSTATE '45000' 
                                        SET MESSAGE_TEXT = 'Minimum requirement cannot be less than 300';
                                    END IF;
                                END$$""")
      result = mycursor.fetchall()
      for row in result:
          l=list(row)
          print(' '.join(map(str,l)))



def membership_update_trigger():
      mycursor.execute("""DROP TRIGGER IF EXISTS membership_update_trigger;

                        DELIMITER $$
                        CREATE TRIGGER membership_update_trigger
                            AFTER UPDATE ON Membership
                                FOR EACH ROW
                                BEGIN
                                DECLARE num_coupons INT;
                                IF NEW.Membership = 'Prime' AND OLD.Membership != 'Prime' THEN
                                 SET num_coupons = 3;
                                ELSEIF NEW.Membership = 'Elite' THEN
                                 SET num_coupons = 5;
                                ELSE
                                 SET num_coupons = 0;
                                END IF;
                                IF num_coupons > 0 THEN
                                 INSERT INTO Account_data (Customer_Id, Coupons)
                                 VALUES (NEW.Customer_Id, num_coupons)
                                 ON DUPLICATE KEY UPDATE Coupons = Coupons + num_coupons;
                                END IF;
                            END$$""")
      result = mycursor.fetchall()
      for row in result:
          l=list(row)
          print(' '.join(map(str,l)))


def check_deal_requirement_trigger ():
      mycursor.execute("""DROP TRIGGER IF EXISTS check_deal_requirement_trigger;

                            DELIMITER $$

                            CREATE TRIGGER check_deal_requirement_trigger
                                BEFORE INSERT ON Cart
                                    FOR EACH ROW
                                    BEGIN
                                    DECLARE min_requirement DECIMAL(10, 2);
                                    SELECT Offer.min_requirement INTO min_requirement FROM Offer WHERE Deal_Id = NEW.Deal_Id;
                                    IF min_requirement > NEW.Total_cost THEN
                                     SIGNAL SQLSTATE '45000' 
                                     SET MESSAGE_TEXT = 'Minimum requirement not met for this deal.';
                                     END IF;
                                END$$""")
      result = mycursor.fetchall()
      for row in result:
          l=list(row)
          print(' '.join(map(str,l)))