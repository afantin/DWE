CREATE TABLE [dbo].[DimUbicaciones] (
    [id]          INT            NOT NULL,
    [banco]       NVARCHAR (255) NULL,
    [idLocacion]  BIGINT         NULL,
    [Ciudad]      NVARCHAR (MAX) NULL,
    [idProvincia] NVARCHAR (1)   NULL,
    [Provincia]   NVARCHAR (MAX) NULL,
    [Pais]        NVARCHAR (MAX) CONSTRAINT [DF_DimUbicaciones_Pais] DEFAULT ('Argentina') NULL,
    CONSTRAINT [PK_DimUbicaciones] PRIMARY KEY CLUSTERED ([id] ASC)
);

