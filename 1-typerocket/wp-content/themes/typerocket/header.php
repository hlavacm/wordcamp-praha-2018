<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="author" content="Brilo Team">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php wp_title("|", true, "right"); ?></title>
    <link rel="pingback" href="<?php bloginfo("pingback_url"); ?>" />
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
    <header id="header" class="container">
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only"><?php _e("Menu", "TR_DOMAIN"); ?></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="<?php echo get_home_url(); ?>" title="<?php _e("Typerocket", "TR_DOMAIN"); ?>" class="navbar-brand"><?php _e("Typerocket", "TR_DOMAIN"); ?></a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <?php wp_nav_menu([
                            "theme_location" => "tr-header-menu",
                            "container" => false,
                            "depth" => 0,
                            "items_wrap" => '%3$s',
                            "fallback_cb" => false,
                        ]); ?>
                    </ul>
                    <?php get_search_form(); ?>
                </div>
            </div>
        </nav>
    </header>
