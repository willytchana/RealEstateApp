CREATE TABLE [dbo].[Property] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [Reference]   NVARCHAR (5)   NOT NULL,
    [Name]        NVARCHAR (100) NOT NULL,
    [Description] NVARCHAR (MAX) NULL,
    [Price]       FLOAT (53)     NOT NULL,
    [CreatedDate] DATETIME       NOT NULL,
    [OwnerId]     INT            NOT NULL,
    CONSTRAINT [PK_Property] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Property_Owner] FOREIGN KEY ([OwnerId]) REFERENCES [dbo].[Owner] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [IX_Property] UNIQUE NONCLUSTERED ([Reference] ASC)
);

