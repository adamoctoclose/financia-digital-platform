-- V1__create_items.sql (SQL Server / T-SQL)

-- Flyway versioned migrations are usually not idempotent, so no IF EXISTS guard.
-- If you do want a guard, see the optional block below.

CREATE TABLE dbo.Items
(
    Id          INT IDENTITY(1,1) PRIMARY KEY,
    Title       NVARCHAR(200) NOT NULL,
    Description NVARCHAR(MAX) NULL,
    CreatedAt   DATETIME2(3) NOT NULL 
        CONSTRAINT DF_Items_CreatedAt DEFAULT SYSUTCDATETIME()
);

-- Useful (optional) indexes/constraints:
-- CREATE UNIQUE INDEX IX_Items_Title ON dbo.Items(Title);
-- CREATE INDEX IX_Items_CreatedAt ON dbo.Items(CreatedAt);

