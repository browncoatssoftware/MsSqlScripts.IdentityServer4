CREATE TABLE [dbo].[ClientSecrets] (
    [Expiration]  DATETIME2 (7)   NULL,
    [Id]          INT             IDENTITY (1, 1) NOT NULL,
    [Description] NVARCHAR (2000) NULL,
    [Value]       NVARCHAR (2000) NOT NULL,
    [Type]        NVARCHAR (250)  NULL,
    [ClientId]    INT             NOT NULL,
    CONSTRAINT [PK_ClientSecrets] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_ClientSecrets_Clients_ClientId] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Clients] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_ClientSecrets_ClientId]
    ON [dbo].[ClientSecrets]([ClientId] ASC);

