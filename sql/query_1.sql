SELECT Property.Property_ID, Property.Location
FROM Property
INNER JOIN SalesOffice ON Property.Office_Number = SalesOffice.Office_Number
WHERE SalesOffice.Location = 'New York';