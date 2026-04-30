-- Create a view to analyze Month-over-Month (MoM) percentage change in sales
CREATE VIEW percentage_change AS
WITH sm AS
(
    -- CTE 1: Aggregate  data to a monthly grain
    SELECT
        MONTH(Order_date) AS Order_Month,
        YEAR(Order_date) AS Order_Year,
        SUM(New_Total) AS Monthly_price_sum
    FROM dbo.prices_regular
    WHERE YEAR(Order_date) IS NOT NULL -- Data cleaning: ignore records with missing dates
    GROUP BY YEAR(Order_date), MONTH(Order_date)
), 
lg AS
(
    -- CTE 2: Use window function LAG to retrieve the previous month's sales figure
    SELECT *,
        LAG(Monthly_price_sum) OVER (ORDER BY Order_Year ASC, Order_Month ASC) AS previous_month_price
    FROM sm
)
-- Final Selection: Calculate the percentage growth/decline
SELECT *,
    CASE
        -- Handle the first month in the dataset to avoid division by zero or NULL results
        WHEN LAG(Monthly_price_sum) OVER (ORDER BY Order_Year ASC, Order_Month ASC) IS NULL THEN 0
        -- Formula: ((Current - Previous) / Previous) * 100
        ELSE ROUND((Monthly_price_sum - previous_month_price) / previous_month_price * 100, 2) 
    END AS Monthly_change
FROM lg;
