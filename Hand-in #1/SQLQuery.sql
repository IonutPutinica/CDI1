CREATE SCHEMA "Orders";

CREATE Table "F_Sales" (

"EmployeeKey" INT,
"ProductKey" INT,
"CustomerKey" INT,
"PaymentKey" INT,
"DateKey" INT,
"Amount" INT,
"Total" INT,
"TotalWithDiscount" INT,
CONSTRAINT fk_sales_Employee FOREIGN KEY("EmployeeKey") REFERENCES "D_Employee"("EmployeeKey"),
CONSTRAINT fk_sales_Date FOREIGN KEY("DateKey") REFERENCES "D_Date"("DateKey"),
CONSTRAINT fk_sales_Product FOREIGN KEY("ProductKey") REFERENCES "D_Product"("ProductKey"),
CONSTRAINT fk_sales_Customer FOREIGN KEY("CustomerKey") REFERENCES "D_Customer"("CustomerKey")
);

CREATE Table "D_Customer" (
"CustomerKey" SERIAL PRIMARY KEY,
"Name" VARCHAR(255) NOT NULL,
"Address" VARCHAR(255),
"PhoneNumber" VARCHAR(255)
);

CREATE Table "D_Employee" (
"EmployeeKey" SERIAL PRIMARY KEY,
"Name" VARCHAR(255) NOT NULL, 
"Title" VARCHAR(255) NOT NULL,
"Address" VARCHAR(255) NOT NULL,
"PhoneNumber" VARCHAR(255) NOT NULL
);

CREATE Table "D_Product" (
"ProductKey" SERIAL PRIMARY KEY,
"Name" VARCHAR(255),
"UnitPrice" DOUBLE PRECISION,
"Type" VARCHAR(255),
"Discount" DOUBLE PRECISION
);

CREATE Table "D_Date" (
"DateKey" SERIAL Primary Key,
"Min" INTEGER,
"Hour" INTEGER,
"Day" INTEGER,
"Month" INTEGER,
"Year" INTEGER
);

CREATE Table "D_Employee" (
"EmployeeKey" SERIAL PRIMARY KEY,
"Name" VARCHAR(255),
OrderID VARCHAR(255)
);