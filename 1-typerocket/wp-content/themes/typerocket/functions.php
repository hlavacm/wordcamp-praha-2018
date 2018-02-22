<?php

// Typerocket initialize

require("typerocket/init.php");

tr_frontend();

// Custom WP Logic

// Menu

add_action("after_setup_theme", "tr_after_setup_theme_callback");

function tr_after_setup_theme_callback()
{
    register_nav_menu("tr-header-menu", __("Menu v hlavičce", "TR_DOMAIN"));
}

// Scripts & Styles

add_action("wp_enqueue_scripts", "tr_wp_enqueue_scripts_callback");

function tr_wp_enqueue_scripts_callback()
{
    wp_enqueue_style("bootstrap-style", get_template_directory_uri() . "/css/bootstrap.min.css", [], false);
    wp_enqueue_script("bootstrap-script", get_template_directory_uri() . "/js/bootstrap.js", [], false, true);
}

// Reference

$reference = tr_post_type(__("Reference", "TR_DOMAIN"), __("Reference", "TR_DOMAIN"));
$reference->setIcon("folder")
    ->setTitleForm(function () {
        $form = tr_form();
        echo $form->image('Photo');
    })
    ->setId("reference")
    ->setSlug("reference")
    ->setEditorForm(function () {
        $form = tr_form();
        echo $form->date(__("Datum", "TR_DOMAIN"));
        echo $form->text(__("Klient", "TR_DOMAIN"));
        echo $form->select(__("Typy", "TR_DOMAIN"))->setOptions([
            "---" => 0,
            __("Webdesign", "ZZZ_DOMAIN") => 1,
            __("Analýza", "ZZZ_DOMAIN") => 2,
            __("Programování", "ZZZ_DOMAIN") => 3,
        ]);
    });

function add_form_content_reference_title()
{
    echo "<h2>" . __("Reference - vlastní titulek, či jiný obsah...", "TR_DOMAIN") . "</h2>";
}

$category = tr_taxonomy(__("Kategorie", "TR_DOMAIN"), __("Kategorie", "TR_DOMAIN"));
$reference->apply($category);

$reference->addColumn("photo", true, "Photo", function ($value) {
    echo wp_get_attachment_image($value, "thumbnail");
}, "number");

$metaBox = tr_meta_box(__("Reference", "TR_DOMAIN"));
$metaBox->addPostType($reference->getId());
$metaBox->addScreen("post");

function add_meta_content_reference() {
    $form = tr_form();
    echo $form->checkbox(__("Newsletter", "TR_DOMAIN"));
}
