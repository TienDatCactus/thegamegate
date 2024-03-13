-- Users Table
CREATE TABLE dbo.Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY ,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Telephone VARCHAR(15),
    Address NVARCHAR(MAX),
);

CREATE TABLE UsersAccount (
    UserID INT IDENTITY(1,1) PRIMARY KEY ,
    Email VARCHAR(255),
    Password VARCHAR(255)
);

-- User Payments Table
CREATE TABLE dbo.UserPayments (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    CardNumber nvarchar(255),
    ExpireDate DATE,
    FOREIGN KEY (UserID) REFERENCES dbo.Users(UserID)
);

-- Admin Types Table
CREATE TABLE dbo.AdminTypes (
    AdminTypeID INT PRIMARY KEY IDENTITY(1,1),
    AdminType VARCHAR(MAX),
    Permissions VARCHAR(MAX)
);

-- Admin Users Table
CREATE TABLE dbo.AdminUsers (
    AdminUserID INT PRIMARY KEY IDENTITY(1,1),
    AdminTypeID INT,
    UserName VARCHAR(255),
    Password TEXT,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Telephone INT,
    Address NVARCHAR(MAX),
    Email VARCHAR(255),
    FOREIGN KEY (AdminTypeID) REFERENCES dbo.AdminTypes(AdminTypeID)
);

-- Product Categories Table
CREATE TABLE dbo.ProductCategories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(MAX)
);

-- Product Subcategories Table
CREATE TABLE dbo.ProductSubcategories (
    SubcategoryID INT PRIMARY KEY IDENTITY(1,1),
    CategoryID INT,
    Name VARCHAR(MAX),
    FOREIGN KEY (CategoryID) REFERENCES dbo.ProductCategories(CategoryID)
);

-- Products Table
CREATE TABLE dbo.Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(MAX),
    Description VARCHAR(MAX),
    CategoryID INT,
    InStock INT,
    Price DECIMAL(10, 2),
    ImagePath VARCHAR(MAX),
    FOREIGN KEY (CategoryID) REFERENCES dbo.ProductCategories(CategoryID)
);

-- Games Table
CREATE TABLE dbo.Games (
    ProductID INT PRIMARY KEY,
    ReleaseDate DATE,
    Publisher NVARCHAR(MAX),
    Developer NVARCHAR(MAX),
    LanguageID INT, 
    CategoryID INT,
    SubcategoryID Float,
    Rate FLOAT,
    FOREIGN KEY (ProductID) REFERENCES dbo.Products(ProductID),
    FOREIGN KEY (CategoryID) REFERENCES dbo.ProductCategories(CategoryID),
    FOREIGN KEY (SubcategoryID) REFERENCES dbo.ProductSubcategories(SubcategoryID),
    FOREIGN KEY (LanguageID) REFERENCES dbo.Language(LanguageID)
);

-- Cart Table
CREATE TABLE dbo.Carts (
    CartID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT,
    Total FLOAT,
    ShippingFee INT,
    FOREIGN KEY (UserID) REFERENCES dbo.Users(UserID)
);

-- Cart Items Table
CREATE TABLE dbo.CartItems (
    CartItemID INT PRIMARY KEY IDENTITY(1,1),
    CartID INT,
    ProductID INT,
    Quantity INT,
    PurchasePrice DECIMAL(10, 2),
    FOREIGN KEY (CartID) REFERENCES dbo.Carts(CartID),
);

-- Language Table 
CREATE TABLE dbo.Language (
	LanguageID INT PRIMARY KEY,
	Language varchar(255)
)