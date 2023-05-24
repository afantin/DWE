CREATE TABLE [dbo].[DimOperaciones] (
    [idOperacion]  CHAR (10)      NOT NULL,
    [idOperatoria] CHAR (10)      NOT NULL,
    [descripcion]  NVARCHAR (500) NOT NULL,
    [id]           INT            IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_DimOperaciones_1] PRIMARY KEY CLUSTERED ([id] ASC)
);

