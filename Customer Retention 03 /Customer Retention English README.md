# Customer Retention Project
# Contents page

* [Backend](#backend)
* [Frontend](#frontend)
* [Used_visualizations](#used-visualizations)
* [Business Insights](#business-insights)
* [What I learned in this project](#what-i-learned-in-this-project)
* [Additional Informations](#additional-Informations)


The main objective of this project was to highlight which individual customers make less frequent shopping in the company.
Used Database: Adventureworks2017

# Backend
Preparation of views in SQL and connection names and surnames of customers. Add a new view in SQL "Fact2"
which contains the days betwen last and previous customer order.

Combining tables in Power Querry "Facts" and "Fact2" to add a column contains quantity of days between the last and previous order in a single table with "Left Outer Join". I did it by adding an index for each row of order.

Views:
* Dim geo (Information about the customer's country)
* Dim Individual customers (Table with name and surname of each customer)
* Facts (Customer id, orderdates and selling scores) main fact table
* Fact2 (Table containing days between the last and previous customer order, and also customer id)


# Frontend

Star schema in Power Bi 1 grain - 1 customer order

<img src="Customer%20Retention%20Model.png" alt="Model Preview" width="400">

Tables and columns created in Power Bi:

Calendar table:
  - Containing column with dates from 01.01.2011 to 31.12.2014
  - Year
  - Verbal name of the month
  - Number of months
  - Number of quarters
  - Number of days
  - Name of the day
  - Last day ofthe  month for each order date

And different tables: 

 Collection containing all measures used in the dashboard


 Table "Dim Individual Customers"
  updated with columns:
  * "First order date month" (Column with last day of month for first order - needed to group data in cohort analysis)
  * "Last order date" (Column with date of last order)


  Fact table containing new columns:
  * "180 days from Last Order" Presenting date (01.01.2014), which is 180 days earlier thanthe  last order in the database (30.06.2014). It's needed to define if the customer has ordered in the last 180 days (Stable) or the customer hasn't made any orders in the last 180 days (Churned)
  * Column "Churn Status": Churned/Stable
  * Column “Days_Between_Last_and_previous_order” showing the number of days between the last and previous order of the customer
  * "RFM score" - A column that calculates the total amount of the customer's contribution to the company based on the points awarded for 3 categories: Recency + Total sales + Order amount ( The bigger score, the more valuable customer)
  * Column "Months after" shows how many months after the current customer's next purchase. It's needed for Cohort analysis

# Used visualisations
* Name of the dashboard
* Filtering slicer with customer name filter and search bar option
* Card including information about the customer id
* 6x Kpi cards containing information about:
   * Last order date for selected customer
   * Customer status
   * Total sum of purchase that the customer had to spend on each order ( with taxes and freight)
   * Recency (days from last order)
   * RFM Score
   * Quantity of customer orders
For quantitive Kpi are also have icons symbolising every kpi. Download from https://www.flaticon.com

- Gauge presenting percent of customers whose total purchase sum of products is less than for selected customer.
Its showing post-purchase interference of customer compared to other customers.

- Line and stacked Column chart - "Sales and order quantity by country" (presenting the number of orders and the total sum of customer orders in different countries)

- Line chart - "Customer Base Growth: New vs Active (180 days)" Based on how many customers had their next order in the next 180 days since their current order (green line), and the number of new customers who made their first order (red line)
  
- Matrix- "Cohort Analysis for new customers in 2013" - Analysis measures the retency indicator for customers the company gained in 2013. Each row is representing group of customers who made their first order in each month. Columns from 1-12 shows which percent of customers who gained earlier is coming back, making next orders in the company. Visualisation is used to highlight groups of customers who are making orders more often or rarely.


# Business Insights

Chart "Sales and order quantity by country" presents that the biggest contribution has customers from the United States, both in terms of the number of orders and the total amount invested.
In the chart, we can observe that customers are investing the least  in Canada and that Germany is the country with the least order quantity.

Based on "Customer Base Growth ...", we can find out that in 2013, there was a significant strengthening of the upward trend in the number of new customers, and "old customers" began to shop more often, which is shown by the green line.

Based on Cohort Analysis, we can observe that  customers who purchased in months ( January - May) are coming back more often in November and December. This is evidenced by values, e.g. 22% in December for customers from February. 
It can be assumed that customers make repeat purchases on average every 7-8 months.


# What I learned in this project

By preparing this dashboard, I learned how to use visualisations like "matrix', "gauge"(tachometer), "cards+".
I learned how to acquire new visualisations when the basic ones programmed in power bi interface are not enough.
For icon colorization I learned how to use the program Affinity. Thanks to this, I could visualise icons and then export to Power Bi. I found out about the page https://coolors.co. Which helps me with selecting the appropriate colour palette.
I learned new functions in Power Bi:
"Remove filters", which works very similarly to "all(table)"
"Eomonth" is responsible for showing the last date of the month.
Also, I learnd what is the meaning of symbols like "&&" or "||".
The hardest part was for me cohort analysis, which I was doing for the first time. I learned also learned that I can change the size od dashboard.

# Additional Informations

RFM Score punctation:


Total Sales points: 

* x > 5000 = 3 points
* x > 1000 = 2 points
* x >= 100 = 1 point
* x < 100 = 0 points

Recency points

* x > 0 or x <90 = 3 points . There are two conditions because there are a lot of scores with 0 days, which means thatthe  customer didn't make a second order. Based on this, points are distributed incorrectly

* x >= 90 = 2 points
* x > 180 = 1 point
* x > 360 = 0 points

Order quantity points

* x > 8 = 3 points
* x > 4 = 2 points
* x > 2 = 1 point
* x < 2 = 0 points

Project made by Piotr Leja
