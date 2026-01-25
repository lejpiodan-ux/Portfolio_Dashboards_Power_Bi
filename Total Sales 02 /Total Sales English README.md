
# Title : Total Sales
Main goal of this dashboard is to pay attention on total sales of products. Compare it in periods of time and show what sells best.
Database: Adventureworks2017

# Backend
Preparation of views in sql to optimization data before power bi import.

Views :
* Dim Category ( simple view with product categories)
* Dim country ( Usage of "Union all" for connecting two tables for individual customers (personid) and stores (storeid)
* Facts (combined tables  "Sales order details", "Sales order header" for extraction needed is keys, values and dates. Added "where soh.status = 5 " to take only finalised orders, to avoid incorrect data

# Frontend
Star schema in Power bi, 1 grain =1 order. Tables set in relation 1 -> many

Tables made in Power Bi
* Dim date (Calendar created from minimum orderdate to maximum date)
* Kpi measures( All Kpi measure formulas gathered in one area )


# Used visualizations

Power Bi Kpi:
* Total Sales ( Total sales)
* Total Sales Year-Over-Year% ( measure shows % change in comparison with period one year ago)
* Average Order Value ( Average value of unit order)
* Order Count (Total amount of orders)

Used visuals:

* Year and Monthly filters
* Line chart ( Shows total sales trend in yearly comparison. Is independent by monthly slicer
* Pie chart ( Shows participation of different categories in total sales)
* Treemap ( Gives informations which country have the most products bought)
* Table with TOP N filter ( Shows top 20 most profitable products. Gives informations about customers interest



# What I Learned in this project

By making this dashboard I learn how to do Views in Sql, and how to keep all measures in one area.
I learned also what is a "Grain" and how important is proper planning of tables in sql on the beginnings, and avoid problems with
duplicaions later on in Power Bi. I know new terms like "Backend","Frontend","Mockup". I realised how data model should be build, and
how table facts should look (only id's and calculations). I Found out also very helpful internet site to getting matching icons https://www.flaticon.com/search

Made by Piotr Leja
