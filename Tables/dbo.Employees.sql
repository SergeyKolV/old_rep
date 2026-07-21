CREATE TABLE [dbo].[Employees] (
  [EmployeeID] [int] NOT NULL,
  [FirstName] [nvarchar](50) NOT NULL,
  [LastName] [nvarchar](50) NOT NULL,
  [Department] [nvarchar](50) NOT NULL,
  [Salary] [decimal](10, 2) NOT NULL,
  [json] [text] NULL
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO