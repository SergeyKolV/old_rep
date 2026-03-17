CREATE TABLE [dbo].[actor_copy1] (
  [actor_id] [int] IDENTITY,
  [first_name] [varchar](45) NOT NULL,
  [last_name] [varchar](45) NOT,
  [last_update] [datetime] NOT NULL CONSTRAINT [DC_actor_copy_last_update] DEFAULT (getdate()),
  [11111111111111111] [varchar](50) NULL,
  PRIMARY KEY NONCLUSTERED ([actor_id])
)
ON [PRIMARY]
GO
