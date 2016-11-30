// jQuery functions to have a look at:
// http://www.w3schools.com/jquery/jquery_examples.asp

//LOOK AT THIS FOR EXAMPLES
//ON HOW TO USE jQuery: 
//http://stackoverflow.com/questions/27397529/jquery-listeners-to-links-buttons-and-document-ready-issue

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


//keeps track of number of text boxes in create-recipe during the current session
var ingredientCount = 1;
var equipmentCount = 1;
var stepCount = 1;

$(document).ready(function(){
	console.log("Ready");

	$('.category').on("click", function(){
		console.log("\nA button in the left pane was clicked!")
	});

	$('#home').on("click", function(){
		console.log("\nHome button pressed");
	});

	$('#categories').on("click", function(){
		console.log("\nAbout button pressed");
	});

	$('#add-recipe-button').on("click", function(){
		console.log("\nContact button pressed");
	});

	// Sets search input initializer to enter button
	$('#search-box-input').bind('keypress', function(e){
	   if(e.which === 13) { // return
	      var query = $('#search-box-input').val();
	      console.log("\nQuery: ", query);
	      $('#search-box-input').val('');
	   }
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

	$('#go-back').on('click', function(){
		 $('#recipe-display-backdrop, #modal-header, #recipe-modal').fadeOut( "slow");
	});

	$('#search-button').on('click', function(){
		$('#search-box, #search-box-input').fadeToggle();
		$('#home, #categories, #add-recipe-button').fadeToggle();
		//$('#search-button').stop().animate({height: "61px"});
	});




	// Creates buttons, listeners add button and incriments count.

	//Creates textbox for the titleBox

	var titleBox = $(document.createElement('input')).attr('class', 'titleBox');

	titleBox.appendTo('.addTitleBox');

	//creates box to enter how many people it serves

	var serveBox = $(document.createElement('input')).attr('class', 'serveBox');
	var serveSpan = $(document.createElement('span')).text(" guests").attr('class', 'serveSpan');

	
	serveBox.appendTo('.addServe-header');
	serveSpan.appendTo('.addServe-header');

	//creates ingredient textboxes and add/remove buttons

	var ingredientListItem = $(document.createElement('li')).attr('id', 'ingredientListItem_1');
	var ingredientBox = $(document.createElement('input')).attr('class', 'ingredientBox');
	var quantitySpan = $(document.createElement('span')).attr('class', 'quantitySpan').text(" Quantity: ");
	var ingredientQuantity = $(document.createElement('input')).attr('class', 'ingredientQuantity');

	ingredientBox.appendTo(ingredientListItem);
	ingredientQuantity.appendTo(quantitySpan);
	quantitySpan.appendTo(ingredientListItem);
	

	var addIngredientBtn = $(document.createElement('button')).click(function(){
		$('#ingredientListItem_1').clone().find("input:text").val("").end().attr('id', 'ingredientListItem_' + (ingredientCount + 1)).appendTo('.addRecipe-list');
		ingredientCount++;
	});
	$(addIngredientBtn).text("Add");

	var removeIngredientBtn = $(document.createElement('button')).click(function(){
		if (ingredientCount > 1)
		{
			$('#ingredientListItem_' + ingredientCount).remove();
			ingredientCount--;
		}
	});
	$(removeIngredientBtn).text("Remove");
	
	//add initial ingredient textboxes

	addIngredientBtn.appendTo('.addRecipe-list');
	removeIngredientBtn.appendTo('.addRecipe-list');
	ingredientListItem.appendTo('.addRecipe-list');	


	//add equipment textboxes and buttons

	var equipmentListItem = $(document.createElement('li')).attr('id', 'equipmentListItem_1');
	var equipmentBox = $(document.createElement('input')).attr('class', 'equipmentBox');

	equipmentBox.appendTo(equipmentListItem);

	var addEquipmentBtn = $(document.createElement('button')).click(function(){
		$('#equipmentListItem_1').clone().find("input:text").val("").end().attr('id', 'equipmentListItem_' + (equipmentCount + 1)).appendTo('.addEquipment-list');
		equipmentCount++;
	});
	$(addEquipmentBtn).text("Add");

	var removeEquipmentBtn = $(document.createElement('button')).click(function(){
		if (equipmentCount > 1){
			$('#equipmentListItem_' + equipmentCount).remove();
			equipmentCount--;
		}
	});
	$(removeEquipmentBtn).text("Remove");

	addEquipmentBtn.appendTo('.addEquipment-list');
	removeEquipmentBtn.appendTo('.addEquipment-list');
	equipmentListItem.appendTo('.addEquipment-list');	

	//adds textboxes to preperation, cookingtime, and temperature

	var prepBox = $(document.createElement('input')).attr('class', 'prepBox');
	var cookBox = $(document.createElement('input')).attr('class', 'cookBox');
	var tempBox = $(document.createElement('input')).attr('class', 'tempBox');

	prepBox.appendTo('#prep');
	cookBox.appendTo('#cook');
	tempBox.appendTo('#temp');

	//adds textboxes for typing the steps to follow in order to create a recipe

	var stepListItem = $(document.createElement('li')).attr('id', 'stepListItem_1');
	var stepBox = $(document.createElement('input')).attr('class', 'stepBox');

	stepBox.appendTo(stepListItem);

	var addStepBtn = $(document.createElement('button')).click(function(){
		$('#stepListItem_1').clone().find("input:text").val("").end().attr('id', 'stepListItem_' + (stepCount + 1)).appendTo('.addStep-list');
		stepCount++;
	});
	$(addStepBtn).text("Add");

	var removeStepBtn = $(document.createElement('button')).click(function(){
		if (stepCount > 1)
		{
			$('#stepListItem_' + stepCount).remove();
			stepCount--;
		}
	});
	$(removeStepBtn).text("Remove");
	
	//add initial step textboxes

	addStepBtn.appendTo('.addStep-list');
	removeStepBtn.appendTo('.addStep-list');
	stepListItem.appendTo('.addStep-list');	



	//Saves info to a json using a "accept" button
	

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
