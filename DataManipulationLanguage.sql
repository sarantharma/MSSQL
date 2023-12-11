BEGIN TRY
    BEGIN TRANSACTION

USE ShopDB;

SELECT * FROM Products WHERE ProductName = 'Smartphone';

-- Update the price of Smartphone to 450.00
UPDATE Products SET Price = 450.00 WHERE ProductName = 'SmartPhone';

SELECT * FROM OrderDetails WHERE OrderDetailsID = 121;

-- Delete the order detail of id number 121
DELETE FROM OrderDetails WHERE OrderDetailsID = 121;

COMMIT
END TRY
BEGIN CATCH

SELECT
    ERROR_NUMBER() AS ErrorNumber,
    ERROR_STATE() AS ErrorState,
    ERROR_SEVERITY() AS ErrorSeverity,
    ERROR_PROCEDURE() AS ErrorProcedure,
    ERROR_LINE() AS ErrorLine,
    ERROR_MESSAGE() AS ErrorMessage;

    IF @@TRANCOUNT > 0
        ROLLBACK
END CATCH