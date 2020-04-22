
 <?php foreach ($arrayelementos as $Relement): ?>	
	<div class="container-fluid px-0 slideResidences">
		<img class="w-100 img-fluid opacityMain d-none d-md-block" src="<?php echo base_url('assets/uploads/residences/'). $Relement->path_image ?>">
		<img class="w-100 img-fluid opacityMain d-block d-md-none" src="<?php echo base_url('assets/uploads/residences/'). $Relement->movil_image ?>">
			<div class="row">
				<div class="col-md-6 position-absolute residenceText" data-aos="zoom-in-right" data-aos-duration="2000">
					<h2 class="ml-5 text-white titleResidence d-none d-md-block"><b><?php echo $Relement->title?></b></h2>
					<h2 class="text-white titleResidence d-block d-md-none text-center"><b><?php echo $Relement->title?></b></h2>
					<p class="ml-5 text-white paragraphResidence h6 text-justify d-none d-md-block"><?php echo $Relement->descriptionResidence?></p>
					<p class="text-white paragraphResidence h6 text-justify d-block d-md-none px-3">Las residencias de El Careyes tienen detalles únicos que te harán vivir una nueva experiencia</p>
					<button type="button" class="ml-5 mt-3 primaryButton d-none d-md-block"><?php echo lang('bookNow') ?></button>
				</div>
				<div class="col-md-4 position-absolute residenceIcon" data-aos="zoom-in" data-aos-duration="2000">
					<p class="text-white moreResidence h6 pr-5 mr-3">MÁS RESIDENCIAS</p>
					<a href="<?php echo base_url('reserva/residencias/') . $before  ?>" class="<?php echo $display?>">
						<button type="button" class="residenceButton h5">&#60; ANT.</button></a>
					<a href="<?php echo base_url('reserva/residencias/') . $after  ?>" class="<?php echo $displayafter?>">
						<button type="button" class="residenceButton h5 mr-5">SIG. &gt;</button></a>
				</div>
			</div>
		</div>
		<h5 class="textMark text-center mt-3 letter"><?php echo lang('lastPacific') ?></h5>			
<section id="residence">
	<div class="container">
		<div class="row py-0">
			<div class="col-md-8 p-5" data-aos="fade-up" data-aos-duration="1200">
					<div class="row">
						<div class="col-md-12 pointer">
						<img class="imageOne w-100" title="EL CAREYES" id="imgPrincipal" src="<?php echo base_url('assets/uploads/residences/'). $Relement->detailImage ?>" alt="">
						</div>
						<div class="col-md-4 mt-4">
						<img class="pointer imageTwo w-100" title="EL CAREYES" onclick="imagefist();" src="<?php echo base_url('assets/uploads/residences/'). $Relement->imageFistResidence ?>" alt="">                                        
						</div>
						<div class="col-md-4 mt-4">
							<img class="pointer imageThree w-100" title="EL CAREYES" onclick="imagesecond();" src="<?php echo base_url('assets/uploads/residences/'). $Relement->imageSecondResidence ?>" alt="">
						</div>
						<div class="col-md-4 mt-4">
							<img class="pointer imageFour w-100" title="EL CAREYES" onclick="imagethird();" src="<?php echo base_url('assets/uploads/residences/'). $Relement->imageThirdResidence ?>" alt="">
						</div>
				</div>
			</div>
			<div class="col-md-4 my-auto mx-auto" data-aos="fade-up" data-aos-duration="1200">
				<h3><?php echo $Relement->detailTitle?></h3>
				<hr class="line">
				<p><?php echo $Relement->intro_Text2 ?></p>
				<p class="my-0"><?php echo $Relement->detailParagraph1?></p>
				<p class="my-0"><?php echo $Relement->detailParagraph2?></p>
				<p class="my-0"><?php echo $Relement->detailParagraph3?></p>
				<p class="my-0"><?php echo $Relement->detailParagraph4?></p>
				<p class="my-0"><?php echo $Relement->detailParagraph5?></p>
				<p class="my-0"><?php echo $Relement->detailParagraph6?></p>
				<p class="my-3 textMark">Capacidad: <?php echo $Relement->capacity?></p>
			</div>
		</div>
	</div>
</section>	

	 <?php endforeach ?>

<section id="residenceIcon">
        <div class="container-fluid px-5 mt-5">
            <div class="row d-flex justify-content-around">
                <div class="col-md-2 mt-2" data-aos="flip-left" data-aos-duration="600">
                    <div class="text-center borderBox2">
                        <img class="my-3" src="<?php echo base_url('assets/img/iconos/El-Careyes-Outdoor-pool.svg') ?>" alt="">
               			<p class="text-center textMark mt-1"><b>ALBERCA INFINITA</b></p>
                    </div>
                </div>
                <div class="col-md-2 mt-2" data-aos="flip-left" data-aos-duration="800">
                    <div class="text-center borderBox">
                        <img class="my-2" src="<?php echo base_url('assets/img/iconos/El-Careyes-Laundry.svg')?>" alt="">
		        		<p class="text-center textMark mt-1"><b>LAVANDERÍA</b></p>
                    </div>
                </div>
                <div class="col-md-2 mt-2" data-aos="flip-left" data-aos-duration="1000">
                    <div class="text-center borderBox2">
                       <img class="my-2" src="<?php echo base_url('assets/img/iconos/El-Careyes-Beach-Acess.svg')?>" alt="">
                		<p class="text-center textMark mt-1"><b>ACCESO A LA PLAYA</b></p>
                    </div>
                </div>
                <div class="col-md-2 mt-2" data-aos="flip-left" data-aos-duration="1200">
                    <div class="text-center borderBox">
                        <img class="my-2" src="<?php echo base_url('assets/img/iconos/El-Careyes-Dining.svg')?>" alt="">
                		<p class="text-center textMark mt-1"><b>COMEDOR</b></p>
                    </div>
                </div>
                <div class="col-md-2 mt-2" data-aos="flip-left" data-aos-duration="1600">
                    <div class="text-center borderBox">
                        <img class="my-1" src="<?php echo base_url('assets/img/iconos/El-Careyes-Bar.svg')?>" alt="">
                		<p class="text-center textMark mt-1 py-auto"><b>BAR</b></p>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <?php $this->load->view('components/booknow'); ?>
<?php $this->load->view('components/contact'); ?>

    <?php foreach ($arrayelementos as $Relement): ?>	
    <script>
    	const galeria1 = '<?php echo $Relement->imageFistResidence ?>'
    	const galeria2 = '<?php echo $Relement->imageSecondResidence ?>'
    	const galeria3 = '<?php echo $Relement->imageThirdResidence ?>'
    </script>
   <?php endforeach ?>