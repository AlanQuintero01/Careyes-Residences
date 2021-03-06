<div class="realImage">
  <div class="realText">
    <h2 class="text-white letter" data-aos="zoom-in-up" data-aos-duration="1000"><?php echo lang('titleReal') ?></h2>
  </div>
</div>

    <section id="club">
        <div  class="container py-3" >
            <div class="row">
                <div class="col-md-6" data-aos="zoom-out" data-aos-duration="1000">
                        <h3 class="mt-5 h3 d-none d-md-block letter"><?php echo lang('sectionClubtitle') ?></h3>
                        <h3 class="mt-5 d-block d-md-none"><?php echo lang('sectionClubtitle') ?></h3>
                        <hr class="reyes1"> 
                </div>
                <div class="col-md-6 my-auto" data-aos="zoom-out" data-aos-duration="1000">
                    <p class="mt-5 text-justify "><?php echo lang('sectionClubparagraph') ?></p>
                </div>
            </div>
        </div>
    </section>
    <!-- Galeria -->
    <section >
        <div class="container">
            <div class="row" data-aos="zoom-in" data-aos-duration="2000">
                <div class="col-md-4">
                    <img class="w-100 img-fluid"  src="<?php echo base_url('assets/img/Real-Estate/El-Careyes-Real-estate-gallery-interior-2.jpg') ?>"  alt="">
                    <img class=" img-fluid mt-4 w-100 h-50"src="<?php echo base_url('assets/img/Real-Estate/El-Careyes-Real-estate-gallery-interior-3.jpg')?>" height="50%" alt="">
                </div>
                <div class="col-md-8 ">
                    <img class="img-fluid galleryMovil" src="<?php echo base_url('assets/img/Real-Estate/El-Careyes-Real-estate-la-duna-pool.jpg')?>" width="100%"  alt="">
                    <div class="row">
                        <div class="col-md-6 mt-4 ">
                            <img class="w-100 img-fluid galleryMov" src="<?php echo base_url('assets/img/Real-Estate/El-Careyes-Real-estate-common-areas.jpg')?>" alt="">
                        </div>
                        <div class="col-md-6 mt-4">
                            <img class="w-100 img-fluid" src="<?php echo base_url('assets/img/Real-Estate/El-Careyes-Real-estate-gallery-interior.jpg')?>" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- seccion 3 -->
    <section>
        <div class="container">
            <div class="row ">
                <div class="col-md-6">
                    <h3 class="h1"><?php echo lang('sectionCareyestitle') ?></h3>
                    <hr class="mt-3 reyes1">
                </div>
                <div class="col-md-6">
                    <p class="text-justify p-0 mb-5"><?php echo lang('sectionCareyasparagraph') ?></p>
                </div>
            </div>
        </div>
    </section>
    <!-- learn more -->
    <section class="my-3 d-none d-md-block">
        <div class="container">
            <div class="row">
                <div class="col-md-7" data-aos="zoom-in-down" data-aos-duration="1500">
                    <hr class="bT">
                        <h2><?php echo lang('sectionLearntitle') ?></h2>
                        <br>
                        <form action="<?php echo base_url('contacto/proceso') ?>" method="post">
                            <input class="learmore mr-0 px-5" type="email" id="email" name="email" placeholder="<?php echo lang('sectionLearninput') ?>">
                            <button class="learButton pButton" type="submit"><?php echo lang('sectionLearnbutton') ?></button>
                        </form>
                </div>
                <div class="col-md-5 mb-5" data-aos="zoom-in-down" data-aos-duration="1500">
                    <img class="img-fluid w-100" src="<?php echo base_url('assets/img/Real-Estate/El-Careyes-Real-estate-learn-more.jpg')?>" alt="">
                </div>
            </div>
        </div>
    </section>

<section class="my-3 d-block d-md-none">
    <div class="container">
        <div class="row">
            <div class="col-md-12" data-aos="zoom-in-down" data-aos-duration="1500">
                <hr class="bT">
                <h2><?php echo lang('sectionLearntitle') ?></h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12" data-aos="fade-up" data-aos-duration="1500">
                <form action="<?php echo base_url('contacto/proceso') ?>" method="post">
                    <div class="form-row">
                        <input class="learmore mr-0 mx-5 w-100  text-center" type="email" id="email" name="email" placeholder="<?php echo lang('youEmail') ?>">
                    </div>
                    <div class="form-row">
                        <button class="contactButton mt-0 py-2 mb-0 w-100 ml-0 mx-5 mt-2" type="submit"><?php echo lang('sectionLearnbutton') ?></button>
                    </div>
                </form>
            </div>
        </div>
            <div class="col-md-12 my-5" data-aos="zoom-in-down" data-aos-duration="1500">
                <img class="img-fluid w-100" src="<?php echo base_url('assets/img/Real-Estate/El-Careyes-Real-estate-learn-more.jpg')?>" alt="">
            </div>
        </div>
</section>

<?php $this->load->view('components/contact'); ?>


