INSERT INTO SalesOffice (Office_Number, Location) VALUES
(1, 'New York'),
(2, 'Los Angeles'),
(3, 'Chicago');

INSERT INTO Employee (Employee_ID, Employee_Name, Office_Number) VALUES
(101, 'John Smith', 1),
(102, 'Jane Doe', 2),
(103, 'Mike Johnson', 3);

INSERT INTO Property (Property_ID, Location, Office_Number) VALUES
(1001, '123 Main St, New York, NY 10001', 1),
(1002, '456 Oak Ave, Los Angeles, CA 90001', 2),
(1003, '789 Maple Rd, Chicago, IL 60001', 3);

INSERT INTO Owner (Owner_ID, Owner_Name) VALUES
(10001, 'Alice Brown'),
(10002, 'Bob Green');

INSERT INTO PropertyOwnership (Property_ID, Owner_ID, Percent_Owned) VALUES
(1001, 10001, 50),
(1001, 10002, 50),
(1002, 10001, 100),
(1003, 10002, 100);
