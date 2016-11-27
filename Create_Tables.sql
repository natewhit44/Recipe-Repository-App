--Create tables
CREATE TABLE recipe_name(
	recipe_id int NOT NULL AUTO_INCREMENT,
	recipe_name VARCHAR(128) NOT NULL,
	recipe_category VARCHAR(128) NOT NULL,
	PRIMARY KEY(recipe_id)
);

--Alter table to add column
ALTER TABLE recipe_name
ALTER COLUMN recipe_category VARCHAR NOT NULL;
	
	
CREATE TABLE ingredients(
	ingredient_id int NOT NULL AUTO_INCREMENT,
	ingredient_name VARCHAR(1024) NOT NULL,
	PRIMARY KEY(ingredient_id)
);


CREATE TABLE steps(
	recipe_id int,
	steps VARCHAR(2048) NOT NULL,
	FOREIGN KEY (recipe_id) REFERENCES recipe_name(recipe_id)
);

CREATE TABLE recipeIngredients(
	recipe_id int,
	ingredient_id int,
	ingredients_value VARCHAR(1024) NOT NULL,
	units int NOT NULL,
	FOREIGN KEY (recipe_id) REFERENCES recipe_name(recipe_id),
	FOREIGN KEY (ingredient_id) REFERENCES ingredients(ingredient_id)
);

CREATE TABLE units(
	unit_id int NOT NULL AUTO_INCREMENT,
	unit_detial VARCHAR(32) NOT NULL,
	PRIMARY KEY(unit_id)
);

--Load values into units tables
INSERT INTO units (unit_detial)
VALUES('c'); --cup

INSERT INTO units (unit_detial)
select 'g'
union
select 'kg'
union
select 'L'
union
select 'lb'
union
select 'ml'
union
select 'oz'
union
select 'pt'
union
select 'tsp'
union
select 'Tbsp'
union
select 'pc'
union
select 'pcs';

--Add current recipe names and categories to recipe_name
INSERT INTO recipe_name (recipe_name, recipe_category)
select 'Taco Salad', 'Mexican'
union
select 'Awesome Easy Burritos', 'Mexican'
union
select 'Chickpea Falafel Burgers', 'Greek'
union
select 'Greek Pita Pizza', 'Greek'
union
select 'Ginger-Garlic Shrimp', 'Asian'
union
select 'Vietnamese Noodle Soup', 'Asian'
union
select 'Chocolate Milk', 'Beverages'
union
select 'Basic Vanilla Shake', 'Beverages'
union
select 'Basic Scrambled Eggs', 'Breakfast'
union
select 'French Toast', 'Breakfast'
union
select 'Quick Cherry Crisp', 'Dessert'
union
select 'Rocky Road Parfaits', 'Dessert'
union
select 'Herb Salad with Veggies', 'Salad'
union
select 'Avocado and Blue Cheese Salad', 'Salad'

