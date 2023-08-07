CREATE TABLE Customers (
    CustomerID VARCHAR2(255) PRIMARY KEY,
    CompanyName VARCHAR2(255),
    ContactName VARCHAR2(255),
    ContactTitle VARCHAR2(255),
    Phone VARCHAR2(20),
    Fax VARCHAR2(20)
);

CREATE TABLE FullAddress (
    FullAddressID NUMBER PRIMARY KEY,
    CustomerID VARCHAR2(255),
    Address VARCHAR2(255),
    City VARCHAR2(255),
    Region VARCHAR2(255),
    PostalCode VARCHAR2(20),
    Country VARCHAR2(255),
    CONSTRAINT fk_FullAddress_Customers
        FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Orders (
    CustomerID VARCHAR2(255),
    EmployeeID VARCHAR2(255),
    OrderDate DATE,
    RequiredDate DATE,
    ShippedDate DATE,
    ShipVia NUMBER,
    Freight NUMBER,
    ShipName VARCHAR2(255),
    ShipAddress VARCHAR2(255),
    ShipCity VARCHAR2(255),
    ShipRegion VARCHAR2(255),
    ShipPostalCode VARCHAR2(20),
    ShipCountry VARCHAR2(255),
    PRIMARY KEY (CustomerID, OrderDate),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
