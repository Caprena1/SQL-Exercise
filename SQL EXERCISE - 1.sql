-- find all products --
 SELECT * 
 FROM products;

-- find all products that cost $1400
 SELECT * 
 FROM products p
 WHERE p.Price = 1400;

-- find all products that cost $11.99 or $13.99
 SELECT *
 FROM products p
 WHERE p.Price = '11.99' OR p.Price = '13.99';

-- find all products that do NOT cost 11.99 - using NOT
 SELECT * 
 FROM products p
 WHERE NOT p.Price = '11.99';

-- find  all products and sort them by price from greatest to least
 SELECT * 
 FROM products p
 ORDER BY p.Price DESC;

-- find all employees who don't have a middle initial
 SELECT * 
 FROM employees e
 WHERE e.MiddleInitial IS NULL;

-- find distinct product prices
 SELECT DISTINCT p.Price
 FROM products p;

-- find all employees whose first name starts with the letter ‘j’
 SELECT *
 FROM employees e
 WHERE e.FirstName LIKE 'j%';

-- find all Macbooks --
 SELECT p.Name 
 FROM products p
 ORDER BY p.Name = 'Macbooks';
 
 -- find all products that are on sale
 SELECT p.Name, p.Price, p.OnSale
 FROM products p
 ORDER BY p.Price = p.OnSale;

-- find the average price of all products --
 SELECT  
 AVG(Price) as 'Average Price' 
 FROM products p;

-- find all Geek Squad employees who don't have a middle initial --
 SELECT e.FirstName, e.MiddleInitial, LastName, e.Title
 FROM employees e
 ORDER BY e.Title ='Geek Squad' AND e.MiddleInitial = NULL;

-- find all products from the products table whose stock level is in the range  -- of 500 to 1200. Order by Price from least to greatest. **Try this with the -- between keyword** 
 SELECT p.Price, p.StockLevel
 FROM products p 
 ORDER BY p.StockLevel = p.Price BETWEEN 500 AND 1200;
 