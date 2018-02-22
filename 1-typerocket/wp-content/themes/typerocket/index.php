<?php
get_header();
?>

    <div class="container">
        <div class="row">
            <section id="references" class="col-md-12 col-lg-12">
                <header><h2><?php _e("Reference", "TR_DOMAIN"); ?></h2></header>
                <div class="row">
                    <?php
                    $reference = new \App\Models\Reference();
                    $models = $reference->findAll()->published()->get();
                    foreach ($models as $model) {
                        ?>
                        <article class="col-sm-12 col-md-6 col-lg-4">
                            <a href="<?php echo $model->permalink; ?>" title="<?php echo $model->post_title; ?>">
                                <?php echo wp_get_attachment_image($model->getFieldValue("photo")); ?>
                            </a>
                            <h3><a href="<?php echo $model->permalink; ?>" title="<?php echo $model->post_title; ?>"><?php echo $model->post_title; ?></a></h3>
                            <p><?php echo wp_trim_words($model->post_content, 30); ?></p>
                        </article>
                        <?php
                    }
                    ?>
                </div>
            </section>
        </div>
    </div>

<?php
get_footer();
