

## Title Sales Performance 01
Used Database: Northwind

 ## Problem Description
   The Dashboard is designed to answer key questions:
   * What is current sales and its dynamics
   * Which products and categories are generating best incomes
   * Which employee are generating the highest number of orders
   * What does on-time delivery look like?
   * What is the change of sales month over month
   * Are customers coming back ?
   * How fast orders are done

## Visualizations

   Dashboard contains:
   * 2 Slicers (Month and Year)
   * 7 KPI card measures
   * Line chart month-over-month
   * Column bar chart "Top 5 Categories by Total Sales
   * Table "Top 5 employee by Total Order Count"

### KPI Cards

 * Revenue - Total Sales
 * Average Order Value - Average value of single order
 * Gross Margin % - Gross Margin %
 * Gross Profit - Gross profit
 * On-Time-Delivery  percent of orders delivered on time
 * Customer Retention - Company Capability to retain customers
 * Average Lead Time Days - Average time of delivery realization

### Diagrams and Charts

##### Month-over-Month
Showed by line chart to show monthly sales, dynamics in that period of time and 
change in trend, after filtering by "Year" slicer
Chart MOM is independent from slicer "Month". 

##### Top 5 categories by Total Sales
   Returns which categories are best selling in profit.
   In chart area also works filter "TOP N" by "Total Sales". The reason is to return best 5 scores for 5 best categories
   Chart is integrated with slicers "Month" and "year", to quickly verify the best sales results for individual month and      year.
   
### Top 5 employee by Total Order Count
 Is containing below columns:
 * Employee name
 * Total Sales
 * Order Count
 * Monthly Order Change %
 * Total Order Count

 Let to fast check 5 best sellers by number of orders. 
 Colum Monthly Order change presents coloristic percent change in reference to number of orders in the previous month. 
 Column Total Order Count presents whole quantity of orders for each employee from since the beginning of its existence      in the company. Chart is working with filter Top N as TOP 5 for column " Employee name"

## Info

   All measures use the COALESCE function to avoid BLANK values, ensuring correct results under different filters.

   For Time Intelligence to work properly, I created a new Calendar table. This table allows flexible work with dates and      makes it easier to control the date context.

   I created a new column in the Order Details table called Standard Cost to calculate the Gross Profit measure.
   Standard Cost = Unit Price * 0.5

   All charts and KPI measures have the option to filter other visualizations turned off, so reading data from the charts      is clearer and less chaotic.

Dashboard made by Piotr leja
 
