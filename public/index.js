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
		$('.google-api').toggle();

	});

	$('.link-icon').dblclick(function(){
		console.log("\nRecipe icon was pressed\n\nImplement double click");
	});

	// $('.google-api').on("click", function(){

	// });


});