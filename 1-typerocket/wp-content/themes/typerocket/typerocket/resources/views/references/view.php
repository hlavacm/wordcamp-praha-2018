<article class="col-sm-12 col-md-6 col-lg-4">
    <a href="<?php echo $model->permalink; ?>" title="<?php echo $model->post_title; ?>">
        <?php echo wp_get_attachment_image($model->getFieldValue("photo")); ?>
    </a>
    <h3><a href="<?php echo get_permalink($model->ID); ?>" title="<?php echo $model->post_title; ?>"><?php echo $model->post_title; ?></a></h3>
    <p><?php echo $model->permalink; ?></p>
</article>