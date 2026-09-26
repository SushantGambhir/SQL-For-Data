CREATE TABLE VendorPayments (
    VendorId INT PRIMARY KEY,
    VendorName VARCHAR(100),
    Yearly DECIMAL(10,2),
    HalfYearly DECIMAL(10,2),
    Quaterly DECIMAL(10,2),
    Monthly DECIMAL(10,2)
);

INSERT INTO VendorPayments (VendorId, VendorName, Yearly, HalfYearly, Quaterly, Monthly)
VALUES
(1, 'xyz company', 20000.00, NULL, NULL, NULL),
(2, 'abc express', NULL, 10000.00, NULL, NULL),
(3, 'door step delivery', NULL, NULL, 6000.00, NULL),
(4, 'tcl telecom', NULL, NULL, NULL, 1200.00);


SELECT * FROM VendorPayments;

