$(document).on('turbolinks:load', function() {
	var favBtn = $('.save_favorite_form').find('input[type="submit"]');
	var unFavBtn = 	$('.delete_favorite_form').find('input[type="submit"]');

	
	favBtn
		.on('click', function(evt) {
			// TODO fix issues with dynamic top margin causing
			// glitchy floating aside when favoite star is pulsing!
		  // var	favStat = $('strong#favorites');
			var $this = $(this);

			// favStatClone = favStat.clone(true);
			//
			// favStat.addClass('pulse');

			$this.removeClass('empty-bg').addClass('full-bg');
			$this.addClass('growspin').fadeTo('slow',0.5);
			
			// setTimeout(function(){
			// 	favStat.before(favStatClone)
			// 	favStat.remove();
			// }, 1000)

		});
		
	unFavBtn
		.on('click', function(evt) {
			var $this = $(this);
			$this.removeClass('full-bg').addClass('empty-bg');
			$this.addClass('growspin').fadeTo('slow',0.5);	
		});
});