<?php

// --- KT init ---------------------------

/*
 * Inicializace KT frameworku - nic nemazat !!!
 */
$ktInitfile = TEMPLATEPATH . "/kt/kt_init.inc.php";
if (file_exists($ktInitfile)) {
    require($ktInitfile);
} else {
    wp_die(sprintf(__("POZOR: WP Framework není k dispozici, zkontrolujte prosím adresář a inicializační soubor: %s"), $ktInitfile));
}

// --- functions.php: ukázka do prezentace ---------------------------

add_action("add_meta_boxes", "register_meta_boxes");

function register_meta_boxes()
{
    add_meta_box("id", __("Reference", "DOMAIN"), "display_reference_meta_box", "reference");
}

function display_reference_meta_box($post)
{
    // @todo: display
}

add_action("save_post", "save_reference_meta_box");

function save_reference_meta_box($postId)
{
    $post = get_post($postId);
    if (!empty($post) && $post->post_type === "reference") {
        // @todo: save
    }
}
