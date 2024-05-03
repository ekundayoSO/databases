# Databases

Database system (engine) includes database handling programs such as manipulating data and manipulating database structure and users etc.

-   Relation databases (It contains tables for analysis)
    -   sql language
-   Non-Relational databases (No tables are involved -eg JSON, XML)
    -   NoSql (for example mongoDB)


## DataStorage usage

`client application`  
    | (API, for example fetch)
------------------------------  (backend)
`datastorage layer`  
    | (API, for example SQL)
`database engine`  
    | (API, read/write disk etc.)
`disk storage` (permanent storage)


## Relational Database

### **person**-table
`columns`
id | firstname | lastname | age |-
:---:|---|---|:---:|---
1|'Matt'|'River'|20 |`row`
2|'Mary'|'River'|25 |`row`
3|'Matt'|'Jones'|30 |`row`


## Compared to csv
```csv
id,firstname,lastname,age
1,'Matt','River',20
2,'Mary','River',25
3,'Matt','Jones',30 
```

## create table with sql
```sql
create table person(
    id integer not null primary key,
    firstname varchar(20) not null,
    lastname varchar(30) not null,
    age integer
);
```
```sql
insert into person (id, firstname, lastname, age)
values (1,'Matt','River',20);
```



