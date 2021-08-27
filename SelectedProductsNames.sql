--Таблица Категории товаров
CREATE TABLE Category (
	id INT IDENTITY(1,1) PRIMARY KEY,
	[Name] NVARCHAR(50) NOT NULL
);

INSERT INTO Category 
VALUES  ('Овощи'),
        ('Фрукты'),
		('Зубочистки');


--Таблица Продукты и ненужное в них
CREATE TABLE Products (
	id INT IDENTITY(1,1) PRIMARY KEY,
	[Name] NVARCHAR(50) NOT NULL
);

INSERT INTO Products 
VALUES  ('Помидор'),
		('Огурец'),
        ('Бананы'),
		('Яблоки'),
		('Зубные Щетки'),
		('Ковырялки'),
		('Табурет'),
		('Ножницы');
    
    
    --Таблица отношений по Id
    CREATE TABLE TableRelation (
	CategoryId  INT not null,
	ProductsId INT not null
);

INSERT INTO TableRelation
VALUES  (1, 1),	(1, 2),	(2, 3), (3, 5), (3, 6)

-- SQL запрос для выбора всех пар «Имя продукта – Имя категории». 
-- Если у продукта нет категорий, то его имя все равно должно выводиться.

SELECT p.name AS Products, cat.name AS Category
FROM Products p
LEFT JOIN TableRelation rel ON p.id = rel.productsid 
LEFT JOIN Category cat ON cat.id = rel.categoryid
