CREATE TABLE [dbo].[emp] (
  [empno] [decimal](4) NOT NULL,
  [ename] [varchar](10) NULL,
  [job] [varchar](9) NULL,
  [mgr] [decimal](4) NULL,
  [hiredate] [date] NULL,
  [sal] [decimal](7, 2) NULL,
  [comm] [decimal](7, 2) NULL,
  [deptno] [decimal](2) NULL,
  CONSTRAINT [PK_emp_empno] PRIMARY KEY CLUSTERED ([empno]),
  CONSTRAINT [UK_emp_empno] UNIQUE ([empno])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[emp]
  ADD CONSTRAINT [FK_emp_deptno] FOREIGN KEY ([deptno]) REFERENCES [dbo].[dept] ([deptno])
GO

ALTER TABLE [dbo].[emp]
  ADD CONSTRAINT [FK_emp_mgr] FOREIGN KEY ([mgr]) REFERENCES [dbo].[emp] ([empno])
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Табельний номер', 'SCHEMA', N'dbo', 'TABLE', N'emp', 'COLUMN', N'empno'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Прізвище', 'SCHEMA', N'dbo', 'TABLE', N'emp', 'COLUMN', N'ename'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Посада', 'SCHEMA', N'dbo', 'TABLE', N'emp', 'COLUMN', N'job'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Табельний номер керівника', 'SCHEMA', N'dbo', 'TABLE', N'emp', 'COLUMN', N'mgr'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Дата прийняття на роботу', 'SCHEMA', N'dbo', 'TABLE', N'emp', 'COLUMN', N'hiredate'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Заробітна плата', 'SCHEMA', N'dbo', 'TABLE', N'emp', 'COLUMN', N'sal'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Коментар', 'SCHEMA', N'dbo', 'TABLE', N'emp', 'COLUMN', N'comm'
GO

EXEC sys.sp_addextendedproperty N'MS_Description', N'Номер філії', 'SCHEMA', N'dbo', 'TABLE', N'emp', 'COLUMN', N'deptno'
GO