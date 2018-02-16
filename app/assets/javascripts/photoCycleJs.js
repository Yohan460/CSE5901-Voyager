/* This file calls the cycle function implemented in cycle.js in order to make 3 seperate sets of photos cycle through */


$(document).ready(function() {
    $('#photoContainerA').cycle({
		fx: 'fade'
	});
});

$(document).ready(function() {
    $('#photoContainerB').cycle({
		fx: 'fade'
	});
});

$(document).ready(function() {
    $('#photoContainerC').cycle({
		fx: 'fade'
	});
});
