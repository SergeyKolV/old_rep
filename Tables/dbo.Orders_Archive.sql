CREATE TABLE [dbo].[Orders_Archive] (
  [OrderID] [int] NOT NULL,
  [OrderDate] [datetime] NOT NULL,
  [CustomerID] [int] NOT NULL,
  [Amount] [decimal](10, 2) NOT NULL,
  CONSTRAINT [PK_Orders_Archive] PRIMARY KEY CLUSTERED ([OrderDate], [OrderID]) ON [PS_Orders_Date] ([OrderDate])
)
ON [PS_Orders_Date] ([OrderDate])
GO