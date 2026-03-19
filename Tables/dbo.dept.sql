CREATE TABLE [dbo].[dept] (
  [deptno] [decimal](2) NOT NULL,
  [dname] [varchar](14) NULL,
  [loc] [varchar](13) NULL,
  CONSTRAINT [PK_dept_deptno] PRIMARY KEY CLUSTERED ([deptno]),
  CONSTRAINT [UK_dept_deptno] UNIQUE ([deptno])
)
ON [PRIMARY]
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Номер філії', 'SCHEMA', N'dbo', 'TABLE', N'dept', 'COLUMN', N'deptno'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Назва філії', 'SCHEMA', N'dbo', 'TABLE', N'dept', 'COLUMN', N'dname'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Місто, в якому розташована філія', 'SCHEMA', N'dbo', 'TABLE', N'dept', 'COLUMN', N'loc'
GO