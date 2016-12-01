var fs = require('fs');
var path = require('path');
var express = require('express');
var exphbs = require('express-handlebars');
var bodyParser = require('body-parser');
var mysql = require('mysql');

var app = express();
var recipeContent = require('./Recipe');
var port = process.env.PORT || 3000;

// Set up persistant DB connection
var connection = mysql.createConnection({
  host: "mysql.cs.orst.edu",
  user: "cs290_whitlocn",
  password: "2093",
  database: "cs290_whitlocn"
});

// Make the connection to DB, will remain
// connected until server stops running
connection.connect(function(err) {
  if (err) {
    console.log("== Unable to make connection to MySQL Database.")
    throw err;
  }
});

// Use Handlebars as the view engine for the app.
app.engine('handlebars', exphbs({ defaultLayout: 'main' }));
app.set('view engine', 'handlebars');

// Parse all request bodies as JSON
app.use(bodyParser.json());

app.use(express.static(path.join(__dirname, 'public')));

// Server index for root request
app.get('/', function(req,res) {
	res.render('index-page',{
		title: "Recipe Repository Home"
	});
});

app.get('/mysql', function(req,res){
	connection.query('SELECT * FROM recipe_name', function(err, rows){
		if(err){
			console.log("== Error fectching recipes from DB: ", err);
			res.status(500).send("Error fetching recipes: " + err);
		} else{
			var recipes = [];
			rows.forEach(function(row){
				recipes.push({
					recipe_name: row.recipe_name,
					recipe_category: row.recipe_category,
					prep_time: row.prep_time,
					cook_time: row.cook_time,
					temp: row.temp,
					yeild: row.yeild
				});
			});

			res.render('index-page',{
				title: "MySQL Results",
				recipes: recipes
			})
		}
	});
});

// Sever static files on request
app.get('/style.css', function(req, res){
	res.render('style.css');
});

app.get('/index.js', function(req, res){
	res.render('index.js');
});

//////////////////////////////

app.get('/categories', function(req, res) {
	res.status(200).render('index-page', {
		title: "~Categories~",
		category: recipeContent
	});
});

app.get('/categories/:category', function(req, res, next) {
	var requestedCategory = recipeContent[req.params.category];
	if (requestedCategory) {
		res.status(200).render('index-page', {
			title: requestedCategory.category,
			recipes: requestedCategory.recipes
		});
	} else {
		next();
	}
});
///////////////

// Catch all for 404
app.get('*', function (req, res) {
  res.render('404-page', {
  	title: "Error Page"
  });
});

// Listen on the specified port.
app.listen(port, function () {
  console.log("== Listening on port", port);
});
