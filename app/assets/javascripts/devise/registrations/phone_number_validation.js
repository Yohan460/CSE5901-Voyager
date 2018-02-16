
/* This function works to guide the user in the entering their phone number on the user
	registration page. This was includede to satisfy the javascript requirement, all other
	data is validated on the backend upon saving */
$(function(){
  /* Providing the mask to the user to outline the implicit format */
  $("#user_phone").mask("(999) 999-9999");

  /* Formatting the phone number as they type it */
  $("#user_phone").on("blur", function() {
      var last = $(this).val().substr( $(this).val().indexOf("-") + 1 );

      if( last.length == 5 ) {
          var move = $(this).val().substr( $(this).val().indexOf("-") + 1, 1 );
          var lastfour = last.substr(1,4);
          var first = $(this).val().substr( 0, 9 );
          $(this).val( first + move + '-' + lastfour );
      }
  });
}); 