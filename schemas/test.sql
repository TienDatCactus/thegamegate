Select Products.[CategoryID], Products.[Price] , Games.[LanguageID]
             from Products join Games on Products.ProductID = Games.ProductID
			 where Products.Price between 40 and 1000


			SELECT *
FROM Products
JOIN Games ON Products.ProductID = Games.ProductID
WHERE Products.Price BETWEEN 0 AND 100
AND Games.LanguageID = 10
AND Products.CategoryID = 2;

	
select * from UsersAccount
select * from Users
SELECT UserID FROM UsersAccount WHERE Email = 'user451@example.com'

SELECT * FROM Users WHERE UserID = (SELECT UserID FROM UsersAccount WHERE Email = 'user1032@example.com')

SELECT * FROM UsersAccount WHERE Email='user1032@example.com' AND Password='password1032'

SELECT UserID FROM UsersAccount WHERE Email = 'user1032@example.com'

SELECT * FROM Users
SELECT * FROM UserPayments WHERE UserID = 5

SELECT * FROM Users WHERE UserID = (SELECT UserID FROM UsersAccount WHERE Email = 'user451@example.com')





select * from ProductCategories

select * from ProductSubcategories
select * from Products
select * from Games

SELECT * FROM Products WHERE ProductID = 2
SELECT * FROM UserPayments WHERE UserID = 5
select pc.Name from ProductSubcategories pc join Games ga 
on pc.SubcategoryID = ga.SubcategoryID
where ga.ProductID = 2
select * from Language

select  la.LanguageID , la.[Language] from Language la join Games ga on la.LanguageID = ga.LanguageID where ga.ProductID = 5
select pc.CategoryID, pc.Name from ProductCategories pc join Games ga on pc.CategoryID = ga.CategoryID where ga.ProductID = 5

SELECT * FROM Games WHERE ProductID = 5