

## Title Sales Performance 01
Used Database: Northwind

 ## Problem Description
   The Dashboard is designed to answer key questions:
   * What are the current sales and their dynamics
   * Which products and categories are generating the best incomes
   * Which employee is generating the highest number of orders
   * What does on-time delivery look like?
   * What is the change in sales month over month
   * Are customers coming back?
   * How fast orders are done

## Visualizations

   Dashboard contains:
   * 2 Slicers (Month and Year)
   * 7 KPI card measures
   * Line chart month-over-month
   * Column bar chart "Top 5 Categories by Total Sales
   * Table "Top 5 employees by Total Order Count"

### KPI Cards

 * Revenue - Total Sales
 * Average Order Value - Average value of a single order
 * Gross Margin % - Gross Margin %
 * Gross Profit - Gross profit
 * On-Time-Delivery percentage of orders delivered on time
 * Customer Retention - Company Capability to retain customers
 * Average Lead Time Days - Average time of delivery realisation

### Diagrams and Charts

##### Month-over-Month
A line chart to show monthly sales, dynamics in that period of time, and 
change in trend, after filtering by "Year" slicer
Chart MOM is independent of the slicer "Month". 

##### Top 5 categories by Total Sales
   Returns which categories are best-selling in profit.
   In the chart area, the filter "TOP N" by "Total Sales". The reason is to return the best 5 scores for the 5 best categories
   The chart is integrated with slicers "Month" and "Year", to quickly verify the best sales results for individual months and years.
   
### Top 5 employees by Total Order Count
 Is containing below columns:
 * Employee name
 * Total Sales
 * Order Count
 * Monthly Order Change %
 * Total Order Count

 Let's fast check the 5 best sellers by number of orders. 
 Colum Monthly Order change presents coloristic percent change in reference to the number of orders in the previous month. 
 Column Total Order Count presents the total number of orders for each employee since the beginning of their existence 
 in the company. Chart is working with filter Top N as TOP 5 for column " Employee name"

## Info

   All measures use the COALESCE function to avoid BLANK values, ensuring correct results under different filters.

   For Time Intelligence to work properly, I created a new Calendar table. This table allows flexible work with dates and makes it easier to control the date context.

   I created a new column in the Order Details table called Standard Cost to calculate the Gross Profit measure.
   Standard Cost = Unit Price * 0.5

   All charts and KPI measures have the option to filter other visualizations turned off, so reading data from the charts is clearer and less chaotic.

Dashboard made by Piotr Leja
 
