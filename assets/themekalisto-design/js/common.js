jQuery(document).ready(function () {
  'use strict';

  // Initialize tooltip component
  $('[data-toggle="tooltip"]').tooltip();

  // Initialize popover component
  $('[data-toggle="popover"]').popover();

  // dropdown
  $('.dropdown a.dropdown-toggle').click(function () {
    location.href = $(this).attr('href');
  });

  // projects_slider
	var owl = $(".projects_slider");
  owl.owlCarousel({
    navigation: true,
		navigationText : ["",""],
		pagination: false,
		//navText: ["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"],
		slideSpeed: 700,
		autoPlay: 5000,
    items : 6,
    itemsDesktop : [600,3],
    margin: 10,
		autoHeight: true
  });

  $('.mfp-gallery').each(function () {
    $(this).magnificPopup({
      delegate: 'a',
      mainClass: 'mfp-zoom-in',
      type: 'image',
      tLoading: '',
      image: {
        verticalFit: true,
        titleSrc: function (item) {
          var caption = item.el.attr('title');
          return caption;
        }
      },
      gallery: {
        enabled: true,
        navigateByImgClick: true,
        preload: [0, 1], // Will preload 0 - before current, and 1 after the current image
        arrowMarkup: '<button title="%title%" type="button" class="mfp-arrow mfp-arrow-%dir%"></button>', // markup of an arrow button
        tPrev: 'Previous (Left arrow key)', // title for left button
        tNext: 'Next (Right arrow key)', // title for right button
        tCounter: '<span class="mfp-counter">%curr% of %total%</span>' // markup of counter
      },
      removalDelay: 300,
      callbacks: {
        beforeChange: function () {
          this.items[0].src = this.items[0].src + '?=' + Math.random();
        },
        open: function () {
          $.magnificPopup.instance.next = function () {
            var self = this;
            self.wrap.removeClass('mfp-image-loaded');
            setTimeout(function () { $.magnificPopup.proto.next.call(self); }, 120);
          };
          $.magnificPopup.instance.prev = function () {
            var self = this;
            self.wrap.removeClass('mfp-image-loaded');
            setTimeout(function () { $.magnificPopup.proto.prev.call(self); }, 120);
          };
        },
        imageLoadComplete: function () {
          var self = this;
          setTimeout(function () { self.wrap.addClass('mfp-image-loaded'); }, 16);
        }
      }
    });
	});
	
	//Modal Bootstrap
	$('#myModal').on('shown.bs.modal', function () {
		$('#myInput').trigger('focus');
	});

	//Modal open-popup
	$('.open-popup').magnificPopup({
		type:'inline',
		midClick: true,
		removalDelay: 500, //delay removal by X to allow out-animation
		callbacks: {
			beforeOpen: function() {
				this.st.mainClass = this.st.el.attr('data-effect');
			}
		}
  });
  
  //flowtype
  //$('body').flowtype();

  $('body').flowtype({
    minimum   : 500,
    maximum   : 1920,
    minFont   : 12,
    maxFont   : 18,
    fontRatio : 30
  });

   //AjaxForm Formit
  $('input[name="fz152"]').change(function(){
    if(this.checked) {
      $(this).closest('form').find('[type="submit"]').prop('disabled',false);
    } else {
      $(this).closest('form').find('[type="submit"]').prop('disabled',true);
    }
  });

}());

/* ------------------ Image Overlay ----------------- */
jQuery(document).ready(function () {
	$('.picture').hover(function () {
		$(this).find('.image-overlay-zoom, .image-overlay-link').stop().fadeTo(150, 1);
	},function () {
		$(this).find('.image-overlay-zoom, .image-overlay-link').stop().fadeTo(150, 0);
	});
});

//PrettyPhoto
$(document).ready(function() { $("a[rel^='prettyPhoto']").prettyPhoto(); });


jQuery('#backtotop').click(function () {
  jQuery('body,html').animate({
    scrollTop: 0
  }, 600);
});
jQuery(window).scroll(function () {
  if (jQuery(window).scrollTop() > 150) {
    jQuery('#backtotop').addClass('visible');
  } else {
    jQuery('#backtotop').removeClass('visible');
  }
});

// Portfolio
$(document).ready(function () {

  /* activate jquery isotope */
  var $container = $('#iso').isotope({
    itemSelector: '.item',
    percentPosition: true
  });

  $container.isotope({ filter: '*' });

  // filter items on button click
  $('#filters').on('click', 'button', function () {
    var filterValue = $(this).attr('data-filter');
    $container.isotope({ filter: filterValue });
  });
});