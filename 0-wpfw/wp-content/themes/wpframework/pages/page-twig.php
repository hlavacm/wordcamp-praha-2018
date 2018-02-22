<?php
/* Template Name: Twig */
require get_template_directory() . "/vendor/autoload.php";
$pagePresenter = new KT_ZZZ_Page_Presenter($pageModel = new KT_ZZZ_Page_Model($post));
$loader = new \Twig_Loader_Filesystem(get_template_directory() . "/pages");
$twig = new \Twig_Environment($loader);

get_header();

echo $twig->render("page.twig", ["presenter" => $pagePresenter, "model" => $pageModel]);

get_footer();
