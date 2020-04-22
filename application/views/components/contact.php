  <section id="contact">
        <div class="container-fluid py-3">
            <div class="row py-5 d-flex align-items-center justify-content-center">
                <div class="col-md-5" data-aos="fade-up" data-aos-duration="1500">
                    <h2 class="text-center"><?php echo lang('sectionContacttitle') ?></h2>
                </div>
                <div class="col-md-4 d-flex flex-row-reverse" data-aos="zoom-in" data-aos-duration="2000">
                    <ul class="contactList mr-5 pr-2">
                        <li class="my-5 ftablet"><img class="mr-3" src="<?php echo base_url('assets/img/iconos/El-careyes-mail-info.svg')?>" alt=""><a href="mailto:info@elcareyes.com"><?php echo lang('sectionContactemail') ?></a></li>
                        <li class="my-5 ftablet"><img class="mr-3" src="<?php echo base_url('assets/img/iconos/El-careyes-phone-info.svg')?>" alt=""><a href="tel:+52 315 35 10000"><?php echo lang('sectionContacttel') ?></a></li>
                        <li class="my-5 ftablet"><img src="<?php echo base_url('assets/img/iconos/El-careyes-maps-info.svg')?>" alt="" class="mr-3 "><a href="https://www.google.com.mx/maps/place/El+Careyes+Club+%26+Residences/@19.4428885,-105.0326889,17z/data=!3m1!4b1!4m8!3m7!1s0x84249d89b3f2d299:0xf7f042faa670a199!5m2!4m1!1i2!8m2!3d19.4428835!4d-105.0305002?hl=es-419&authuser=0" target="_blank"><?php echo lang('sectionContactMaps') ?></a></li>
                        <li class="my-5 ftablet"><img src="<?php echo base_url('assets/img/iconos/El-careyes-reserve-info.svg')?>" alt="" class="mr-3"><a href="#"><?php echo lang('sectionContactBook') ?></a></li>
                    </ul>
                </div>
                <div class="col-md-3 px-0" data-aos="fade-up" data-aos-duration="1500">
                        <img class="w-100" src="<?php echo base_url('assets/img/Home/El-Careyes-contacto.jpg')?>" alt="">
                </div>
            </div>
            <?php $this->load->view('components/inputprimary'); ?>
        </div>
    </section>