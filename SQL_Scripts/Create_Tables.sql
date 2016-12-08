--Script that creates the tables used for
--the Recipe Repository App
CREATE TABLE recipe_name(
	recipe_id int NOT NULL AUTO_INCREMENT,
	recipe_name VARCHAR(128) NOT NULL,
	recipe_category VARCHAR(32) NOT NULL,
    prep_time VARCHAR(16),
    cook_time VARCHAR(16),
    temp VARCHAR(16),
    yeild VARCHAR(32),
	PRIMARY KEY(recipe_id)
);

CREATE TABLE equipment(
	recipe_id int,
    equipment VARCHAR(64) NOT NULL,
    FOREIGN KEY (recipe_id) REFERENCES recipe_name(recipe_id)
);
	
CREATE TABLE ingredients(
	recipe_id int,
    ingredient_value VARCHAR(128) NOT NULL,
    units VARCHAR(16),
    FOREIGN KEY(recipe_id) REFERENCES recipe_name(recipe_id)
);


CREATE TABLE steps(
	recipe_id int,
	steps VARCHAR(8192) NOT NULL,
	FOREIGN KEY (recipe_id) REFERENCES recipe_name(recipe_id)
);