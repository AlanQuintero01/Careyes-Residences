<section class="d-none d-md-block">
    <div class="row" id="inputPrimary">
        <div class="col-md-12" data-aos="fade-up" data-aos-duration="1500">
            <hr class="my-5">
                <p class="m-auto text-center"><?php echo lang('sing') ?><br><?php echo lang('news') ?></p>
                <div class="text-center">
                    <form action="<?php echo base_url('contacto/proceso') ?>" method="post">
                        <input class="newsletter mr-0 px-5" type="email" id="email" name="email" placeholder="<?php echo lang('youEmail') ?>">
                        <button class="contactButton p-2" type="submit"><?php echo lang('Subs') ?></button>
                    </form>
                </div>    
        </div>
    </div>
</section>
<section class="d-block d-md-none mb-5">
    <div class="row" id="inputPrimary">
        <div class="col-md-12" data-aos="fade-up" data-aos-duration="1500">
            <hr class="mb-4">
            <p class="text-center"><?php echo lang('sing') ?>
                <br> 
                <?php echo lang('news') ?>
                <br>
            </p>
        </div>
    </div>
    <div class="row" id="inputPrimary">
        <div class="col-md-12 text-center " data-aos="fade-up" data-aos-duration="1500">
            <form action="<?php echo base_url('contacto/proceso') ?>" method="post">
            <div class="form-row">
                    <input class="newsletter mr-0 mx-5 w-100  text-center" type="email" id="email" name="email" placeholder="<?php echo lang('youEmail') ?>">
                </div>
                <div class="form-row mt-2">
                    <button class="contactButton mt-0 py-2 mb-0 w-100 ml-0 mx-5" type="submit"><?php echo lang('Subs') ?></button>
                </div>
            </form>
        </div>  
    </div>
</section>