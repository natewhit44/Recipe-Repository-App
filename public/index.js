// jQuery functions to have a look at:
// http://www.w3schools.com/jquery/jquery_examples.asp

//LOOK AT THIS NATE: http://stackoverflow.com/questions/27397529/jquery-listeners-to-links-buttons-and-document-ready-issue

// -Selectors
// -Events
// -Hide/Show
// -Fade
// -Slide
// -Animate
// -Stop Animations
// -HTML Get Content and Attributes
// -HTML Set Content and Attributes
// -HTML Add Elements/Contents (Append function!)
// -Get and Set CSS Classes
// -Method
// -Dimensions
// -Traversing Ancestors
// -Traversing Descendants
// -Traversing Siblings
// -Traversing Filtering
// -AJAX load() Method
// -AJAX get() and post() Methods

$(document).ready(function(){
	console.log("Ready");

	$('.category').on("click", function(){
		console.log("\nA button in the left pane was clicked!")
	});

	$('#home').on("click", function(){
		console.log("\nHome button pressed");
	});

	$('#about').on("click", function(){
		console.log("\nAbout button pressed");
	});

	$('#contact').on("click", function(){
		console.log("\nContact button pressed");
	});

	$('.btn.btn-danger').on("click", function(){
		console.log("\nSearch icon pressed...\n\nExecuting query.");
		//https://developers.google.com/custom-search/docs/element
		//https://developers.google.com/web-search/docs/
		//http://stackoverflow.com/questions/17863086/how-to-get-started-with-google-custom-search-api
		var query = $('.form-control').val();
		console.log("\nQuery: ", query);
		$('.form-control').val("");
	});

	$('.google-search').on("click", function(){
		console.log("\nGoogle Search button pressed");
		$('.google-api').slideToggle('slow');

	});

	$('.link-icon').dblclick(function(){
		console.log("\nRecipe icon was pressed\n\nImplement double click");
	});

	$('#add-recipe-button').on('click', function(){
		console.log("\nAdd note button clicked");
		$('#recipe-display-backdrop, #modal-header, #recipe-modal').fadeIn( "slow");
	});

	$('#modal-close-button').on('click', function(){
		 $('#recipe-display-backdrop, #modal-header, #recipe-modal').fadeOut( "slow");
	});

	$('#search-button').on('click', function(){
		$('#search-box, #search-box-input').fadeToggle();
	});


});


// Recipe icon hash table
var iconDict = {}

iconDict.mexican = '/images/Mexican/favicon-96x96.png';
iconDict.greek = '/images/Greek/favicon-96x96.png';
iconDict.asian = '/images/Asian/favicon-96x96.png';
iconDict.italian = '/images/Italian/favicon-96x96.png';
iconDict.etc = '/images/Etc./favicon-96x96.png';
iconDict.beverage = '/images/Beverage/favicon-96x96.png';
iconDict.breakfast = '/images/Breakfast/favicon-96x96.png';
iconDict.dessert = '/images/Dessert/favicon-96x96.png';
iconDict.salad = '/images/Salad/favicon-96x96.png';
iconDict.side = '/images/Side_Dish/favicon-96x96.png';
iconDict.seafood = '/images/Seafood/favicon-96x96.png'
iconDict.entree = '/images/Entree/favicon-96x96.png';

console.log('== iconDict.mexian', iconDict.mexican)
