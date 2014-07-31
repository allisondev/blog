$(document).ready(function(){
	$('header').prepend('<a href="#!" ><img id="larger-text-icon" src="images/enlarge_text_button.png" alt="Enlarge Text" /></a>');

    // Clicking the larger text button will cycle through three text sizes
    $('#larger-text-icon').click(function(){
      
      if ($('#content').hasClass('larger-text')){
        $('#content').removeClass('larger-text').addClass('largest-text');
      }
      else if ($('#content').hasClass('largest-text')) {
        $('#content').removeClass('largest-text'); 
      }
      else {
          $('#content').addClass('larger-text');
      }
    });

    // Clicking the header will slide up current page
    $('header h1 a').click(function(event){

      console.log('Clicked header h1 a.');
      console.log($(this));

      $(event.target).slideDown(3000);
      return false;

    });
});
