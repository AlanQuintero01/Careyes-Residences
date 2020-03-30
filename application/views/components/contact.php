  <section id="contact">
        <div class="container-fluid py-5">
            <div class="row py-5 d-flex align-items-center justify-content-center">
                <div class="col-md-6" data-aos="fade-up" data-aos-duration="1500">
                    <h2 class="text-center"><b><?php echo lang('sectionContacttitle') ?></b></h2>
                </div>
                <div class="col-md-3" data-aos="zoom-in" data-aos-duration="2000">
                    <ul class="contactList">
                        <li class="my-5"><img class="mr-3" src="<?php echo base_url('assets/img/iconos/El-careyes-mail-info.svg')?>" alt=""><a href="mailto:info@elcareyes.com"><?php echo lang('sectionContactemail') ?></a></li>
                        <li class="my-5"><img class="mr-3" src="<?php echo base_url('assets/img/iconos/El-careyes-phone-info.svg')?>" alt=""><a href="tel:+52 315 35 10000"><?php echo lang('sectionContacttel') ?></a></li>
                        <li class="my-5"><img src="<?php echo base_url('assets/img/iconos/El-careyes-maps-info.svg')?>" alt="" class="mr-3 "><a href="https://goo.gl/maps/ABxwWqeoEAz99WwT7" target="_blank"><?php echo lang('sectionContactMaps') ?></a></li>
                        <li class="my-5"><img src="<?php echo base_url('assets/img/iconos/El-careyes-reserve-info.svg')?>" alt="" class="mr-3"><a href="#"><?php echo lang('sectionContactBook') ?></a></li>
                    </ul>
                </div>
                <div class="col-md-3 px-0" data-aos="fade-up" data-aos-duration="1500">
                        <img class="w-100" src="<?php echo base_url('assets/img/Home/El-Careyes-contacto.jpg')?>" alt="">
                </div>
            </div>
            <?php $this->load->view('components/inputprimary'); ?>
        </div>
    </section>