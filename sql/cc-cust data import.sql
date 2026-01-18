USE ccdb;
Select * from cc_detail;
LOAD DATA LOCAL INFILE 'C:/Program Files/MySQL/MySQL Server 8.0/Uploads/credit_card.csv'
INTO TABLE cc_detail
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(Client_Num, Card_Category, Annual_Fees, Activation_30_Days, Customer_Acq_Cost, @Week_Start_Date, Week_Num, Qtr, Current_Year, Credit_Limit, Total_Revolving_Bal, Total_Trans_Amt, Total_Trans_Vol, Avg_Utilization_Ratio, Use_Chip, Exp_Type, Interest_Earned, Delinquent_Acc)
SET Week_Start_Date = STR_TO_DATE(@Week_Start_Date, '%d-%m-%Y');

Select * from cust_detail;
LOAD DATA LOCAL INFILE 'C:/Program Files/MySQL/MySQL Server 8.0/Uploads/customer.csv'
INTO TABLE cust_detail
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
