CREATE TABLE [dbo].[ApiSecrets] (
    [Expiration]    DATETIME2 (7)   NULL,
    [Id]            INT             IDENTITY (1, 1) NOT NULL,
    [Description]   NVARCHAR (1000) NULL,
    [Value]         NVARCHAR (2000) NULL,
    [Type]          NVARCHAR (250)  NULL,
    [ApiResourceId] INT             NOT NULL,
    CONSTRAINT [PK_ApiSecrets] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ApiSecrets_ApiResources_ApiResourceId] FOREIGN KEY ([ApiResourceId]) REFERENCES [dbo].[ApiResources] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ApiSecrets_ApiResourceId]
    ON [dbo].[ApiSecrets]([ApiResourceId] ASC);

