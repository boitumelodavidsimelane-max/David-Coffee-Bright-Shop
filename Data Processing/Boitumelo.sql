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

