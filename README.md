# Looking for Suspicious Transactions
### Table of Contents
## INTRODUCTION
This project built to  apply some SQL skills to analyze historical credit card transactions and consumption patterns in order to identify possible fraudulent transactions

### Technologies

* [pandas  1.3.4](https://pandas.pydata.org/)
* [Plotly 5.4.0](https://plotly.com/python/)

* [hvplot 0.7.3](https://hvplot.holoviz.org/)
* [sqlalchemy   0.12.2](https://www.sqlalchemy.org/)
* [Python 3.7.11](https://www.python.org/dev/peps/pep-0008/)
* [PgAdmin 6.1 ](https://www.pgadmin.org/)
* [Quick Database Diagrams](https://www.quickdatabasediagrams.com)

 `` This project contains two main files `` 
 
 * [PgAdmin.files](https://github.com/malkawenedal/HOMEWORK-UNIT_7/tree/main/pgAdmin.files) 
  
   Contains (image file of  ERD ,Sql file of  table schema and Sql file of queries.)  
 * [Starter _Files](https://github.com/malkawenedal/HOMEWORK-UNIT_7/tree/main/Starter_Files)  
 Contains ( jupyter Notebook containing visual data analysis and Data file)


## Data Modeling 
This part aims to create an entity relationship diagram (ERD) by inspecting the provided CSV files.

The **chalenge** was "  figuring  out how many tables i should create, as well as what kind of relationships i need to define among the tables. "

![ERD](Starter_Files\Data\DBD.PNG)


### Data Analysis
#### Part 1:
after joining the card column from creditcard file with card column from transaction file then joining cardholder_id column from cardholder file with cardholder_id fro credit_card file, i was able to get  a this  dataframe . 
![DF_1](Starter_Files\Data\DF_1.PNG)  


now, easyly i can define  the transactionn amount for carholder number 2 & 18 to recognize any fraude transaction by plotting them using *hvplot* then combine them in one plot as you see below 

![plot_3](Starter_Files\Data\plot_4.png)  


























