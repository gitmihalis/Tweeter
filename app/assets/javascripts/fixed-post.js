$(document).on('turbolinks:load', function() {

	var aside = $('aside');
	var $window = $(window);

	$window.scroll( function() {
		if ( $window.width() > 991 ) {
			var y = $window.scrollTop();
			aside.css({
				"margin-top": (y) + "px"
			})
		}
	});

});
