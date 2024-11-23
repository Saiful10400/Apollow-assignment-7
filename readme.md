## Question 1: What is PostgreSQL?
#### PostgresSql is a database management system which is invented in 1986 at University of California.It is a free and opensorce cros platform database management solution. which have many in build facility and functionality such as in build types,advance indexing facility,json and nosql support etc.As it's free so it is cost effective and also have great community support.Also one can build scaleable solution with it.Now days it is useing in IOT,Web-app,Gis and many other field.


## Question 2: What is the purpose of a database schema in PostgreSQL?
#### Schema is a logical structure of a Database records.It maintain the consistancy of records also it give the access controll to the user.It give a semless maintanance experience.it Inprove database query efeciency by organiseing records.In a multi-tenancy application, data remains isolated despite using the same database.


## Question 3: Explain the primary key and foreign key concepts in PostgreSQL.
#### IN relational database primary and foreign key concepts are very crucial.the are useally used for making relation between 2 table.I am explaining both of them in the down bellow

*Primay key: This is used for make a unique identification of a record.It can't be null or duplicate.
*Foreign key: This is used for make relaionship.It is used as reference key in the other table.it can be duplicate.it is a identifier of another collection records.


## Question 4: What is the difference between the VARCHAR and CHAR data types?
#### Varchar and char are use for store character data. the bot have minor difference in functionality but it's impect is signeficant. such as varchar is use for variable length string while CHAR is use for fixed length string.In CHAR if character length is less then the declarated length,it add extra padding to fill up the gap. where VARCHAR don't put extra padding to fillup them.As CHAR has fixed lenght, so in query it is slightly faster compare to VARCHAR.


## Question 5: Explain the purpose of the WHERE clause in a SELECT statement.
#### Where clause in SELECT statement is used for apply condition while retrieveing data.As a result unnecessay data will not be retrieve and query will be faster,effecient and cost effective.


## Question 6: What are the LIMIT and OFFSET clauses used for?
#### LIMIT and OFFSET are combinedly used for getting a separet portion of data from the table while working on a big table.Here Limit helps to set the limit that how much data willbe retrieved at a time. and OFFSET used for give a restict on top the serial of a portion of data.


## Question 7: How can you perform data modification using UPDATE statements?
#### UPDATE statement let to update on top of a tables single or multiple records.WHERE statement give the prevelegence to apply condition.and SET statement give me to make changes in multiple or single column.
#### **Example**:

```sql
SELECT * FROM students
SET student_name='Saiful Islam'
WHERE student_id=1
```

## Question 8: Explain the GROUP BY clause and its role in aggregation operations.
#### The GROUP BY clause in SQL is used to arrange identical data into groups. It is often used in conjunction with aggregate functions (like COUNT(), SUM(), AVG(), MAX(), MIN()) to perform calculations on each group of data.The GROUP BY clause helps me summarize large sets of data by grouping rows that have the same values in specified columns, allowing me to perform aggregation on each group.

