BEGIN;

INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Awesome Easy Burritos', 'Mexican', '20 mins', '30 mins','200-250F','Serves 4-6');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Large Skillet'),
(LAST_INSERT_ID(),'9x13 baking pan');


INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Lean ground beef','1-2 lb'),
(LAST_INSERT_ID(),'Refried beans, with chilies', '15 oz'),
(LAST_INSERT_ID(),'Chunky salsa', '12 oz'),
(LAST_INSERT_ID(),'Shredded cheddar cheese', '1-2 c'),
(LAST_INSERT_ID(),'Onion (opitonial)', '1/2 pc'),
(LAST_INSERT_ID(),'Flour tortillias', '6-8 pcs'),
(LAST_INSERT_ID(),'Shredded Cheddar cheese', '2 c'),
(LAST_INSERT_ID(),'Chopped tomatoes', '1 c'),
(LAST_INSERT_ID(),'Sour cream (for topping)', '1 Tbls');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'Brown the beef in a large skillet until it is ready; drain well when done. At this point, onions can be added if they are desired.'),
(LAST_INSERT_ID(),'Stir in the refried beans and 3/4 of the salsa, leave some for topping, add the cheddar cheese and salt and peper to taste.'),
(LAST_INSERT_ID(),'Let the mixture warm on the stove for a few minutes just to melt the cheese; once the cheese is melted turn off the range.'),
(LAST_INSERT_ID(),'Warm the tortillas a few at a time in the microwave on a plate with a slightly damp paper tower on top.'),
(LAST_INSERT_ID(),'Place 2 ice cream scoop sizes of meat mixture in the middle of the shell, roll up and place seam side down in a lightly buttered 9x13 pan.'),
(LAST_INSERT_ID(),'Once you have rolled them all and placed in pans, brush lightly with butter or margarine. Spread remaining salsa on top (I like to use lots and have some left over if anyone wants to add more). Serve with extra salsa and sour cream.');
COMMIT;




BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Taco Salad', 'Mexican', '10 mins', '30 mins','Medium-high','Serves 4-6');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Large Skillet'),
(LAST_INSERT_ID(),'Large Bowl');


INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Lean ground beef','1 lb'),
(LAST_INSERT_ID(),'Taco seasoning mix', '1.25 oz'),
(LAST_INSERT_ID(),'Chili beans', '16 oz'),
(LAST_INSERT_ID(),'French dressing', '16 oz'),
(LAST_INSERT_ID(),'Iceberg lettuce head', '1 pc'),
(LAST_INSERT_ID(),'Tortilla chips', '14.5 oz'),
(LAST_INSERT_ID(),'Shredded Cheddar cheese', '2 c'),
(LAST_INSERT_ID(),'Chopped tomatoes', '1 c'),
(LAST_INSERT_ID(),'Sour cream', '4 Tbls'),
(LAST_INSERT_ID(),'Prepared salsa', '1/2 c');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'In a large skillet over medium-high heat, brown the ground beef and drain excess fat. Stir in the taco seasoning, chili beans and French-style dressing. Fill the dressing bottle 2/3 full of water and add to the skillet. Bring to a boil, reduce heat and simmer for 15 minutes.'),
(LAST_INSERT_ID(),'Crush the bag of chips, open the bag, and toss the broken chips into a large bowl with the lettuce, cheese and tomatoes. When the meat mixture is done, combine it with the lettuce, tomatoes, chips and mix well. Then, add salsa and sour cream.');
COMMIT;




BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Greek Pita Pizza', 'Greek', '15 mins', '15 mins','350F','Serves 3-4');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Oven'),
(LAST_INSERT_ID(),'Pizza Tray');


INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Pita Bread','3 pcs'),
(LAST_INSERT_ID(),'Feta cheese, crumbled', '2/3 c'),
(LAST_INSERT_ID(),'Garlic cloves, minced', '2 pcs'),
(LAST_INSERT_ID(),'Tomato paste', '2/3 c'),
(LAST_INSERT_ID(),'Oregano', '1 tsp'),
(LAST_INSERT_ID(),'Red onions, finely dices', '3 Tbls'),
(LAST_INSERT_ID(),'Kalamatas olives, diced', '6 pcs'),
(LAST_INSERT_ID(),'Bell pepper', '1 c'),
(LAST_INSERT_ID(),'Parmesan cheese, grated', '3 Tbls');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'Preheat oven to 350F and spray a large baking sheet lightly with cooking spray.'),
(LAST_INSERT_ID(),'Carefully slice one edge of each pita and open to form a pocket.'),
(LAST_INSERT_ID(),'Mix the pita filling ingredients and place in the pockets (about two tablespoons per pocket, and yes, it should be quite thick), spreading it as thin as it will go over the bottom of the pocket to about an inch from the edge.'),
(LAST_INSERT_ID(),'Place the pitas on a baking sheet and spread top evenly with tomato paste, sprinkle with the oregano then top with the remaining pita toppings ending with the parmesan.'),
(LAST_INSERT_ID(),'Bake for 15 minutes or until hot and the green pepper is done.');
COMMIT;


BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Chickpea Falafel Burgers', 'Greek', '15 mins', '10 mins','High','Serves 3-4');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Food processor'),
(LAST_INSERT_ID(),'Mixing bowl'),
(LAST_INSERT_ID(),'Large skillet');


INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Vegetable Oil','1 Tbls'),
(LAST_INSERT_ID(),'Green Onions', '2 pcs'),
(LAST_INSERT_ID(),'Fresh mushrooms', '3/4 c'),
(LAST_INSERT_ID(),'Garlic Cloves', '3 pcs'),
(LAST_INSERT_ID(),'Garbanzo beans', '15.5 oz'),
(LAST_INSERT_ID(),'Fresh cilantro', '1.5 Tbls'),
(LAST_INSERT_ID(),'Fresh parsley', '1.5 tsp'),
(LAST_INSERT_ID(),'Curry powder', '1.5 Tbls'),
(LAST_INSERT_ID(),'Ground cumin', '1/2 tsp'),
(LAST_INSERT_ID(),'Bread crumbs', '1/2 c'),
(LAST_INSERT_ID(),'Egg whites', '2 pcs');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'Heat 1 tablespoon of oil in a large skillet over medium-high heat. Add green onions and mushrooms, and fry until tender, stirring frequently.'),
(LAST_INSERT_ID(),'Combine the garbanzo beans (with liquid) and garlic in the container of a blender or food processor. '),
(LAST_INSERT_ID(),'Blend until smooth, and transfer to a medium bowl. Stir in the mushrooms and onions. Mix in the cilantro, parsley, curry powder and cumin.'),
(LAST_INSERT_ID(),'Add the bread crumbs and egg whites, and mix until thoroughly blended. You can let the mixture sit in the refrigerator to blend flavors at this point, or go on to frying.'),
(LAST_INSERT_ID(),'Heat enough oil to cover the bottom of a large skillet over medium heat. Form the bean mixture into 4 balls, and flatten into patties. Place the burgers in the hot skillet, and fry for about 5 minutes on each side, until nicely browned.');
COMMIT;

BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Ginger-Garlic Shrimp', 'Asian', '5 mins', '10 mins','Medium-high','Serves 4');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Colander'),
(LAST_INSERT_ID(),'Large frying pan');

INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Salt','3/2 tsp'),
(LAST_INSERT_ID(),'Peeled shrimp', '3/2 lbs'),
(LAST_INSERT_ID(),'Vegetable oil', '2 Tbls'),
(LAST_INSERT_ID(),'Slices of peeled ginger', '8 pcs'),
(LAST_INSERT_ID(),'Minced garlic', '3 Tbls'),
(LAST_INSERT_ID(),'Shaohsing rice wine', '3 Tbls'),
(LAST_INSERT_ID(),'Green onions', '4 pcs');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'In a bowl, sprinkle 1 1/2 teaspoons salt over shrimp and mix gently with your hands, about 1 minute. Pour shrimp into a colander and rinse well with cool water.'),
(LAST_INSERT_ID(),'Pour oil into a large frying pan over medium-high heat. Add ginger and garlic and stir until they sizzle, about 30 seconds.'),
(LAST_INSERT_ID(),'Add shrimp and rice wine; stir constantly until shrimp are almost all pink on the outside, about 2 minutes. Add green onions and stir just until shrimp are opaque in the center (cut to test), about 1 minute longer.');
COMMIT;

BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Vietnamese Noodle Soup', 'Asian', '20 mins', '20 mins','High','Serves 4');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Colander'),
(LAST_INSERT_ID(),'Large pot');

INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Rice noodles','8 oz'),
(LAST_INSERT_ID(),'Lean beef sirloin', '12 oz'),
(LAST_INSERT_ID(),'Large onion, halved', '1 pc'),
(LAST_INSERT_ID(),'Ginger unpeeled, halved', '1 pc'),
(LAST_INSERT_ID(),'Low-sodium beef broth', '3 c'),
(LAST_INSERT_ID(),'Star anise pods', '5 pcs'),
(LAST_INSERT_ID(),'Cinnamon stick', '1 pc'),
(LAST_INSERT_ID(),'Scallions', '4 pcs'),
(LAST_INSERT_ID(),'Jalapeno peppers', '2 pcs'),
(LAST_INSERT_ID(),'Fresh cilantro', '1/2 c'),
(LAST_INSERT_ID(),'Fish sauce', '2 Tbls'),
(LAST_INSERT_ID(),'Bean sprouts', '1 c');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'Prepare the rice noodles as the label directs.'),
(LAST_INSERT_ID(),'Meanwhile, place a large pot over high heat. Poke the meat all over with a fork to tenderize it and season with salt and pepper. Sear the meat until charred but still rare, 2 to 3 minutes per side, then transfer to a plate. Add the onion and ginger to the pot; cook about 4 minutes. Add the broth, 3 cups water, the star anise and cinnamon, reduce the heat and simmer about 20 minutes.'),
(LAST_INSERT_ID(),'Meanwhile, thinly slice the scallions and jalapenos (remove seeds for less heat) and tear the cilantro. Thinly slice the meat against the grain. Drain the noodles.'),
(LAST_INSERT_ID(),'Add the fish sauce to the broth and boil 5 minutes. Discard the ginger, star anise and cinnamon stick. Remove and slice the onion. Divide the noodles among 4 bowls; top with the broth, beef, scallions, cilantro, bean sprouts, jalapenos and onion.');

COMMIT;

BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Chocolate Milk', 'Beverages', '5 mins', '0 mins','Ambient','Serves 2');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Blender');

INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Milk','3 c'),
(LAST_INSERT_ID(),'Cocoa powder', '2 Tbls'),
(LAST_INSERT_ID(),'Powder sugar', '2 Tbls'),
(LAST_INSERT_ID(),'Vanilla', '1/2 tsp');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'Pour milk into blender. Add in cocoa, powder sugar, and vanilla. Blend all ingredients until fully incorporated, about 30 seconds.'),
(LAST_INSERT_ID(),'Serve and enjoy!'),
(LAST_INSERT_ID(),'This will last about one week covered in the fridge. (Or the life of the milk)');
COMMIT;

BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Basic Vanilla Shake', 'Beverages', '3 mins', '0 mins','Ambient','Serves 1');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Blender');

INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Milk','1/3 c'),
(LAST_INSERT_ID(),'Premium vanilla ice cream', '10 oz');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'In a blender, combine the milk and ice cream and blend until smooth. Serve immediately.');
COMMIT;

BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Basic Scrambled Eggs', 'Breakfast', '1 mins', '4 mins','Medium-High','Serves 2');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Large skillet');

INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Eggs','4 pcs'),
(LAST_INSERT_ID(),'Milk', '1/4 c'),
(LAST_INSERT_ID(),'Butter', '2 tsp'),
(LAST_INSERT_ID(),'Salt and Pepper', 'To taste');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'Beat eggs, milk, salt and pepper in medium bowl until blended.'),
(LAST_INSERT_ID(),'Heat butter in large nonstick skillet over medium heat until hot. Pour in egg mixture. As eggs begin to set, gently pull the eggs across the pan with a spatula, forming large soft curds.'),
(LAST_INSERT_ID(),'Continue cooking – pulling, lifting and folding eggs – until thickened and no visible liquid egg remains.');
COMMIT;

BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('French Toast', 'Breakfast', '10 mins', '5 mins','High','Serves 4');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Large skillet');

INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Eggs','8 pcs'),
(LAST_INSERT_ID(),'Milk', '1/3 c'),
(LAST_INSERT_ID(),'Ground nutmeg', '1/2 tsp'),
(LAST_INSERT_ID(),'Day-old bread', '8 pcs');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'Beat eggs, milk and nutmeg in shallow dish until blended. Soak 1 bread slice at a time in egg mixture, turning once, letting stand about 1 minute per side.'),
(LAST_INSERT_ID(),'Heat lightly greased large nonstick skillet over high heat until hot.'),
(LAST_INSERT_ID(),'Place as many bread slices in hot pan as will fit in single layer. Immediately reduce heat to medium. Cook until golden brown and no visible liquid egg remains, 2 to 3 minutes per side. Repeat to cook remaining bread. Serve immediately.');
COMMIT;

BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Quick Cherry Crisp', 'Dessert', '8 mins', '12 mins','Medium-high','Serves 4');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Large saucepan'),
(LAST_INSERT_ID(),'Medium mixing bowl');

INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Sugar','1/2 c'),
(LAST_INSERT_ID(),'Cornstarch', '1 Tbls'),
(LAST_INSERT_ID(),'Pitted tart red cherries', '4 c'),
(LAST_INSERT_ID(),'Crumbled shortbread cookies', '1 c'),
(LAST_INSERT_ID(),'Melted butter', '2 Tbls'),
(LAST_INSERT_ID(),'Chopped pecans or almonds', '1/4 c');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'In a small bowl, combine sugar and cornstarch. In a large saucepan, sprinkle cornstarch mixture over cherries; stir to combine. Cook and stir over medium heat about 10 minutes or until thickened and bubbly. Cook and stir for 2 minutes more.'),
(LAST_INSERT_ID(),'Meanwhile, in a medium bowl, thoroughly combine crumbled cookies, butter, and nuts.'),
(LAST_INSERT_ID(),'Divide cherry mixture among four dessert dishes. Sprinkle cookie mixture over cherry mixture. If desired, serve with ice cream.');
COMMIT;

BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Rocky Road Parfaits', 'Dessert', '15 mins', '0 mins','Abmient','Serves 4');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'N/A');

INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Chocolate fudge instant pudding','2 c'),
(LAST_INSERT_ID(),'Milk', '2 c'),
(LAST_INSERT_ID(),'Frozen whipped dessert topping', '1/2 c'),
(LAST_INSERT_ID(),'Unsalted peanuts', '1/4 c'),
(LAST_INSERT_ID(),'Chocolate curls', '3 pcs');

INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'Prepare pudding mix according to package directions using the milk. Remove 3/4 cup of the pudding and place in a small bowl; fold in whipped topping until combined.'),
(LAST_INSERT_ID(),'Divide remaining plain chocolate pudding among four 6-ounce glasses or dessert dishes. Top with dessert topping mixture. Let stand for 5 to 10 minutes or until set.'),
(LAST_INSERT_ID(),'Sprinkle with peanuts and marshmallows. If desired, garnish with chocolate curls.');
COMMIT;

BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Herb Salad with Veggies', 'Salad', '15 mins', '0 mins','Abmient','Serves 4');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Large bowl'),
(LAST_INSERT_ID(),'Cutting board');

INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Olive oil','3 Tbls'),
(LAST_INSERT_ID(),'Fresh lemon juice', '3/2 Tbls'),
(LAST_INSERT_ID(),'Small garlic clove, crushed', '1/2 pc'),
(LAST_INSERT_ID(),'Herb salad mix', '5 oz'),
(LAST_INSERT_ID(),'Grape tomatoes, halved', '1 c'),
(LAST_INSERT_ID(),'Yellow bell pepper', '1 pc'),
(LAST_INSERT_ID(),'Broken pita chips', '1 c'),
(LAST_INSERT_ID(),'Crumbled feta', '2 oz'),;

INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'In a large bowl, whisk together the oil, lemon juice, garlic, ¼ teaspoon salt, and ⅛ teaspoon black pepper.'),
(LAST_INSERT_ID(),'Add the lettuce, tomatoes, bell pepper, pita chips, and Feta and toss to coat. Season with ¼ teaspoon each salt and black pepper.');
COMMIT;

BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Avocado and Blue Cheese Salad', 'Salad', '10 mins', '3-5 mins','350F','Serves 4');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Large bowl'),
(LAST_INSERT_ID(),'Baking sheet');

INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Olive oil','3 Tbls'),
(LAST_INSERT_ID(),'Spiced almonds', '1/4 c'),
(LAST_INSERT_ID(),'Red wine vinegar', '3/2 Tbls'),
(LAST_INSERT_ID(),'Dijon mustard', '1/4 tsp'),
(LAST_INSERT_ID(),'Honey', '1/2 tsp'),
(LAST_INSERT_ID(),'Large head frisee, leaves', '1 pc'),
(LAST_INSERT_ID(),'Avocado', '1 pc'),
(LAST_INSERT_ID(),'Blue cheese crumbles', '2 oz'),;

INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'Heat oven to 350° F.  On a rimmed baking sheet, toast the almonds, tossing once, until golden, 3 to 5 minutes; let cool.'),
(LAST_INSERT_ID(),'In a large bowl, whisk together the oil, vinegar, mustard, honey, ¼ teaspoon salt, and ⅛ teaspoon pepper.'),
(LAST_INSERT_ID(),'Add the frisée, avocado, blue cheese, and almonds and toss to coat.');
COMMIT;

BEGIN;

INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Basic Nachos', 'Etc', '5 mins', '2 mins','200-250F','Serves 2-4');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Plate');


INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Tortilla chips','1 bag'),
(LAST_INSERT_ID(),'Shredded cheese', '2 c'),
(LAST_INSERT_ID(),'Sour cream', '1 c');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'Open bag of chips and pour on a plate, then cover with cheese.'),
(LAST_INSERT_ID(),'Put plate of chips and cheese in the microwave and heat for about 2 minutes.'),
(LAST_INSERT_ID(),'Take out of microwave and put sour cream on then enjoy!');
COMMIT;

BEGIN;

INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Hot black tea', 'Etc', '3 mins', '5 mins','Boiling','Serves 4-8');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Jug');

INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Tea bags','4 bags'),
(LAST_INSERT_ID(),'Water', '1 gallon');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'Pour water into a pot or coffe maker (remove coffee grounds if ther is any) and boil the water.'),
(LAST_INSERT_ID(),'Take boiling water and put tea bags in it and let it sit for about 20 minutes.'),
(LAST_INSERT_ID(),'Pour into a gallon sized jug and serve.');
COMMIT;

BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('French fries', 'Sides', '10-15 mins', '5-10 mins','375F','Serves 4-8');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Deep fryer'),
(LAST_INSERT_ID(),'Serving platter');

INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Potatoes','4 pc'),
(LAST_INSERT_ID(),'Salt', '2 tsp');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'Slice up potatoes and put into deep fryer.'),
(LAST_INSERT_ID(),'Remove from deep fryer.'),
(LAST_INSERT_ID(),'Salt them then serve.');
COMMIT;

BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Buttered toast', 'Sides', '10-15 mins', '5-10 mins','375F','Serves 1');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Toaster'),
(LAST_INSERT_ID(),'Butter knife');

INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Bread','1 slice'),
(LAST_INSERT_ID(),'Butter', '2 tsp');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'Put bread in toaster for 2 minutes or until browned.'),
(LAST_INSERT_ID(),'Remove toast from toaster.'),
(LAST_INSERT_ID(),'Butter toast.');
COMMIT;

BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Crab', 'Seafood', '10 mins', '20 mins','High','Serves 1-2');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Boiling pot');

INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Crab','1 pc'),
(LAST_INSERT_ID(),'Butter', '2 tsp');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'Boil the crab for 20 minutes.'),
(LAST_INSERT_ID(),'Remove crab and crack meat out of shell.'),
(LAST_INSERT_ID(),'Butter if needed.');
COMMIT;

BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Buttered shrimp', 'Seafood', '5 mins', '10-20 mins','Medium','Serves 1-4');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Pan');

INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Shrimp','24 oz'),
(LAST_INSERT_ID(),'Butter', '2 tsp');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'Pour shrimp into pan.'),
(LAST_INSERT_ID(),'Sautee the shrimp in butter for 10-20 minutes.'),
(LAST_INSERT_ID(),'Cool and then serve.');
COMMIT;

BEGIN;
INSERT INTO recipe_name (recipe_name, recipe_category, prep_time, cook_time, temp, yeild)
VALUES('Cheese burger', 'Entree', '5 mins', '10 mins','Medium-high','Serves 1');

INSERT INTO equipment(recipe_id, equipment)
VALUES
(LAST_INSERT_ID(),'Skillet');

INSERT INTO ingredients(recipe_id, ingredient_value, units)
VALUES
(LAST_INSERT_ID(),'Beef patty','6 oz'),
(LAST_INSERT_ID(),'Cheese', '1 pc');


INSERT INTO steps(recipe_id, steps)
VALUES
(LAST_INSERT_ID(),'Cook hamburger patty on grill or skillet for 10 minutes, or until ready.'),
(LAST_INSERT_ID(),'Put on cheese and remove form heat, let cool them put any condiments you want on it.'),
(LAST_INSERT_ID(),'Put it on buns and enjoy!');
COMMIT;