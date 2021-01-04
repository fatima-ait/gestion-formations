
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 12/09/2015 14:53:19
-- Generated from EDMX file: D:\a DATA Fatima\ASP.NET\gestion des formations\gestion des formations\FORMATIONEntities.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [FORMATION];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_FILIEIRE_fonctionnaire1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[FILIEIRE] DROP CONSTRAINT [FK_FILIEIRE_fonctionnaire1];
GO
IF OBJECT_ID(N'[dbo].[FK_Formation__formateurs]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Formation] DROP CONSTRAINT [FK_Formation__formateurs];
GO
IF OBJECT_ID(N'[dbo].[FK_Formation__Tribunal]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Formation] DROP CONSTRAINT [FK_Formation__Tribunal];
GO
IF OBJECT_ID(N'[dbo].[FK_formation_fonctionnaire_fonctionnaire]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[formation_fonctionnaire] DROP CONSTRAINT [FK_formation_fonctionnaire_fonctionnaire];
GO
IF OBJECT_ID(N'[dbo].[FK_formation_fonctionnaire_Formation_]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[formation_fonctionnaire] DROP CONSTRAINT [FK_formation_fonctionnaire_Formation_];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[administrateur]', 'U') IS NOT NULL
    DROP TABLE [dbo].[administrateur];
GO
IF OBJECT_ID(N'[dbo].[FILIEIRE]', 'U') IS NOT NULL
    DROP TABLE [dbo].[FILIEIRE];
GO
IF OBJECT_ID(N'[dbo].[fonctionnaire]', 'U') IS NOT NULL
    DROP TABLE [dbo].[fonctionnaire];
GO
IF OBJECT_ID(N'[dbo].[formateurs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[formateurs];
GO
IF OBJECT_ID(N'[dbo].[Formation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Formation];
GO
IF OBJECT_ID(N'[dbo].[formation_fonctionnaire]', 'U') IS NOT NULL
    DROP TABLE [dbo].[formation_fonctionnaire];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Tribunal]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tribunal];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'administrateur'
CREATE TABLE [dbo].[administrateur] (
    [login] varchar(50)  NOT NULL,
    [mot_d_passe] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'FILIEIRE'
CREATE TABLE [dbo].[FILIEIRE] (
    [ID_tribunal] nchar(10)  NOT NULL,
    [SOM] nchar(10)  NOT NULL,
    [nom] varchar(50)  NULL
);
GO

-- Creating table 'fonctionnaire'
CREATE TABLE [dbo].[fonctionnaire] (
    [SOM] nchar(10)  NOT NULL,
    [nom_f] varchar(50)  NULL,
    [prenom_f] varchar(50)  NULL,
    [adresse] varchar(50)  NULL,
    [poste] varchar(50)  NULL,
    [date_embauche] datetime  NULL,
    [lieu_naissance] varchar(50)  NULL,
    [date_naissance] datetime  NULL,
    [id_formation] nchar(10)  NULL,
    [entité] varchar(50)  NULL,
    [tribunal] varchar(255)  NULL
);
GO

-- Creating table 'formateurs'
CREATE TABLE [dbo].[formateurs] (
    [NOM] varchar(50)  NULL,
    [prenom] varchar(50)  NULL,
    [matricule_form] nchar(10)  NOT NULL,
    [grade] varchar(50)  NULL
);
GO

-- Creating table 'Formation'
CREATE TABLE [dbo].[Formation] (
    [id_formation] nchar(10)  NOT NULL,
    [matricule_form] nchar(10)  NULL,
    [date_debut] datetime  NULL,
    [date_fin] datetime  NULL,
    [nom_for] varchar(50)  NULL,
    [SOM] nchar(10)  NULL,
    [lieu] varchar(50)  NULL,
    [id_tribunal] nchar(10)  NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'Tribunal'
CREATE TABLE [dbo].[Tribunal] (
    [ID_tribunal] nchar(10)  NOT NULL,
    [ville] varchar(50)  NOT NULL,
    [adresse] varchar(255)  NOT NULL,
    [téléphone] char(12)  NOT NULL
);
GO

-- Creating table 'formation_fonctionnaire'
CREATE TABLE [dbo].[formation_fonctionnaire] (
    [fonctionnaire_SOM] nchar(10)  NOT NULL,
    [Formation_id_formation] nchar(10)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [login], [mot_d_passe] in table 'administrateur'
ALTER TABLE [dbo].[administrateur]
ADD CONSTRAINT [PK_administrateur]
    PRIMARY KEY CLUSTERED ([login], [mot_d_passe] ASC);
GO

-- Creating primary key on [ID_tribunal], [SOM] in table 'FILIEIRE'
ALTER TABLE [dbo].[FILIEIRE]
ADD CONSTRAINT [PK_FILIEIRE]
    PRIMARY KEY CLUSTERED ([ID_tribunal], [SOM] ASC);
GO

-- Creating primary key on [SOM] in table 'fonctionnaire'
ALTER TABLE [dbo].[fonctionnaire]
ADD CONSTRAINT [PK_fonctionnaire]
    PRIMARY KEY CLUSTERED ([SOM] ASC);
GO

-- Creating primary key on [matricule_form] in table 'formateurs'
ALTER TABLE [dbo].[formateurs]
ADD CONSTRAINT [PK_formateurs]
    PRIMARY KEY CLUSTERED ([matricule_form] ASC);
GO

-- Creating primary key on [id_formation] in table 'Formation'
ALTER TABLE [dbo].[Formation]
ADD CONSTRAINT [PK_Formation]
    PRIMARY KEY CLUSTERED ([id_formation] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [ID_tribunal] in table 'Tribunal'
ALTER TABLE [dbo].[Tribunal]
ADD CONSTRAINT [PK_Tribunal]
    PRIMARY KEY CLUSTERED ([ID_tribunal] ASC);
GO

-- Creating primary key on [fonctionnaire_SOM], [Formation_id_formation] in table 'formation_fonctionnaire'
ALTER TABLE [dbo].[formation_fonctionnaire]
ADD CONSTRAINT [PK_formation_fonctionnaire]
    PRIMARY KEY NONCLUSTERED ([fonctionnaire_SOM], [Formation_id_formation] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [SOM] in table 'FILIEIRE'
ALTER TABLE [dbo].[FILIEIRE]
ADD CONSTRAINT [FK_FILIEIRE_fonctionnaire1]
    FOREIGN KEY ([SOM])
    REFERENCES [dbo].[fonctionnaire]
        ([SOM])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FILIEIRE_fonctionnaire1'
CREATE INDEX [IX_FK_FILIEIRE_fonctionnaire1]
ON [dbo].[FILIEIRE]
    ([SOM]);
GO

-- Creating foreign key on [matricule_form] in table 'Formation'
ALTER TABLE [dbo].[Formation]
ADD CONSTRAINT [FK_Formation__formateurs]
    FOREIGN KEY ([matricule_form])
    REFERENCES [dbo].[formateurs]
        ([matricule_form])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Formation__formateurs'
CREATE INDEX [IX_FK_Formation__formateurs]
ON [dbo].[Formation]
    ([matricule_form]);
GO

-- Creating foreign key on [id_tribunal] in table 'Formation'
ALTER TABLE [dbo].[Formation]
ADD CONSTRAINT [FK_Formation__Tribunal]
    FOREIGN KEY ([id_tribunal])
    REFERENCES [dbo].[Tribunal]
        ([ID_tribunal])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Formation__Tribunal'
CREATE INDEX [IX_FK_Formation__Tribunal]
ON [dbo].[Formation]
    ([id_tribunal]);
GO

-- Creating foreign key on [fonctionnaire_SOM] in table 'formation_fonctionnaire'
ALTER TABLE [dbo].[formation_fonctionnaire]
ADD CONSTRAINT [FK_formation_fonctionnaire_fonctionnaire]
    FOREIGN KEY ([fonctionnaire_SOM])
    REFERENCES [dbo].[fonctionnaire]
        ([SOM])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Formation_id_formation] in table 'formation_fonctionnaire'
ALTER TABLE [dbo].[formation_fonctionnaire]
ADD CONSTRAINT [FK_formation_fonctionnaire_Formation]
    FOREIGN KEY ([Formation_id_formation])
    REFERENCES [dbo].[Formation]
        ([id_formation])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_formation_fonctionnaire_Formation'
CREATE INDEX [IX_FK_formation_fonctionnaire_Formation]
ON [dbo].[formation_fonctionnaire]
    ([Formation_id_formation]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------