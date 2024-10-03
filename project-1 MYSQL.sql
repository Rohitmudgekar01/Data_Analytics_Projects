Create database project;
Use project;
select *from master_data_csv;
select count(*) from master_data_csv;

SELECT COUNT(*) AS null_count
FROM master_data_csv
WHERE olist_order_items_dataset.product_id IS NULL;


SELECT 
`Weekday/Weekend`,
    COUNT(*) AS total_orders,
    SUM(`olist_order_payments_dataset.payment_value`) AS total_payment,
    AVG(`olist_order_payments_dataset.payment_value`) AS avg_payment
FROM 
    project.master_data_csv
GROUP BY 
  `Weekday/Weekend`;
  

  SELECT
    COUNT(*) AS total_orders
  FROM
    project.master_data_csv
  WHERE
   "olist_order_reviews_dataset.review_score" = 5
  AND "olist_order_payments_dataset.payment_type" = 'credit_card';
   
   SELECT 
    AVG( olist_orders_dataset.order_delivered_customer_date - olist_orders_dataset.order_purchase_timestamp) AS avg_delivery_days
FROM 
    project.master_data_csv
WHERE 
    olist_products_dataset.product_category_name = 'pet_shop';
    
    
    SELECT 
    AVG(`olist_order_items_dataset.price`) AS avg_price,
    AVG(`olist_order_payments_dataset.payment_value`) AS avg_payment_value
FROM 
    project.data
WHERE 
    customer_city = 'sao paulo' ;
    
    SELECT 
DATEDIFF(STR_TO_DATE(`olist_orders_dataset.order_delivered_customer_date`, '%d-%m-%Y'), STR_TO_DATE(`olist_orders_dataset.order_purchase_timestamp`, '%d-%m-%Y')) AS shipping_days,
    "olist_order_reviews_dataset.review_score",
    COUNT(*) AS total_orders
FROM 
    project.data
GROUP BY 
    shipping_days, 
    "olist_order_reviews_dataset.review_score"
ORDER BY 
    shipping_days;
  