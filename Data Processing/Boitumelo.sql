--- Trial run of my table to see if it is loaded
SELECT *

FROM workspace.default.`1773680391797_bright_coffee_shop_analysis_case_study_1`;
------------------------------------------------------------------------------------------

---Data Collection commerced from 2023-01-01 to 2023-06-30
SELECT MIN(transaction_date) AS start_date, MAX(transaction_date) AS end_date

FROM workspace.default.`1773680391797_bright_coffee_shop_analysis_case_study_1`;
-----------------------------------------------------------------------------------------

---- Store locations: We havee 3 stores in Lower Manhattan, Hell's kitchen and Astoria.

SELECT DISTINCT store_location

FROM workspace.default.`1773680391797_bright_coffee_shop_analysis_case_study_1`;
-----------------------------------------------------------------------------------------

---- Product categories: We have 9 product categories across all the stores

SELECT DISTINCT product_category AS catergory, product_detail AS product

FROM workspace.default.`1773680391797_bright_coffee_shop_analysis_case_study_1`;

---- Product types: We have 10 product types across all the stores
 
SELECT DISTINCT product_category AS catergory, product_detail AS product, product_type AS type

FROM workspace.default.`1773680391797_bright_coffee_shop_analysis_case_study_1`;
--------------------------------------------------------------------------------

---“How many total records, sales, products, and stores are in this dataset?

SELECT COUNT (*) AS number_of_rows,
COUNT (DISTINCT transaction_id) AS number_of_sales,
COUNT (DISTINCT product_id) AS number_of_products,
COUNT (DISTINCT store_id) AS number_of_stores

FROM workspace.default.`1773680391797_bright_coffee_shop_analysis_case_study_1`;
--------------------------------------------------------------------------------

---How muc revenue was generated per client's purchase

SELECT 
       transaction_date, 
       DAYNAME(transaction_date) AS day_name,
       MONTHNAME(transaction_date) AS month_name,
       (transaction_qty*unit_price)  AS revenue_per_transaction

FROM workspace.default.`1773680391797_bright_coffee_shop_analysis_case_study_1`;
--------------------------------------------------------------------------------

--Sum of all revenue per day

SELECT 
---Dates
transaction_date, 
       DAYNAME(transaction_date) AS day_name,
       MONTHNAME(transaction_date) AS month_name,
 ----Counts of ID
       COUNT (DISTINCT transaction_id) AS number_of_sales,
       COUNT (DISTINCT product_id) AS number_of_products,
       COUNT (DISTINCT store_id) AS number_of_stores,
---Revenue
       SUM(transaction_qty*unit_price)  AS revenue_per_day,
--Catagorical columns 
store_location,
product_category,
product_type,
product_detail
      FROM workspace.default.`1773680391797_bright_coffee_shop_analysis_case_study_1`
      GROUP BY transaction_date,day_name, month_name, product_category,product_type,product_detail,store_location;
-----------------------------------------------------------------------------------

