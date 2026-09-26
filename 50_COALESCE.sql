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

SELECT COALESCE(NULL,1, NULL, 41, 25);
-- The output shall be 1, COALESCE function returns first not NULL value

-- Problems statement:
-- We have different amount frequency based on vendor, so what do we do if we want yearly data for all?
SELECT VendorId, VendorName,
COALESCE(Yearly,HalfYearly*2,Quaterly*4,Monthly*12) AS Rate
FROM VendorPayments;