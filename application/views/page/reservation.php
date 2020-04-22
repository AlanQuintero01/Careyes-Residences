<div class="reservationImage">
  <div class="reservationText">
    <h2 class="text-white" data-aos="zoom-in-up" data-aos-duration="1000"><?php echo lang('titleReservation') ?></h2>
  </div>
</div>

<section id="reserva">
        <div  class="container py-3" data-aos="zoom-out" data-aos-duration="1000">
            <div class="row">
                <div class="col-md-6">
                        <h3 class="mt-5 h3 d-none d-md-block letter"><?php echo lang('sectionClubtitle') ?></h3>
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
                <div class="row borderCol mb-5 mx-1">
                    <div class="col-md-5 pl-0 pr-0">
                        <a href="<?php echo base_url('reserva/residencias') ?>/<?php echo $element->id ?>"><img align="left" class="w-100 img-fluid" src="<?php echo base_url('assets/uploads/residences/'). $element->path_image ?>" alt=""></a>
                    </div>
                    <div class="col-md-4 py-2">
                        <a href="<?php echo base_url('reserva/residencias') ?>/<?php echo $element->id ?>">
                        <h4 class="textMark ttablet"><b><?php echo $element->title?></b></h4></a>
                        <h6 class="ptablet"><?php echo $element->introText ?></h6>
                        <img class="img-fluid ml-auto iconreserv2" src="<?php echo base_url('assets/uploads/iconos/') . $element->image_icon1?>" alt="">
                        <img class="img-fluid iconreserv" src="<?php echo base_url('assets/uploads/iconos/') . $element->image_icon2?>" alt="">
                        <img class="img-fluid iconreserv" src="<?php echo base_url('assets/uploads/iconos/') . $element->image_icon3?>" alt="">
                        <img class="img-fluid iconreserv" src="<?php echo base_url('assets/uploads/iconos/') . $element->image_icon4?>" alt="">
                    </div>
                    <div class="col-md-3 text-center my-auto">
                        <a href="<?php echo base_url('reserva/residencias') ?>/<?php echo $element->id ?>"><button class="reservationsButton px-5"><?php echo lang('readmore') ?></button></a>
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
        			<h3>SÍGUENOS<br>EN  <span class="textMark">INSTAGRAM</span></h3>
        		</div>
                <div class="col-md-8 my-auto">
                    <script src="https://apps.elfsight.com/p/platform.js" defer></script>
<div class="elfsight-app-30eb01a6-3c5f-4e0f-b377-f60b12e6c10a"></div>
                </div>
        	</div>
        </div>    
    </section>

    <?php $this->load->view('components/contact'); ?>