$(document).ready(function(){
	$('header').prepend('<a href="#!" ><img id="larger-text-icon" src="images/enlarge_text_button.png" alt="Enlarge Text" /></a>');

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
});
