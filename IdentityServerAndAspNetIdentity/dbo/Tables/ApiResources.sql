CREATE TABLE [dbo].[ApiResources] (
    [Id]          INT             IDENTITY (1, 1) NOT NULL,
    [Enabled]     BIT             NOT NULL,
    [Name]        NVARCHAR (200)  NOT NULL,
    [DisplayName] NVARCHAR (200)  NULL,
    [Description] NVARCHAR (1000) NULL,
    CONSTRAINT [PK_ApiResources] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_ApiResources_Name]
    ON [dbo].[ApiResources]([Name] ASC);

