# Crowdfunding ETL Analysis

### Project 2 - Group 1

Group Members: Andrea Aguilar, Sukhi Kaur, Dolly Low, Alpha Osita, Erik Tostado, Khoi Tran

## Overview 
In this project, a database of 1,000 sample projects from a crowdfunding platform was explored to build an ETL pipeline. Python and Pandas were employed for data extraction and transformation. The resulting data was then stored as CSV files, which were used to design an ERD and table schema. Finally, the CSV files data were loaded into a PostgreSQL database. 

## Languages/ Tools: 
- Python
- Pandas
- NumPy
- QuickDBD
- SQL
- PostgreSQL
- pgAdmin 

## DataFrames Creation 
DataFrames Configuration Code: [Jupyter Notebook File](ETL_Mini_Project_AAguilar_SKaur_DLow_AOsita_ETostado_KTran.ipynb)

### Category
**Created a Category DataFrame with the following columns:**
- A "category_id" column that is numbered sequential form 1 to the length of the number of unique categories.
- A "category" column that has only the categories.

Exported the DataFrame as a `category.csv` CSV file.

### SubCategory 
**Created a SubCategory DataFrame with the following columns:**
- A "subcategory_id" column that is numbered sequential form 1 to the length of the number of unique subcategories.
- A "subcategory" column that has only the subcategories. 

Exported the DataFrame as a `subcategory.csv` CSV file.

### Campaign
**Created a Campaign DataFrame with the following columns:**
- The "cf_id" column.
- The "contact_id" column.
- The “company_name” column.
- The "blurb" column is renamed as "description."
- The "goal" column.
- The "goal" column is converted to a `float` datatype.
- The "pledged" column is converted to a `float` datatype. 
- The "backers_count" column. 
- The "country" column.
- The "currency" column.
- The "launched_at" column is renamed as "launch_date" and converted to a datetime format. 
- The "deadline" column is renamed as "end_date" and converted to a datetime format.
- The "category_id" with the unique number matching the “category_id” from the category DataFrame. 
- The "subcategory_id" with the unique number matching the “subcategory_id” from the subcategory DataFrame.
- And, create a column that contains the unique four-digit contact ID number from the `contact.xlsx` file.
 
Exported the DataFrame as a `campaign.csv` CSV file.

### Contacts 
**Created a Contacts DataFrame with the following columns:**
- A column named "contact_id"  that contains the unique number of the contact person.
- A column named "first_name" that contains the first name of the contact person.
- A column named "last_name" that contains the first name of the contact person.
- A column named "email" that contains the email address of the contact person

Exported the DataFrame as a `contacts.csv` CSV file.

## Database Creation 
Database Table Schema Code: [SQL File](crowdfunding_db_schema.sql)

An Entity-Relationship Diagram (ERD) was created using QuickDBD, and a database schema was generated for database loading. Subsequently, the CSV files were imported to populate the database.
