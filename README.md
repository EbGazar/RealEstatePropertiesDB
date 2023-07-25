# Real Estate Firm's Property Listings Database

## Description:

This project aims to `develop a database system to manage property listings for a real estate firm`. The database will empower the firm to efficiently store, organize, and access information related to sales offices, employees, properties available for sale, and property ownership details. The project's objective is to streamline the real estate firm's operations, improve data management, and enhance client services within the highly dynamic and competitive real estate market.

## Project Deliverables:

The project will produce the following deliverables:

#### 1. Database Schema:

* `Designing a comprehensive entity-relationship (E-R) diagram that accurately represents the relationships between the various entities (SalesOffice, Employee, Property, Owner, PropertyOwnership) and their attributes.`

#### 2. SQL Database Implementation:

* `Developing SQL scripts to create the necessary database tables based on the defined schema.`

#### 3. Sample Data Insertion:

* `Providing optional SQL scripts to insert sample data into the database for testing and demonstration purposes.`

#### 4. ER Diagram Visualization:

* `Creating a visual representation of the E-R diagram in the form of an image (ERD.png) to showcase the database structure.`

## Database Design:

The Database Design phase will consist of these steps: 

#### - ERD Design: `Create an Entity Relationship Diagram (ERD) based on the problem definition.`

#### - Table Mapping: `Map ERD entities and attributes to database tables.`

#### - Schema Creation: `Define table structure with column names, data types, and keys.`

#### - Table Creation: `Physically create the tables in the database.`

## Requirements of Case Study:

* The firm has a number of sales offices in several states, Attributes of sales office include Office_Number and Location.
  
* Each sales office is assigned one or more employees, Attributes of employee include Employee_ID and Employee_Name, An employee must be assigned to only one sales office.
  
* For each sales office, there is always one employee assigned to manage that office.
  
* The firm lists property for sale, Attributes of property include Property_ID and Location, Components of Location include Address, City, State, and Zip_Code.
  
* Each property must be listed with one (and only one) of the sales offices, A sales office may have any number of properties listed, or may have no properties listed.
  
* Each property may have zero or more owners, Attributes of owners are Owner_ID and Owner_Name, An owner may own one or more properties, The system stores the percent owned by each owner in each property.

## ERD Model Design:

To create the ERD models for the above case studies, we will follow these steps:

* Understand the problem definition and requirements for each case study.
  
* Identify the entities and their attributes based on the provided information.
  
* Determine the relationships between the entities.
  
* Design the ERD using standard notation and symbols.

---

### Entities and Attributes:

* SalesOffice
  * Office_Number (Primary Key): Unique identification number of the sales office.
  * Location: Location of the sales office.

* Employee
  * Employee_ID (Primary Key): Unique identification number of the employee.
  * Employee_Name: Name of the employee.
  * Office_Number (Foreign Key): References the Office_Number in the SalesOffice table.

* Property
  * Property_ID (Primary Key): Unique identification number of the property.
  * Location: Address, City, State, and Zip_Code of the property.
  * Office_Number (Foreign Key): References the Office_Number in the SalesOffice table.

* Owner
  * Owner_ID (Primary Key): Unique identification number of the owner.
  * Owner_Name: Name of the owner.

 ##	<div align="center"> Entity Relationship Diagram </div>
<p align="center"> <img src="https://github.com/EbGazar/RealEstatePropertiesDB/assets/62806731/45d4a89e-8556-4012-8696-427b9c338fbd"  alt="animated" /></p>


## Create SQL Tables:

```sql
CREATE TABLE SalesOffice (
  Office_Number INT PRIMARY KEY,
  Location VARCHAR(255)
);

CREATE TABLE Employee (
  Employee_ID INT PRIMARY KEY,
  Employee_Name VARCHAR(255),
);

CREATE TABLE Property (
  Property_ID INT PRIMARY KEY,
  Location VARCHAR(255),
);

CREATE TABLE Owner (
  Owner_ID INT PRIMARY KEY,
  Owner_Name VARCHAR(255)
);

```


## SQL Queries

Here's an example of queries on the database.


```sql
SELECT Property.Property_ID, Property.Location
FROM Property
INNER JOIN SalesOffice ON Property.Office_Number = SalesOffice.Office_Number
WHERE SalesOffice.Location = 'New York';
```

```sql
SELECT SalesOffice.Office_Number, SalesOffice.Location, Employee.Employee_ID, Employee.Employee_Name
FROM SalesOffice
LEFT JOIN Employee ON SalesOffice.Office_Number = Employee.Office_Number;
```

and that's it :)
