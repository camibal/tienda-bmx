  <!-- Site footer -->
  <footer class="site-footer">
  	<div class="container">
  		<div class="row">
  			<div class="col-sm-12 col-md-6">
  				<h6>ACERCA DE NOSOTROS</h6>
  				<p class="text-justify">
  					ChechoBikes es una entidad colombiana que tiene como misión proveer servicio de calidad en el sector del ciclismo buscando satisfacer la necesidad y el deseo del cliente, suministrando repuesto y accesorios de calidad ofreciendo la posibilidad de elegir entre amplias gamas de productos, de igual manera se busca hacer la promoción de la bicicleta como medio de transporte habitual, seguro y sostenible que contribuye a la mejor calidad de vida de la población.
  				</p>
  			</div>

  			<div class="col-xs-6 col-md-3">
  				<h6>VIDEOS</h6>
  				<ul class="footer-links">
  					<li><a href="./videos.php">Interesantes</a></li>
  					<li><a href="./events.php">Eventos que se vienen</a></li>
  					<li><a href="./videos-bmx.php">BMX</a></li>
  					<li><a href="./videos-mtb.php">MTB</a></li>
  					<li><a href="./videos-ruta.php">RUTA</a></li>
  				</ul>
  			</div>

  			<div class="col-xs-6 col-md-3">
  				<h6>ENLACES RÁPIDOS</h6>
  				<ul class="footer-links">
  					<li><a href="./index.php">Inicio</a></li>
  					<li><a href="./about.php">Sobre Nosotros</a></li>
  					<li><a href="./contact.php">Contáctanos</a></li>
  				</ul>
  			</div>
  		</div>
  		<hr>
  	</div>
  	<div class="container">
  		<div class="row">
  			<div class="col-md-8 col-sm-6 col-xs-12">
  				<p class="copyright-text">
  					chechobikes.com
  				</p>
  			</div>

  			<div class="col-md-4 col-sm-6 col-xs-12">
  				<ul class="social-icons">
  					<li><a class="facebook" href="https://www.facebook.com/ChechoBikes-279900729592057/" target="_blank"><i class="fa fa-facebook"></i></a></li>
  					<li><a class="whatsapp" href="https://wa.me/+573202075715?text=Hola Chechobikes me interesa comunicarme con ustedes" target="_blank"><i class="fa fa-whatsapp"></i></a></li>
  					<li><a class="dribbble" href="https://www.youtube.com/channel/UCDlwvnZgVTli5fCV35u1wbg/featured" target="_blank"><i class="fa fa-youtube"></i></a></li>
  				</ul>
  			</div>
  		</div>
  	</div>
  </footer>

  <a href="#" class="scrollup">
  	<i class="fa fa-angle-up"></i>
  </a>

  <script src="assets/js/jquery-2.2.4.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
  <script src="https://js.stripe.com/v2/"></script>
  <script src="assets/js/megamenu.js"></script>
  <script src="assets/js/owl.carousel.min.js"></script>
  <script src="assets/js/owl.animate.js"></script>
  <script src="assets/js/jquery.bxslider.min.js"></script>
  <script src="assets/js/jquery.magnific-popup.min.js"></script>
  <script src="assets/js/rating.js"></script>
  <script src="assets/js/jquery.touchSwipe.min.js"></script>
  <script src="assets/js/bootstrap-touch-slider.js"></script>
  <script src="assets/js/select2.full.min.js"></script>
  <script src="assets/js/custom.js"></script>
  <!-- <script>
	function confirmDelete() {
		return confirm("Do you sure want to delete this data?");
	}
	$(document).ready(function() {
		advFieldsStatus = $('#advFieldsStatus').val();

		$('#paypal_form').hide();
		$('#stripe_form').hide();
		$('#bank_form').hide();

		$('#advFieldsStatus').on('change', function() {
			advFieldsStatus = $('#advFieldsStatus').val();
			if (advFieldsStatus == '') {
				$('#paypal_form').hide();
				$('#stripe_form').hide();
				$('#bank_form').hide();
			} else if (advFieldsStatus == 'PayPal') {
				$('#paypal_form').show();
				$('#stripe_form').hide();
				$('#bank_form').hide();
			} else if (advFieldsStatus == 'Stripe') {
				$('#paypal_form').hide();
				$('#stripe_form').show();
				$('#bank_form').hide();
			} else if (advFieldsStatus == 'Bank Deposit') {
				$('#paypal_form').hide();
				$('#stripe_form').hide();
				$('#bank_form').show();
			}
		});
	});


	$(document).on('submit', '#stripe_form', function() {
		// createToken returns immediately - the supplied callback submits the form if there are no errors
		$('#submit-button').prop("disabled", true);
		$("#msg-container").hide();
		Stripe.card.createToken({
			number: $('.card-number').val(),
			cvc: $('.card-cvc').val(),
			exp_month: $('.card-expiry-month').val(),
			exp_year: $('.card-expiry-year').val()
			// name: $('.card-holder-name').val()
		}, stripeResponseHandler);
		return false;
	});
	Stripe.setPublishableKey('<?php echo $stripe_public_key; ?>');

	function stripeResponseHandler(status, response) {
		if (response.error) {
			$('#submit-button').prop("disabled", false);
			$("#msg-container").html('<div style="color: red;border: 1px solid;margin: 10px 0px;padding: 5px;"><strong>Error:</strong> ' + response.error.message + '</div>');
			$("#msg-container").show();
		} else {
			var form$ = $("#stripe_form");
			var token = response['id'];
			form$.append("<input type='hidden' name='stripeToken' value='" + token + "' />");
			form$.get(0).submit();
		}
	}
</script> -->
  </body>

  </html>