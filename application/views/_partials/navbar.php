<section class="d-none d-md-block navTablet">
     <nav class="navbar navbar-expand-lg navbar-light fixed-top">
  <a href="<?php echo base_url() ?>"><img class="navbar-brand w-50 ml-5 my-2" src="<?php echo base_url('assets/img/logo.svg') ?>"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="#navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto textnav">
      <li class="nav-item ml-4">
        <a class="textnav <?php  echo item_menu_active('careyes');?>" href="<?php  echo base_url() . $language; ?>" class="nav-link">EL CAREYES</a>
      </li>
      <li class="nav-item ml-4">
        <a class=" textnav <?php echo item_menu_active('reserva');?>" href="<?php echo  base_url() ?><?php echo $language; ?>/reserva" class="nav-link"><?php echo lang('reservations')?></a>
      </li>
      <li class="nav-item ml-4">
        <a class=" textnav <?php echo item_menu_active('bienesraices');?>" href="<?php echo  base_url() ?><?php echo $language; ?>/bienesraices" class="nav-link "><?php echo lang('real_estate')?></a>
      </li>
      <li class="nav-item ml-4">
        <a class=" textnav <?php echo item_menu_active('costacareyes');?>" href="<?php echo  base_url() ?><?php echo $language; ?>/costacareyes" class="nav-link">COSTA CAREYES</a>
      </li>
      <li class="nav-item ml-4">
        <a class=" textnav <?php echo item_menu_active('contacto');?>" href="<?php echo  base_url() ?><?php echo $language; ?>/contacto" class="nav-link"><?php echo lang('contact')?></a>
      </li>
    </ul>
    <div class="ml-auto mr-3 ">
        <?php if ( !empty($available_languages) ): ?>
            <ul class="navbar-nav mr-5 ml-5 languages">
                    <ul role='menu' class='nav-item'>
                        <?php foreach ($available_languages as $abbr => $item): ?>
                            <li>
                                <a class=" textnav" href="<?php echo lang_url($abbr); ?>">
                                    <?php echo $item['label']; ?>
                                </a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
            </ul>
            <?php endif; ?>
    </div>
    
  </div>
</nav>
</section>

<section class="d-block d-md-none">
    <div class="fixed-top shadow" id="mainMenuMobile">
      <a href="<?php echo base_url() ?>"><img src="<?php echo base_url('assets/img/logo.svg') ?>" alt="" class="img-fluid py-4 pl-4 w-50"></a>
      <div class="menu-bg"></div>
      <div class="menu-burger">☰</div>
      <div class="menu-items position-fixed">
        <p class="" ><img class="img-fluid w-50 position-relative imgMainMenu" src="<?php echo base_url('assets/img/logo.svg') ?>" alt=""></p>
        <p class="pb-3" >
          <a class=" textnav h6 <?php  echo item_menu_active('careyes');?>" href="<?php  echo base_url() . $language; ?>" class="nav-link ">EL CAREYES</a>
        </p>
        <p class="py-3" >
          <a class=" textnav h6 <?php echo item_menu_active('reser');?>" href="<?php echo  base_url() ?><?php echo $language; ?>/reserva" class="nav-link "><?php echo lang('reservations')?></a>
        </p>
        <p class="py-3" >
          <a class=" textnav h6 <?php echo item_menu_active('bienesraices');?>" href="<?php echo  base_url() ?><?php echo $language; ?>/bienesraices" class="nav-link "><?php echo lang('real_estate')?></a>
        </p>
        <p class="py-3" >
          <a class=" textnav h6 <?php echo item_menu_active('costacareyes');?>" href="<?php echo  base_url() ?><?php echo $language; ?>/costacareyes" class="nav-link ">COSTA CAREYES</a>
        </p>
        <p class="pt-3" >
          <a class=" textnav h6 <?php echo item_menu_active('contacto');?>" href="<?php echo  base_url() ?><?php echo $language; ?>/contacto" class="nav-link "><?php echo lang('contact')?></a>
        </p>
        <div class="col-md-12 d-flex justify-content-center mt-5">
          <a class="mx-3" target="_blank" href="https://www.instagram.com/elcareyes_clubandresidences/">
            <img class="w-100 img-fluid" src="<?php echo base_url('assets/img/iconos/instagram.svg') ?>">
          </a>
          <a href="#" class="mx-3">
            <img class="w-100 img-fluid" src="<?php echo base_url('assets/img/iconos/twitter.svg') ?>">
          </a>
          <a href="#" class="mx-3">
            <img class="w-100 img-fluid" src="<?php echo base_url('assets/img/iconos/whatsapp.svg') ?>">
          </a>
          <a class="mx-3" target="_blank" href="https://www.facebook.com/pages/category/Local-Business/El-Careyes-Club-Residences-1261260937307887/">
            <img class="w-100 img-fluid" src="<?php echo base_url('assets/img/iconos/facebook.svg') ?>">
          </a>
        </div>
      </div>
    </div>
  </section>



<?php
        function item_menu_active($requestUri) {
            $ci =& get_instance();
            $controller  = $ci->router->fetch_class();
            if($controller == $requestUri){
                    echo 'menuActive';
            }
        }
    ?>



