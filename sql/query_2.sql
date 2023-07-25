SELECT SalesOffice.Office_Number, SalesOffice.Location, Employee.Employee_ID, Employee.Employee_Name
FROM SalesOffice
LEFT JOIN Employee ON SalesOffice.Office_Number = Employee.Office_Number;