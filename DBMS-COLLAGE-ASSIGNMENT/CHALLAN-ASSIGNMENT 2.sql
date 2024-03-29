create DATABASE challan_drive;
USE challan_drive;

CREATE TABLE CHALLAN_HEADER(
challan_id INT PRIMARY KEY,
client_id INT,
challan_date DATE,
total_amount DECIMAL
);
CREATE TABLE CHALLAN_DETAILS(
detail_id INT PRIMARY KEY,
challan_id INT,
product_id INT, 
quantity INT, 
amount DECIMAL,
FOREIGN KEY(challan_id) REFERENCES CHALLAN_HEADER(challan_id)
);

INSERT INTO CHALLAN_HEADER VALUES(1,101,'2024-01-10',500.00),(2,102,'2024-01-11',750.00),(3,103,'2024-01-12',300.00);
INSERT INTO CHALLAN_DETAILS VALUES(1, 1, 201, 2, 200.00), (2, 1, 202, 3, 300.00), (3, 2, 203, 1, 150.00), (4, 3, 204, 5, 250.00);



