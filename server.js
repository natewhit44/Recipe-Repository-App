//-----------------------------------------
//  Inital imports of third party modules
//-----------------------------------------
var fs = require('fs');
var path = require('path');
var express = require('express');
var exphbs = require('express-handlebars');
var bodyParser = require('body-parser');
var mysql = require('mysql');

var app = express();
//var recipeContent = require('./Recipe');
var port = process.env.PORT || 3000;

//-----------------------------------------
//  Set up persistant DB connection
//-----------------------------------------
var connection = mysql.createConnection({
  host: "mysql.cs.orst.edu",
  user: "cs290_whitlocn",
  password: "2093",
  database: "cs290_whitlocn"
});

//-----------------------------------------
//  Use Handlebars as the view engine
//-----------------------------------------
app.engine('handlebars', exphbs({ defaultLayout: 'main' }));
app.set('view engine', 'handlebars');


//-----------------------------------------
//  Parse all request bodies as JSON
//-----------------------------------------
app.use(bodyParser.json());


//-----------------------------------------
//  Make public/ root directory
//-----------------------------------------
app.use(express.static(path.join(__dirname, 'public')));

//-----------------------------------------
//   Middleware for root request
//-----------------------------------------
app.get('/', function(req,res) {
	res.render('index-page',{
		title: "Recipe Repository Home"
	});
});


//-----------------------------------------
//   Middleware for search box input
//-----------------------------------------
app.get('/search/:query', function(req, res, next) {
    // Set up query to search through recipe names
    // and ingredients looking for something like
    // %query%
    connection.query("SELECT DISTINCT recipe_name.recipe_id, recipe_name, recipe_category \
      FROM recipe_name JOIN ingredients \
      ON recipe_name.recipe_id = ingredients.recipe_id \
      WHERE recipe_name RLIKE '" + req.params.query + "' \
      OR ingredient_value RLIKE '" + req.params.query + "'", function(err, rows) {
      if (err) {
      res.status(500).send("Error fetching recipes: " + err);
      next();
      } else {
          successful_return = [];
          rows.forEach(function(row) {
            successful_return.push({
              recipe_id: row.recipe_name.recipe_id,
              recipe_name: row.recipe_name,
              recipe_category: row.recipe_category
            });
          });
          console.log("== successful_return", successful_return);
          res.status(200).render('index-page', {
            title: "Search Query",
            search_results: successful_return
          });
        }
     });
});

//-----------------------------------------
//   Middleware for category URL
//-----------------------------------------
app.get('/categories', function(req, res) {
	res.status(200).render('index-page', {
		title: "~Categories~",
		category: recipeContent
	});
});

//-----------------------------------------
//   Middleware for category with parameter
//-----------------------------------------
app.get('/categories/:category', function(req, res, next) {

  var recipeHeader = [];

	connection.query("SELECT recipe_id, recipe_name, recipe_category FROM recipe_name WHERE recipe_category = '" + req.params.category + "'", function(err, rows) {
    if (err) {
      console.log("== Error fectching recipes from DB: ", err);
			res.status(500).send("Error fetching recipes: " + err);
    } else {
      rows.forEach(function(row) {
        recipeHeader.push({
          recipe_id: row.recipe_id,
          recipe_name:row.recipe_name,
					recipe_category: row.recipe_category,
        });
      });

      if (recipeHeader.length > 0) {
        res.status(200).render('index-page', {
    			title: recipeHeader[0].recipe_category,
    			recipeHeader: recipeHeader
    		});
      } else {
        next();
      }
    }
  });
});

app.get('/categories/:category/:id', function(req, res, next) {

  // Recipe "header" information
  var recipeMain = [];

  // Arrays for further connections
  var equipment = [];
  var ingredients = [];
  var stepsArr = [];

  var requestedID = req.params.id;

  connection.query("SELECT * FROM recipe_name WHERE recipe_id = " + requestedID, function(err, rows){
		if(err){
			console.log("== Error fectching recipes from DB: ", err);
			res.status(500).send("Error fetching recipes: " + err);
		} else{
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

      // Create dynamic query with variable
      var equipmentQuery = "SELECT * FROM equipment WHERE recipe_id = " + requestedID;

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

          var ingredientQuery = "SELECT * FROM ingredients WHERE recipe_id = " + requestedID;

          // Grab ingredients data from DB
          connection.query(ingredientQuery, function(err, rows){
            if(err){
            console.log("== Error fectching ingredients from DB: ", err);
            res.status(500).send("Error fetching ingredients: " + err);
            } else{
              rows.forEach(function(row){
                ingredients.push({
                  ingredient_value: row.ingredient_value,
                  units_value: row.units
                });
              });

              var stepsQuery = "SELECT * FROM steps WHERE recipe_id = " + requestedID;

              // Grab steps data from DB
              connection.query(stepsQuery, function(err, rows){
                if(err){
                  console.log("== Error fectching steps from DB: ", err);
                  res.status(500).send("Error fetching steps: " + err);
                } else{
                  rows.forEach(function(row){
                    stepsArr.push({
                      step_value: row.steps
                    });
                  });

                  res.render('index-page',{
                    title: "MySQL Results",
                    recipeContent: {
                      recipeMain: recipeMain,
                      equipment: equipment,
                      ingredients: ingredients,
                      steps: stepsArr
                    }
                  });
                }
              });
            }
          });
        }
      });
    }
  });
});

function allIDConditions(recipeIDs) {
  var condition = "";
  for (var i = 0; i < recipeIDs.length - 1; i++) {
    condition = condition + connection.escape(recipeIDs[i]) + " OR ";
  }
  condition = condition + connection.escape(recipeIDs[recipeIDs.length - 1]);
  return condition;
}


//-----------------------------------------
//   Serve static files on request
//-----------------------------------------
app.get('/style.css', function(req, res){
	res.render('style.css');
});

app.get('/index.js', function(req, res){
	res.render('index.js');
});

//-----------------------------------------
//   Catch all for 404 error
//-----------------------------------------
app.get('*', function (req, res) {
  res.render('404-page', {
  	title: "Error Page"
  });
});

//-----------------------------------------
//   Connect to database persistently
//-----------------------------------------
connection.connect(function(err) {
  if (err) {
    console.log("== Unable to make connection to MySQL Database.")
    throw err;
  }
});

//-----------------------------------------
//   Start the serving listening
//-----------------------------------------
app.listen(port, function () {
  console.log("== Listening on port", port);
});
