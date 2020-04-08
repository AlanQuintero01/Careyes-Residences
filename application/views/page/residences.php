
 <?php foreach ($arrayelementos as $Relement): ?>	
	<div class="container-fluid px-0 slideResidences">
		<img class="w-100 img-fluid opacityMain d-none d-md-block" src="<?php echo base_url(). $Relement->path_image ?>">
		<img class="w-100 img-fluid opacityMain d-block d-md-none" src="<?php echo base_url(). $Relement->movil_image ?>">
			<div class="row">
				<div class="col-md-4 position-absolute residenceText" data-aos="zoom-in-right" data-aos-duration="2000">
					<h2 class="ml-5 text-white titleResidence"><b><?php echo $Relement->title?></b></h2>
					<p class="ml-5 text-white paragraphResidence h6 text-justify"><?php echo $Relement->descriptionResidence?></p>
					<button type="button" class="ml-5 mt-2 primaryButton d-none d-md-block"><?php echo lang('bookNow') ?></button>
				</div>
				<div class="col-md-4 position-absolute residenceIcon" data-aos="zoom-in" data-aos-duration="2000">
					<p class="text-white moreResidence h6 mr-5 pr-5">MÁS RESIDENCIAS</p>
					<a href="<?php echo base_url('reservation/residences/') . $before  ?>" class="<?php echo $display?>">
						<span class="keyResidences text-white"><</span>
						<button type="button" class="residenceButton h5">ANTERIOR</button></a>
					<a href="<?php echo base_url('reservation/residences/') . $after  ?>" class="<?php echo $displayafter?>">
						<button type="button" class="residenceButton h5">SIGUIENTE</button>
						<span class="keyResidences mr-3 text-white">></span></a>
				</div>
			</div>
		</div>
		<h5 class="textMark text-center mt-3 letter"><?php echo lang('lastPacific') ?></h5>			
<section id="residence">
	<div class="container">
		<div class="row py-0">
			<div class="col-lg-8 p-5" data-aos="fade-up" data-aos-duration="1200">
					<div class="row">
						<div class="col-xl-12 pointer mb-4">
						<img class="pointer imageOne w-100" src="<?php echo base_url(). $Relement->detailImage ?>" alt="">
						</div>
						<div class="col-xl-4">
						<img class="pointer imageTwo w-100" onclick="imagefist();" src="<?php echo base_url(). $Relement->imageFistResidence ?>" alt="">                                        
						</div>
						<div class="col-xl-4">
							<img class="pointer imageThree w-100" onclick="imagesecond();" src="<?php echo base_url(). $Relement->imageSecondResidence ?>" alt="">
						</div>
						<div class="col-xl-4">
							<img class="pointer imageFour w-100" onclick="imagethird();" src="<?php echo base_url(). $Relement->imageThirdResidence ?>" alt="">
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
			</div>
		</div>
	</div>
</section>	

	 <?php endforeach ?>

<section>
        <div class="container-fluid px-5 mt-5">
            <div class="row d-flex justify-content-around">
                <div class="col-md-2 mt-2" data-aos="flip-left" data-aos-duration="600">
                    <div class="text-center borderBox">
                        <img class="my-3" src="<?php echo base_url('assets/img/iconos/El-Careyes-Outdoor-pool.svg') ?>" alt="">
               			<h6 class="text-center textMark mt-1"><b>ALBERCA INFINITA</b></h6>
                    </div>
                </div>
                <div class="col-md-2 mt-2" data-aos="flip-left" data-aos-duration="800">
                    <div class="text-center borderBox">
                        <img class="my-2" src="<?php echo base_url('assets/img/iconos/El-Careyes-Laundry.svg')?>" alt="">
		        		<h6 class="text-center textMark mt-1"><b>LAVANDERÍA</b></h6>
                    </div>
                </div>
                <div class="col-md-2 mt-2" data-aos="flip-left" data-aos-duration="1000">
                    <div class="text-center borderBox">
                       <img class="my-2" src="<?php echo base_url('assets/img/iconos/El-Careyes-Beach-Acess.svg')?>" alt="">
                		<h6 class="text-center textMark mt-1"><b>ACCESO A LA PLAYA</b></h6>
                    </div>
                </div>
                <div class="col-md-2 mt-2" data-aos="flip-left" data-aos-duration="1200">
                    <div class="text-center borderBox">
                        <img class="my-2" src="<?php echo base_url('assets/img/iconos/El-Careyes-Dining.svg')?>" alt="">
                		<h6 class="text-center textMark mt-1"><b>COMEDOR</b></h6>
                    </div>
                </div>
                <div class="col-md-2 mt-2" data-aos="flip-left" data-aos-duration="1600">
                    <div class="text-center borderBox">
                        <img class="my-1" src="<?php echo base_url('assets/img/iconos/El-Careyes-Bar.svg')?>" alt="">
                		<h6 class="text-center textMark mt-1"><b>BAR</b></h6>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <?php $this->load->view('components/booknow'); ?>
    <?php $this->load->view('components/contactresidence'); ?>
    <?php $this->load->view('components/inputsecondary'); ?>