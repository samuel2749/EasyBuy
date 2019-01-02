
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/27/2018 23:32:19
-- Generated from EDMX file: C:\CUST\EasyBuy\EasyBuy\Models\EasyBuy.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EasyBuy];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_OrderItem_ToOrder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderItems] DROP CONSTRAINT [FK_OrderItem_ToOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderItem_ToProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderItems] DROP CONSTRAINT [FK_OrderItem_ToProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_Product_ToSupplier]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Product_ToSupplier];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[OrderItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrderItems];
GO
IF OBJECT_ID(N'[dbo].[Orders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Orders];
GO
IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products];
GO
IF OBJECT_ID(N'[dbo].[Suppliers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Suppliers];
GO
IF OBJECT_ID(N'[EasyBuyModelStoreContainer].[Users]', 'U') IS NOT NULL
    DROP TABLE [EasyBuyModelStoreContainer].[Users];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'OrderItems'
CREATE TABLE [dbo].[OrderItems] (
    [Id] int  NOT NULL,
    [OrderId] nvarchar(max)  NOT NULL,
    [ProductId] int  NOT NULL,
    [ProductName] nvarchar(50)  NOT NULL,
    [ProductUnitPrice] decimal(12,2)  NOT NULL,
    [ProductDiscountPrice] decimal(12,2)  NULL,
    [ProductPic] nvarchar(250)  NOT NULL,
    [ProductDescription] nvarchar(max)  NOT NULL,
    [CreateDate] datetime  NULL
);
GO

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [Id] nvarchar(max)  NOT NULL,
    [CustomerId] nvarchar(max)  NOT NULL,
    [TotalAmount] decimal(12,2)  NULL,
    [Status] int  NULL,
    [UpdateDate] datetime  NULL,
    [CreateDate] datetime  NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [Id] int  NOT NULL,
    [SupplierId] int  NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [UnitPrice] decimal(12,2)  NOT NULL,
    [DiscountPrice] decimal(12,2)  NULL,
    [Pic] nvarchar(250)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [IsHot] int  NOT NULL,
    [IsPromo] int  NOT NULL,
    [Total] int  NOT NULL,
    [UpdateDate] datetime  NULL,
    [CreateDate] datetime  NULL
);
GO

-- Creating table 'Suppliers'
CREATE TABLE [dbo].[Suppliers] (
    [Id] int  NOT NULL,
    [Name] nvarchar(50)  NULL,
    [City] nchar(40)  NULL,
    [Area] nchar(40)  NULL,
    [Address] nvarchar(250)  NULL,
    [Phone] nchar(30)  NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] nvarchar(max)  NOT NULL,
    [Name] nvarchar(50)  NOT NULL,
    [Email] nvarchar(250)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [City] nvarchar(50)  NULL,
    [Area] nvarchar(50)  NULL,
    [Address] nvarchar(250)  NULL,
    [UpdateDate] datetime  NULL,
    [CreateDate] datetime  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'OrderItems'
ALTER TABLE [dbo].[OrderItems]
ADD CONSTRAINT [PK_OrderItems]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Suppliers'
ALTER TABLE [dbo].[Suppliers]
ADD CONSTRAINT [PK_Suppliers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [OrderId] in table 'OrderItems'
ALTER TABLE [dbo].[OrderItems]
ADD CONSTRAINT [FK_OrderItem_ToOrder]
    FOREIGN KEY ([OrderId])
    REFERENCES [dbo].[Orders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderItem_ToOrder'
CREATE INDEX [IX_FK_OrderItem_ToOrder]
ON [dbo].[OrderItems]
    ([OrderId]);
GO

-- Creating foreign key on [ProductId] in table 'OrderItems'
ALTER TABLE [dbo].[OrderItems]
ADD CONSTRAINT [FK_OrderItem_ToProduct]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderItem_ToProduct'
CREATE INDEX [IX_FK_OrderItem_ToProduct]
ON [dbo].[OrderItems]
    ([ProductId]);
GO

-- Creating foreign key on [CustomerId] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_Order_ToUsers]
    FOREIGN KEY ([CustomerId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_ToUsers'
CREATE INDEX [IX_FK_Order_ToUsers]
ON [dbo].[Orders]
    ([CustomerId]);
GO

-- Creating foreign key on [SupplierId] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_Product_ToSupplier]
    FOREIGN KEY ([SupplierId])
    REFERENCES [dbo].[Suppliers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_ToSupplier'
CREATE INDEX [IX_FK_Product_ToSupplier]
ON [dbo].[Products]
    ([SupplierId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------