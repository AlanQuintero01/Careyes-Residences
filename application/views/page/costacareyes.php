<div class="coastImage">
  <div class="coastText">
    <h2 class="text-white ml-5" data-aos="zoom-in-up" data-aos-duration="1000"><?php echo lang('titleCoast') ?></h2>
  </div>
</div>
    <section id="coast">
        <div  class="container mb-5" >
            <div class="row">
                <div class="col-md-6" data-aos="zoom-out" data-aos-duration="1000">
                        <h3 class="mt-5 h1"><?php echo lang('sectionSouthtitle') ?></h3>
                        <hr class="reyes1"> 
                </div>
                <div class="col-md-6" data-aos="zoom-out" data-aos-duration="1000">
                    <p class="mt-5 mb-5 text-justify"><?php echo lang('sectionSouthparagraph') ?></p>
                </div>
            </div>
        </div>
    </section>

<section id="slideCare">
    <div class="container">
        <div class="row d-flex justify-content-center mb-5">
            <div class="col-md-12 px-0 mt-5">
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="container slideCoast" data-aos="fade-down" data-aos-duration="800">
                                 <div class="row">
                                    <div class="col-md-5 bg-white borderSlide p-5">
                                        <h3 class="titleCarouse textMark"><?php echo lang('sectionSlide2title') ?></h3>
                                        <hr class="line">
                                    <p class="paragraphCarouse"><?php echo lang('sectionSlide2paragraph') ?></p>
                                    </div>
                                </div>
                            </div>
                                <img src="<?php echo base_url('assets/img/Costa-Careyes/Costa-Careyes-FPO.jpg') ?>" class="d-block img-fluid imageM imageD" alt="...">
                        </div>
                        <div class="carousel-item">
                            <div class="container slideCoast">
                                <div class="row">
                                    <div class="col-md-5 bg-white borderSlide p-5">
                                        <h4 class="titleCarouse textMark"><?php echo lang('sectionSlide1title') ?></h4>
                                        <hr class="line">
                                    <p class="paragraphCarouse"><?php echo lang('sectionSlide1paragraph') ?></p>
                                    </div>
                                </div>
                            </div>
                            <img src="<?php echo base_url('assets/img/Costa-Careyes/Costa-Careyes-Saving-the-sea-turtles.jpg') ?>" class="d-block img-fluid imageM imageD"  alt="...">
                        </div>
                        <div class="carousel-item">
                            <div class="container slideCoast" data-aos="fade-down" data-aos-duration="800">
                                <div class="row">
                                    <div class="col-md-5 bg-white borderSlide p-5">
                                        <h3 class="titleCarouse textMark"><?php echo lang('sectionSlide3title') ?></h3>
                                        <hr class="line">
                                    <p class="paragraphCarouse"><?php echo lang('sectionSlide3paragraph') ?></p>
                                    </div>
                                </div>
                            </div>
                            <img src="<?php echo base_url('assets/img/Costa-Careyes/Costa-Careyes-Amenidades-Kayak-Buceo.jpg') ?>" class="d-block img-fluid imageM imageD"  alt="...">
                        </div>
                        <div class="carousel-item">
                            <div class="container slideCoast" data-aos="fade-down" data-aos-duration="800">
                                <div class="row">
                                    <div class="col-md-5 bg-white borderSlide p-5">
                                        <h3 class="titleCarouse textMark"><?php echo lang('sectionSlide4title') ?></h3>
                                        <hr class="line">
                                    <p class="paragraphCarouse"><?php echo lang('sectionSlide4paragraph') ?></p>
                                    </div>
                                </div>
                            </div>
                            <img src="<?php echo base_url('assets/img/Costa-Careyes/Costa-Careyes-Amenidades-Tenis-Golf.jpg') ?>" class="d-block img-fluid imageM imageD"  alt="...">
                        </div>
                        <div class="carousel-item">
                            <div class="container slideCoast" data-aos="fade-down" data-aos-duration="800">
                                <div class="row">
                                    <div class="col-md-5 bg-white borderSlide p-5">
                                        <h3 class="titleCarouse textMark"><?php echo lang('sectionSlide5title') ?></h3>
                                        <hr class="line">
                                    <p class="paragraphCarouse"><?php echo lang('sectionSlide5paragraph') ?></p>
                                    </div>
                                </div>
                            </div>
                            <img src="<?php echo base_url('assets/img/Costa-Careyes/Costa-Careyes-Amenidades-Yoga-spa.jpg') ?>" class="d-block img-fluid imageM imageD"  alt="...">
                        </div>
                        
                    </div>
                    <a class="carousel-control-prev indication indicationPrev" href="#carouselExampleControls" role="button" data-slide="prev">
                        <img  aria-hidden="true" src="<?php echo base_url('assets/img/iconos/Trazado 110.png')?>">
                        <span class="sr-only"><?php echo lang('previous') ?></span>
                    </a>
                    <a class="carousel-control-next indication indicationNext" href="#carouselExampleControls" role="button" data-slide="next">
                        <img  aria-hidden="true" src="<?php echo base_url('assets/img/iconos/Trazado 111.png')?>">
                        <span class="sr-only"><?php echo lang('next') ?></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Seccion about -->

    <?php $this->load->view('components/booknow'); ?>
    <?php $this->load->view('components/location'); ?>

    
