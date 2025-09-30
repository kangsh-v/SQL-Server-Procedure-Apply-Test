CREATE OR ALTER PROCEDURE sp_HelloWorld
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 'Apply Procedure!' AS Message,
           GETDATE() AS CurrentTime; -- 현재 시간 출력 합니다
END
GO
