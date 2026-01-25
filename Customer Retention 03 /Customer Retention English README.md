# Customer Retention Project
# Contents page

* [Backend](#backend)
* [Frontend](#frontend)
* [Used_visualizations](#used-visualizations)
* [Business Insights](#business-insights)
* [What i learned in this project](#what-i-learned-in-this-project)
* [Additional Informations](#additional-Informations)


The main objective of this project was to highlight of which individual customers make less often shopping in company.
Used Database: Adventureworks2017

# Backend
Preparation of views in SQL and connection names and surnames of customers. Add new view in sql "Fact2"
which contains days betwen last and previous customer order.

Combining tables in Power Querry "Facts" and "Fact2" to add a column contains quantity of days between last and previous order in single table with "Left Outer Join". I did it by adding index for each row of order.

Views:
* Dim geo (Informations about customer country)
* Dim Individual customers (Table with name and surname of each customer)
* Facts (Customer id, orderdates and selling scores) main fact table
* Fact2 (Table cointaining days between last and previous customer ordder and also customer id)


# Frontend

Star schema in Power Bi 1 grain - 1 customer order

<img src="Customer%20Retention%20Model.png" alt="Model Preview" width="400">

Tables and columns created in Power Bi:

Calendar table:
  - Containing column with dates since 01.01.2011 to 31.12.2014
  - Year
  - Verbal name of the month
  - Number of month
  - Number of quarter
  - Number of day
  - Name of the day
  - Last day of month for each order date

And different tables: 

 Collection containing all measures used in dashboard


 Table "Dim Individual Customers"
  updated with columns:
  * "First order date month" (Column with last day of month for first order - needed to group data in cohort analysis)
  * "Last order date" (Column with date of last order)


  Fact table containing new columns:
  * "180 days from Last Order" Presenting date (01.01.2014) which is 180 days earlier than last order in database (30.06.2014). Its needed to define if customer has a order in last 180 days (Stable) or customer hasn't any     orders in
   last 180 days (Churned)
  * Column "Churn Status" Churned/Stable
  * Column “Days_Between_Last_and_previous_order” showing amount of days between last and previous order of customer
  * "RFM score" - A column that calculates the total amount of the customer's contribution to the company based on the points awarded for 3 categories: Recency + Total sales + Order amount ( The bigger score, the precious     customer)
  * Column "Months after" showing how many months after current customer has next purchase. Its needed for Cohort analysis

# Used visualizations
* Name of the dashboard
* Filtering slicer with customer name filter and search bar option
* Card including informations about customer id
* 6x Kpi cards containing informations about:
   * Last order date for selected customer
   * Customer status
   * Total sum of purchase which customer had to spend on each order ( with taxes and freight)
   * Recency (days from last order)
   * RFM Score
   * Quantity of customer orders
For quantitive Kpi are also added icons symbolizing every kpi. Download from https://www.flaticon.com

- Gauge presenting percent of customers whose total purchase sum of products is less than for selected customer.
Its showing post-purchase interference of customer compared to other customers.

- Line and stacked Column chart - "Sales and order quantity by country" (presenting number of orders and total sum of customer orders in different countries)

- Line chart - "Customer Base Growth: New vs Active (180 days)" Based on how many customers had next order in next 180 days since current order (green line), and number of new customers whose made first order (red line)
  
- Matrix- "Cohort Analysis for new customers in 2013" - Analysis measures retency indicator for customers the company gained in 2013 year. Each row is representing group of customers, whose made his first order in each month. Columns from 1-12 shows which percent of customers gained earlier is coming back, making next orders in company. In visualization is used a heatmap, to highlight groups of customers whose are making orders more often or rarely.


# Business Insights

Chart "Sales and order quantity by country" is presenting that the biggest contribution have customers from United States both in terms of the number of orders and the total amount invested.
In chart we can observe that customers are investing the least  in Canada and that Germany is a country with the least order quantity.

Based on "Customer Base Growth ..." we can find out that in 2013 year, There was a significant strengthening of the upward trend in the number of new customers, and "old customers" began to shop more often - which says green line.

Based on Cohort Analysis we can observe that  customers whose made purchase in months ( January - May) are acoming back more often in november and december.This is evidenced by values e.g. 22% in december for customers from february. 
It can be assumed that customers make repeat purchases on average every 7-8 months.


# What i learned in this project

By preparing this dashboard I learned how to use visualizations like "matrix', "gauge"(tachometer),"cards+".
I learned also how to acquire new visualizations when casually programmed in power bi interface are not enough.
For icon colorization I learned how to use from program Affinity, thanks to this I could visualize icons and then export to Power Bi. I found out about page https://coolors.co. which helps me with selecting the appriopriate color palette.
I leanred also new functions in Power Bi:
"Remove filters" which works very similar to "all(table)"
"Eomonth" which is responsible for showing last date od month.
Also I learnd what is the meaning of symbols like "&&" or "||".
The hardest part was for me cohort analysis, which i was doing the first time. I learned also that i can change the size od dashboard.

# Additional Informations

RFM Score punctation:


Total Sales points: 

* x > 5000 = 3 points
* x > 1000 = 2 points
* x >= 100 = 1 point
* x < 100 = 0 points

Recency points

* x > 0 or x <90 = 3 points . There are two conditions becouse there is a lot of scores with 0 days which means that customer didnt make second order. Based on this, points are destributed incorecctly

* x >= 90 = 2 points
* x > 180 = 1 point
* x > 360 = 0 points

Order quantity points

* x > 8 = 3 points
* x > 4 = 2 points
* x > 2 = 1 point
* x < 2 = 0 points

Project made by Piotr Leja
