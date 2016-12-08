// Temp handler to test sql rendering
app.get('/mysql', function(req,res){

	// Arrays for connection one
	var recipeMain = [];
	var recipeIDs = [];

	// Arrays for further connections
	var equipment = [];
	var ingredients = [];
	var stepsArr = [];

	// connection.query("SELECT * FROM recipe_name WHERE recipe_category = 'mexican'", function(err, rows){
  connection.query("SELECT * FROM recipe_name WHERE recipe_name = 'Taco Salad'", function(err, rows){
		if(err){
			console.log("== Error fectching recipes from DB: ", err);
			res.status(500).send("Error fetching recipes: " + err);
		} else{
			//console.log("== raw rows: ", rows);

			rows.forEach(function(row){
				recipeMain.push({
					recipe_name:row.recipe_name,
					recipe_category: row.recipe_category,
					prep_time: row.prep_time,
					cook_time: row.cook_time,
					temp: row.temp,
					yield: row.yeild
				});
			});


			rows.forEach(function(row){
				recipeIDs.push({
					recipe_id: row.recipe_id
				});
			});

			// Get single variable recipe id
			var refID = recipeIDs[0].recipe_id;
			//console.log("== refID: ", refID);

			// Create dynamic query with variable
			var equipmentQuery = "SELECT * FROM equipment WHERE recipe_id = " + connection.escape(refID);
      // var equipmentQuery = "SELECT * FROM equipment WHERE " + allIDConditions(recipeIDs);
			//console.log("== dynamicQuery: ", dynamicQuery);

			// Grab equipment data from DB
			connection.query(equipmentQuery, function(err, rows){
				if(err){
					console.log("== Error fectching equipment from DB: ", err);
					res.status(500).send("Error fetching equipment: " + err);
				} else{
					//console.log("== raw rows: ", rows);
					rows.forEach(function(row){
						equipment.push({
							equipment_piece: row.equipment
						});
					});

			//console.log("== equipment: ", equipment);

			var ingredientQuery = "SELECT * FROM ingredients WHERE recipe_id = " + connection.escape(refID);
      // var ingredientQuery = "SELECT * FROM ingredients WHERE " + allIDConditions(recipeIDs);

			// Grab ingredients data from DB
			connection.query(ingredientQuery, function(err, rows){
				if(err){
					console.log("== Error fectching ingredients from DB: ", err);
					res.status(500).send("Error fetching ingredients: " + err);
				} else{
					//console.log("== raw rows: ", rows);
					rows.forEach(function(row){
						ingredients.push({
							ingredient_value: row.ingredient_value,
							units_value: row.units
						});
					});

			//console.log("== ingredient: ", ingredients);


			var stepsQuery = "SELECT * FROM steps WHERE recipe_id = " + connection.escape(refID);
      // var stepsQuery = "SELECT * FROM steps WHERE " + allIDConditions(recipeIDs);

			// Grab steps data from DB
			connection.query(stepsQuery, function(err, rows){
				if(err){
					console.log("== Error fectching steps from DB: ", err);
					res.status(500).send("Error fetching steps: " + err);
				} else{
					//console.log("== raw steps: ", rows);
					rows.forEach(function(row){
						stepsArr.push({
							step_value: row.steps
						});
					});

			//console.log("== steps: ", steps);


			// console.log("== final recipeMain: ", recipeMain);
			// console.log("== final equipment: ", equipment);
			// console.log("== final ingredients: ", ingredients);
			// console.log("== final steps: ", stepsArr);


			res.render('index-page',{
				title: "MySQL Results",
        recipeContent: {
  				recipeMain: recipeMain,
          recipeIDs: recipeIDs,
  				equipment: equipment,
  				ingredients: ingredients,
  				steps: stepsArr
        }
			});
		}});
		}});
		}});
		}
	});
});
