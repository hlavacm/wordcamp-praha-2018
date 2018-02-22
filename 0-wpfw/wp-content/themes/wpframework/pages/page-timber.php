<?php
/* Template Name: Timber */
$context = Timber::get_context();
$context["model"] = $pageModel = new KT_ZZZ_Page_Model($post);
$context["presenter"] = $pagePresenter = new KT_ZZZ_Page_Presenter($pageModel);

get_header();

Timber::render("page.twig", $context);

get_footer();
