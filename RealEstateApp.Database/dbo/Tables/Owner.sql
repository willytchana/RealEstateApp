CREATE TABLE [dbo].[Owner] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (100) NOT NULL,
    [CreatedDate] DATETIME       NOT NULL,
    CONSTRAINT [PK_Owner] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [IX_Owner] UNIQUE NONCLUSTERED ([Name] ASC)
);

