    <footer class="p-2">
        <div class="container-fluid text-m px-5">
            <div class="row px-5">
                <div class="col-md-4 p-2">
                    <p class="text-white">EL CAREYES
                        <br>
                         &copy;&nbsp;ALL RIGTH RESERVED&nbsp;<script>document.write(new Date().getFullYear());</script>
                    </p>
                   <div class="text-white">
                    <?php if ( !empty($available_languages) ): ?>
                        <ul class="navbar-nav text-white languages">
                                <ul role='menu' class='nav-item'>
                                    <?php foreach ($available_languages as $abbr => $item): ?>
                                        <li>
                                            <a class="text-white mx-1" href="<?php echo lang_url($abbr); ?>">
                                                <?php echo $item['label']; ?>
                                            </a>
                                        </li>
                                    <?php endforeach; ?>
                                </ul>
                        </ul>
                        <?php endif; ?>
                </div>
                </div>
                <div class="col-md-4 p-2 d-flex justify-content-center align-items-center">
                        <a class="mx-2" target="_blank" href="https://www.instagram.com/elcareyes_clubandresidences/"><img src="<?php echo base_url('assets/img/iconos/instagram.png') ?>"></a>
						<a class="mx-2" target="_blank" href="#"><img src="<?php echo base_url('assets/img/iconos/twitter.png') ?>"></a>
                        <a class="mx-2" target="_blank" href="https://wa.me/5213153510000?text=Esto es una prueba para la Pagina Web"><img src="<?php echo base_url('assets/img/iconos/whatsapp.png') ?>"></a>
                        <a class="mx-2" target="_blank" href="https://www.facebook.com/pages/category/Local-Business/El-Careyes-Club-Residences-1261260937307887/"><img src="<?php echo base_url('assets/img/iconos/facebook.png') ?>"></a>
                </div>
                <div class="col-md-4 text-m p-2 text-white textR">
                    <p class="text-white">CARRETERA BARRA DE CAREYES
                        <br>
                        KM 53.5. 46930
                        <br>
                        NAVIDAD. JAL.
                    </p>
                </div>
            </div>
        </div>
    </footer>