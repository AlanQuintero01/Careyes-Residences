
$( document ).ready(function() {
	$('.owl-carousel-one').owlCarousel({
		loop: true,
		nav: true,
		autoplay: true,
		autoplayTimeout: 3000,
		autoplayHoverPause: true,
		responsive: {
			0: {
				items: 1
			},
			600: {
				items: 1
			},
			1000: {
				items: 1
			}
		}
	})

	$('.owl-carousel-two').owlCarousel({
		loop: true,
		nav: true,
		autoplay: true,
		autoplayTimeout: 3200,
		autoplayHoverPause: true,
		responsive: {
			0: {
				items: 1
			},
			600: {
				items: 1
			},
			1000: {
				items: 1
			}
		}
	})
	
	// Funcion muestra el numero del item en el DOM:
	var owl = $('.owl-carousel-two');
	owl.owlCarousel();
	// Listen to owl events:
	owl.on('changed.owl.carousel', function (event) {
	var element = event.item.index;
	//Dependiendo del nuemro del item se aigna una clase para el progessbar
		if (element == '2') {
			$('.barra-progreso').removeClass('porcentaje-cien');
			$('.barra-progreso').addClass('porcentaje-treinta');
		}
		 if (element == '3'){
			$('.barra-progreso').removeClass('porcentaje-treinta');
			$('.barra-progreso').addClass('porcentaje-cincuenta');
		} if (element == '4'){
			$('.barra-progreso').removeClass('porcentaje-cincuenta');
			$('.barra-progreso').addClass('porcentaje-cien');
		}
	})
});




