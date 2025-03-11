CREATE TABLE [dbo].[Currency] (
    [id] INT NOT NULL IDENTITY(1,1),
    [date] DATE NOT NULL,
    [symbol] VARCHAR(10) NOT NULL,
    [price] FLOAT NOT NULL,
    CONSTRAINT [Currency_pkey] PRIMARY KEY CLUSTERED ([id])
);


CREATE TABLE [dbo].[Borse] (
    [id] INT NOT NULL IDENTITY(1,1),
    [type] NVARCHAR(20) NOT NULL, -- gold, currency, cryptocurrency
    [date] DATE NOT NULL,
    [time] VARCHAR(5) NOT NULL,
    [symbol] VARCHAR(10) NOT NULL,
    [name] NVARCHAR(50) NOT NULL,
    [price] FLOAT NOT NULL,
    [change_percent] FLOAT NOT NULL,
    [unit] NVARCHAR(20) NOT NULL,
    CONSTRAINT [Borse_pkey] PRIMARY KEY CLUSTERED ([id])
);




ALTER DATABASE Crypto SET SINGLE_USER WITH ROLLBACK IMMEDIATE; 

GO 

ALTER DATABASE Crypto COLLATE arabic_ci_ai ; 

GO 

ALTER DATABASE Crypto SET MULTI_USER; 

GO 



GRANT CONTROL ON DATABASE::[Crypto] TO [hadmin];
GO


USE [Crypto]; -- Switch to the target database
GO

-- Grant all permissions to the user
GRANT CONTROL ON DATABASE::[Crypto] TO [hadmin];
GO
