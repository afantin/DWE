CREATE TABLE [dbo].[DimDate] (
    [DateKey]              INT           NOT NULL,
    [FullDateAlternateKey] DATE          NOT NULL,
    [DateString]           VARCHAR (10)  NULL,
    [DayOfWeek]            TINYINT       NOT NULL,
    [DayOfWeekName]        NVARCHAR (10) NOT NULL,
    [DayOfMonth]           TINYINT       NOT NULL,
    [DayOfYear]            SMALLINT      NOT NULL,
    [WeekOfYear]           TINYINT       NOT NULL,
    [MonthName]            NVARCHAR (10) NOT NULL,
    [MonthOfYear]          TINYINT       NOT NULL,
    [CalendarQuarter]      TINYINT       NOT NULL,
    [CalendarYear]         SMALLINT      NOT NULL,
    [IsWeekend]            BIT           CONSTRAINT [DF_DimDate_IsWeekend] DEFAULT ((0)) NOT NULL,
    [IsLeapYear]           BIT           CONSTRAINT [DF_DimDate_IsLeapYear] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED ([DateKey] ASC)
);

