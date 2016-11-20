var fs = require('fs');
var path = require('path');
var express = require('express');
var exphbs = require('express-handlebars');

var app = express();
//var usersData = require('./users-data');
var port = process.env.PORT || 3000;

// Use Handlebars as the view engine for the app.
app.engine('handlebars', exphbs({ defaultLayout: 'main' }))
app.set('view engine', 'handlebars');

app.use(express.static(path.join(__dirname, 'public')));

// Server index for root request
app.get('/', function(req,res) {
	res.render('index-page',{
		title: "Recipe Repository Home"
	});
});


// Sever static files on request
app.get('/style.css', function(req, res){
	res.render('style.css');
});

app.get('/index.js', function(req, res){
	res.render('index.js');
});

// // Catch all for 404
// app.get('*', function (req, res) {
//   res.render('404-page');
// });

// Listen on the specified port.
app.listen(port, function () {
  console.log("== Listening on port", port);
});
