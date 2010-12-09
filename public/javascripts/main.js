$(function() {
	/* variables */
	var t;

	$("#tabs_infos").tabs();
        if( $("#slider > ul > li").size() < 2){
		$("#slider").easySlider({
			auto: false,
			continuous: false,
			controlsShow : false,
			pause : 4000 
		});
	}
	else{    
		$("#slider").easySlider({
			auto: true,
			continuous: true,
			pause : 4000 
		});
	}

	// run the currently selected effect
	function runEffect() {
			
		// most effect types need no options passed by default
		var options = {};

		// run the effect
		clearTimeout(t);
		$("#ul_vous-etes").show();
                         
	};
	
	function stopEffect() {
			
		// most effect types need no options passed by default
		var options = {};

		// stop the effect
                t = setTimeout('$( "#ul_vous-etes" ).hide();', 1000);
	};
		
	// set effect from select menu value
	$( "#nav_vous-etes" ).hover(function() {
			runEffect();
			return false;
		},
                function() {
       			stopEffect();
			return false;
		}
	);

	$('.ul_actu').jScrollPane();

});

window.onload = function () {
     
        var ul = $('div.sliderGallery ul');
        var itemsWidth = 1000;

        $('.slider').slider({
            min: 0,
            max: itemsWidth,
            handle: '.handle',
            stop: function (event, ui) {
                ul.animate({'left' : ui.value * -1}, 500);
            },
            slide: function (event, ui) {
                ul.css('left', ui.value * -1);
            }
        });

 $(".items img").click(function() {
		// see if same thumb is being clicked
		if ($(this).hasClass("active")) { return; }

		// calclulate large image's URL based on the thumbnail URL
		var url = $(this).attr("src").replace("/thumb", "/medium");

		// get handle to element that wraps the image and make it semi-transparent
		var wrap = $("#big_image") //.fadeTo("medium", 0.5);

		// the large image
		var img = new Image();


		// call this function after it's loaded
		img.onload = function() {

			// make wrapper fully visible
			//wrap.fadeTo("fast", 1);

			// change the image
			wrap.find("img").attr("src", url);

		};

		// begin loading the image from www.flickr.com
		img.src = url;

		var dlink = "/press_downloads/" + $(this).attr("alt") + "/download_visual";
			$("#show_visual .download_button").find("a").attr("href",dlink);

		// activate item
		$(".items img").removeClass("active");
		$(this).addClass("active");

// when page loads simulate a "click" on the first image
}).filter(":first").click();

    };
