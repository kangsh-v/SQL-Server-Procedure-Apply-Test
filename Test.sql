CREATE OR ALTER PROCEDURE sp_HelloWorld
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 'Apply Procedure!' AS Message,
           GETDATE() AS CurrentTime;
END
GO
