<div class="reservationImage">
  <div class="reservationText">
    <h2 class="text-white" data-aos="zoom-in-up" data-aos-duration="1000"><?php echo lang('titleReservation') ?></h2>
  </div>
</div>

<section id="reserva">
        <div  class="container py-3" data-aos="zoom-out" data-aos-duration="1000">
            <div class="row">
                <div class="col-md-6">
                        <h3 class="mt-5 h1 d-none d-md-block letter"><?php echo lang('sectionClubtitle') ?></h3>
                        <h3 class="mt-5 d-block d-md-none"><?php echo lang('sectionClubtitle') ?></h3>
                        <hr class="reyes1">
                </div>
                <div class="col-md-6 my-auto" data-aos="zoom-out" data-aos-duration="1000">
                    <p class="text-justify mt-5"><?php echo lang('sectionClubResparagraph1') ?></p>
                    <p class="text-justify mb-5"><?php echo lang('sectionClubResparagraph2') ?></p>
                </div>
            </div>
        </div>
    </section>
     
    <section>
        <div class="container mt-3">
            <?php foreach ($arrayactivos as $element): ?>
                <div class="row borderCol mb-5">
                    <div class="col-md-5 pl-0 pr-0">
                        <a href="<?php echo base_url('reservation/residences') ?>/<?php echo $element->id ?>"><img align="left" class="w-100 img-fluid" src="<?php echo base_url(). $element->path_image ?>" alt=""></a>
                    </div>
                    <div class="col-md-4 py-3">
                        <a href="<?php echo base_url('reservation/residences') ?>/<?php echo $element->id ?>"><h4 class="textMark"><b><?php echo $element->title?></b></h4></a>
                        <p><?php echo $element->introText ?></p>
                        <img class="ml-auto img-fluid w-100" src="<?php echo base_url('assets/img/iconos/Grupo 126.png')?>" alt="">
                    </div>
                    <div class="col-md-3 text-center my-auto">
                        <a href="<?php echo base_url('reservation/residences') ?>/<?php echo $element->id ?>"><button class="reservationsButton"><?php echo lang('readmore') ?></button></a>
                        <button class="reservationsButton"><?php echo lang('bookNow') ?></button>
                    </div>
                </div>
        <?php endforeach ?>
        </div>
    </section>


    <section>
        <hr class="locationPrimary my-5"> 
        <div class="container mt-3">
        	<div class="row">
        		<div class="col-md-4 my-auto">
        			<h3>FOLLOW<br>US ON <span class="textMark">INSTAGRAM</span></h3>
        		</div>
                <div class="col-md-8 my-auto">
                    <script src="https://apps.elfsight.com/p/platform.js" defer></script>
<div class="elfsight-app-b5be532a-400e-44ae-a3c6-7013f77ef955"></div>
                </div>
        	</div>
        </div>    
    </section>

    <?php $this->load->view('components/contact'); ?>