// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .

var ready = function() {

	var favBtns = $('.save_favorite_form').children('input[data-star="empty"]');
	var unFavBtns = $('.delete_favorite_form').children('input[data-star="full"]');

	favBtns
		.on('click', function() {

			console.log('i fired on favBtns');
				$(this).removeClass('empty-star').addClass('growspin full-star').fadeTo('slow',0.5);			


		});

	unFavBtns
		.on('click', function() {
			console.log('i fired on unFavBtns')
				$(this).removeClass('.full-star').addClass('growspin empty-star').fadeTo('slow',0.5);			

		});
}
$(document).on('turbolinks:load', ready);
