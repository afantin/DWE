CREATE TABLE [dbo].[DimRespuesta] (
    [idRespuesta]  CHAR (2)    NULL,
    [idOperatoria] CHAR (10)   NOT NULL,
    [cod_resp]     CHAR (1000) NOT NULL,
    [descripcion]  CHAR (1000) NOT NULL,
    [id]           INT         IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_DimRespuesta_1] PRIMARY KEY CLUSTERED ([id] ASC)
);

