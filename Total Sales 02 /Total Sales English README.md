
# Title: Total Sales
The main goal of this dashboard is to pay attention on total sales of products. Compare it in periods of time and show what sells best.
Database: Adventureworks2017

# Backend
Preparation of views in SQL to optimise data before Power BI import.

Views :
* Dim Category ( simple view with product categories)
* Dim country ( Usage of "Union all" for connecting two tables for individual customers (personid) and stores (storeid)
* Facts (combined tables  "Sales order details", "Sales order header" for extraction needed are keys, values and dates. Added "where soh.status = 5 " to take only finalised orders, to avoid incorrect data

# Frontend
Star schema in Power BI, 1 grain =1 order. Tables set in relation 1 -> many

Tables made in Power Bi
* Dim date (Calendar created from minimum orderdate to maximum date)
* Kpi measures( All Kpi measure formulas gathered in one area )


# Used visualisations

Power Bi Kpi:
* Total Sales ( Total sales)
* Total Sales Year-Over-Year% ( measure shows % change in comparison with period one year ago)
* Average Order Value ( Average value of unit order)
* Order Count (Total amount of orders)

Used visuals:

* Year and Monthly filters
* Line chart ( Shows total sales trend in yearly comparison. Is independent of the monthly slicer
* Pie chart ( Shows participation of different categories in total sales)
* Treemap ( Gives informations which country have the most products bought)
* Table with TOP N filter ( Shows top 20 most profitable products. Gives information about customers' interests



# What I Learned in this project

By making this dashboard, I learn how to do Views in SQL, and how to keep all measures in one area.
I realised also what a "Grain" is and how important proper planning of tables in SQL on the beginning, and avoid problems with
duplications later on in Power Bi. I know new terms like "Backend", "Frontend", and "Mockup". I realised how the data model should be built, and
how table facts should look (only IDs and calculations). I also found a very helpful website to get matching icons https://www.flaticon.com/search

Made by Piotr Leja
