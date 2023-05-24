CREATE TABLE [dbo].[FactTransacciones] (
    [idTransaccion]          BIGINT     IDENTITY (1, 1) NOT NULL,
    [monto]                  FLOAT (53) NOT NULL,
    [cantidad]               INT        NOT NULL,
    [idCliente]              INT        NOT NULL,
    [idUbicacionTransaccion] INT        NOT NULL,
    [idCanal]                CHAR (2)   NOT NULL,
    [idOperacion]            INT        NOT NULL,
    [idTiempo]               INT        NOT NULL,
    [idRespuesta]            INT        NOT NULL,
    CONSTRAINT [PK_Transacciones] PRIMARY KEY CLUSTERED ([idTransaccion] ASC),
    CONSTRAINT [FK_FactTransacciones_Operatoria] FOREIGN KEY ([idOperacion]) REFERENCES [dbo].[DimOperaciones] ([id]),
    CONSTRAINT [FK_FactTransacciones_Respuesta] FOREIGN KEY ([idRespuesta]) REFERENCES [dbo].[DimRespuesta] ([id]),
    CONSTRAINT [FK_Transacciones_Canales] FOREIGN KEY ([idCanal]) REFERENCES [dbo].[DimCanales] ([idCanal]),
    CONSTRAINT [FK_Transacciones_Clientes] FOREIGN KEY ([idCliente]) REFERENCES [dbo].[DimClientes] ([idCliente]),
    CONSTRAINT [FK_Transacciones_Terminal] FOREIGN KEY ([idUbicacionTransaccion]) REFERENCES [dbo].[DimUbicaciones] ([id]),
    CONSTRAINT [FK_Transacciones_Tiempo] FOREIGN KEY ([idTiempo]) REFERENCES [dbo].[DimDate] ([DateKey])
);

