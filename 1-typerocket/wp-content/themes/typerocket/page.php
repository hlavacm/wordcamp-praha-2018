<?php
get_header();
?>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <main>
                    <header>
                        <h1><?php the_title(); ?></h1>
                    </header>
                    <?php
                    if (tr_posts_field("use_builder") == "1") {
                        tr_components_field("builder");
                    } else {
                        the_excerpt();
                        the_content();
                    }
                    ?>
                </main>
            </div>
        </div>
    </div>

<?php
get_footer();
