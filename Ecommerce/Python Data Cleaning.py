import pandas as pd
# Downloading file from Kaggle and uploading it to Jupyter Notebook

file = r'C:\Users\48514\Downloads\messy_ecommerce_sales_data.csv'
table = pd.read_csv(file, sep=',')

# Setting core informations I need to start working with data

pd.set_option("display.max_columns",40)
pd.set_option("display.max_rows",40)
table.columns = table.columns.str.strip()
print(f' Unique Records: \n\n {table.iloc[:,7].unique()}\n')
print(f' Column Names: \n\n{table.columns}\n')
print(f' Amount of empty records per column: \n {table.isna().sum()}\n')
print(f' Rows Amount: {table.shape[0]}\n Column Amount: {table.shape[1]}\n')
for col in table.columns:
    ndupl = table[col].duplicated().sum()
    print(f"Column '{col}': {ndupl} duplicates")

# Checking where are duplicates

duplicate_rows = table[table.iloc[:,0].duplicated()]
display(duplicate_rows)
duplicated_records = table[table['ID'] == 142]
display(duplicated_records)

# Data Cleaning:
# Removing wrong symbols from columns: 'PRICE', 'QUANTITY' to enable numerical calculations

table['Price'] = table['Price'].str.replace('[\$,-]','',regex=True)
table['Quantity']= table['Quantity'].str.replace('[\-]','',regex=True)
table['Price'] = pd.to_numeric(table['Price'],errors = 'coerce')
table['Quantity'] = pd.to_numeric(table['Quantity'],errors = 'coerce')

# Create New Column 'New_Total' to correct if original column "Total" is correct

table['New_Total'] = table['Quantity'] * table['Price']

# Comparing old column'Total' and new column 'New_Total'

table['Total'] = table['Total'].round(2)
table = table[(table['Total']== table['New_Total'])|(table['New_Total'].isna())]

# Removing duplicates and deleting old 'Total' column

table = table.drop_duplicates(subset = ['ID'])
table = table.drop('Total', axis =1 )

# Changing type to date in column 'Order_Date'
table['Order_Date']= pd.to_datetime(table['Order_Date'],errors = 'coerce').dt.date

# Changing wrong writed Category names by using capitalize and replace
table['Category']= table['Category'].str.capitalize().replace('Electronic','Electronics')
display(table.sample(30))
table.describe()

# Result check to assure that everything is done right
print(f' Amount of rows: {table.shape[0]}\n Amount of columns: {table.shape[1]}\n')
print(f' Unique records: \n\n {table.iloc[:,7].unique()}\n')

# Grouping 'New_Total' by Category and calculating amounts of products in each Category

table_grouped = table.groupby('Category',).agg(Total_Category_Sum = ('New_Total','sum'),
                                               Amount_of_product_per_Category = ('Category','count')).copy().reset_index()
table_grouped = table_grouped.sort_values(by = ['Total_Category_Sum'],ascending = False)
display(table_grouped)

# Saving cleaned and grouped tables to excel file
 file_end = r'C:\Users\48514\Downloads\messy_ecommerce_sales_data_result.xlsx'
 with pd.ExcelWriter(file_end) as writer:
    table.to_excel(writer,sheet_name = 'Cleaned_Data',index = False)
    table_grouped.to_excel(writer,sheet_name = 'Category_Sum_and_count',index = False)
