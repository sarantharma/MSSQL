BEGIN TRY
    BEGIN TRANSACTION

USE ShopDB;


--Create a  new table without data 
SELECT *
INTO NewCustomerTable1
FROM Customers
WHERE 1 = 0;


--Create a new table with data
SELECT *
INTO NewCustomerTable2
FROM Customers


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