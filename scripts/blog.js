$(document).ready(function(){
	$('header').append('<a href="#!" ><img id="larger-text-icon" src="images/enlarge_text_button.png" alt="Enlarge Text" /></a>');

    $('#larger-text-icon').click(function(){
      
      if ($('article').hasClass('larger-text')){
        $('article').removeClass('larger-text').addClass('largest-text');
      }
      else if ($('article').hasClass('largest-text')) {
        $('article').removeClass('largest-text'); 
      }
      else {
          $('article').addClass('larger-text');
      }
    });
});
