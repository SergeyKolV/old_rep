SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_DocumentationTest_2]
(
    @EmployeeID INT,
    @EmployeeName VARCHAR(100) OUTPUT
)
AS
BEGIN
    SET @EmployeeName = 'John Smith';

    RETURN 0;
END
GO