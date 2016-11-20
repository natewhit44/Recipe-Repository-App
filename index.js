
//--------------------------------------------
// 
//--------------------------------------------
function handleGoogleSearchClick(event){
	console.log(event);
}








// Wait until the DOM content is loaded to hook up UI interactions, etc.
window.addEventListener('DOMContentLoaded', function (event) {

  // Delegate an event listener to <main> to handle clicks on dismiss buttons.
  var google_search = document.getElementsByClassName('google-search');
  if (google_search) {
    google_search.addEventListener('click', handleGoogleSearchClick);
  }


});