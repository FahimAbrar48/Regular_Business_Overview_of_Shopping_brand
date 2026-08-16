SELECT * From customer limit 4000;
--
--
SELECT column_name
FROM information_schema.columns
WHERE table_name = 'customer';
--
--Purchase ammount differentiate between male vs felmale
SELECT gender, SUM(purchase_amount) AS revenue
FROM customer
GROUP BY gender;

--Customer Who got the discount facilities still spent more than avg purchase ammount
SELECT customer_id, purchase_amount
FROM customer
WHERE discount_applied = 'yes' AND purchase_amount >= (SELECT AVG(purchase_amount)FROM customer);
--
SELECT AVG(purchase_amount) AS avg_purchase
FROM customer;
--
SELECT MAX(purchase_amount) AS max_discount_purchase
FROM customer
WHERE discount_applied = 'Yes';
--
SELECT DISTINCT discount_applied
FROM customer;
---
SELECT customer_id, purchase_amount
FROM customer
WHERE discount_applied = 'Yes' AND purchase_amount >= (SELECT AVG(purchase_amount)FROM customer);

--Top ITEM Product which have the highest avg review ratings
SELECT item_purchased,AVG(review_rating) AS "Average Product Ratings"
FROM customer
GROUP BY item_purchased
ORDER BY AVG(review_rating) DESC
LIMIT 10;

--Compare the averagea Purchased Amounts between Standard and Express shipping

SELECT shipping_type,
ROUND(AVG(purchase_amount), 2)
AS avg_purchase_amount
FROM customer
WHERE shipping_type IN ('Standard', 'Express')
GROUP BY shipping_type;

--Did subscribe customer spend more or not?Compare Average spend and total revenue 
--bwtween subscriber and non_subscriber
SELECT subscription_status,
COUNT(customer_id) AS total_customer,
ROUND(AVG(purchase_amount), 2) AS avg_spend,
ROUND(SUM(purchase_amount), 2) AS total_revenue
FROM customer
GROUP BY subscription_status
ORDER BY total_revenue, avg_spend DESC;

--Which Ten products dely heavily on discount to sell
SELECT item_purchased,
ROUND(SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)::numeric/ COUNT(*) * 100,2) AS discount_rate
FROM customer
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 10;

--Segment Customers into new,returning and loyal based on their total number of previous purchases, and show the count of each segment,
WITH customer_type AS (
SELECT customer_id,previous_purchases,CASE
WHEN previous_purchases <= 1 THEN 'New'
WHEN previous_purchases BETWEEN 2 AND 10 THEN 'Returning'
ELSE 'Loyal'
END AS customer_segment
FROM customer)
SELECT customer_segment,COUNT(*) AS "Number of Customers"
FROM customer_type
GROUP BY customer_segment;

--What are the top 3 most purchased product within each category?
WITH item_count AS (SELECT category,item_purchased,
COUNT(customer_id) AS total_orders,
ROW_NUMBER() OVER (
PARTITION BY category
ORDER BY COUNT(customer_id) DESC) AS item_rank
FROM customer
GROUP BY category, item_purchased)
SELECT item_rank,category,item_purchased,total_orders
FROM item_count
WHERE item_rank >= 3;

--Are repeat buyers(more than 5 previous purchases) also likely to subcribe?
SELECT subscription_status,
COUNT(customer_id) AS repeat_buyers
FROM customer
WHERE previous_purchases > 5
GROUP BY subscription_status;

-- Revenue Contribution of each age group?
SELECT age_group,
SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY age_group
ORDER BY total_revenue DESC;

