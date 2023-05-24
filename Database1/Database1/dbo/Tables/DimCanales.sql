CREATE TABLE [dbo].[DimCanales] (
    [idCanal]   CHAR (2)       NOT NULL,
    [nom_canal] NVARCHAR (500) NOT NULL,
    CONSTRAINT [PK_Canales] PRIMARY KEY CLUSTERED ([idCanal] ASC)
);

