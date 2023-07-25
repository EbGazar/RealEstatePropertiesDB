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
  Owner_Name VARCHAR(255)
);
