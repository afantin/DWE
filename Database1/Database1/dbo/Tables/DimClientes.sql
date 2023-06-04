CREATE TABLE [dbo].[DimClientes] (
    [idCliente]      INT            NOT NULL,
    [idUbicacion]    BIGINT         NULL,
    [Nombre]         NVARCHAR (MAX) NOT NULL,
    [Apellido]       NVARCHAR (MAX) NOT NULL,
    [Fecha_Registro] DATETIME       NOT NULL,
    [genero]         CHAR (1)       NOT NULL,
    [fechaNac]       DATE           NULL,
    [titulo]         NVARCHAR (100) NULL,
    [ingreso]        MONEY          NULL,
    [moneda]         CHAR (30)      NULL,
    [mail]           NVARCHAR (100) NULL,
    [fecha_desde] DATE NULL, 
    [fecha_hasta] DATE NULL, 
    CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED ([idCliente] ASC)
);

