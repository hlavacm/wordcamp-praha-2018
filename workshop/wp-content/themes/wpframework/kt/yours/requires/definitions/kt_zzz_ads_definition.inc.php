<?php

// --- post type ------------------------

add_action("init", "kt_zzz_register_ads_post_type");

function kt_zzz_register_ads_post_type()
{
    $labels = [
        "name" => __("Inzeráty", "ZZZ_ADMIN_DOMAIN"),
        "singular_name" => __("Inzerát", "ZZZ_ADMIN_DOMAIN"),
        "menu_name" => __("Inzeráty", "ZZZ_ADMIN_DOMAIN"),
        "name_admin_bar" => __("Inzeráty", "ZZZ_ADMIN_DOMAIN"),
        "archives" => __("Archív inzerátů", "ZZZ_ADMIN_DOMAIN"),
        "attributes" => __("Atributy", "ZZZ_ADMIN_DOMAIN"),
        "parent_item_colon" => __("Nadřazený inzerát", "ZZZ_ADMIN_DOMAIN"),
        "all_items" => __("Všechny inzeráty", "ZZZ_ADMIN_DOMAIN"),
        "add_new_item" => __("Přidat nový inzerát", "ZZZ_ADMIN_DOMAIN"),
        "add_new" => __("Přidat nový", "ZZZ_ADMIN_DOMAIN"),
        "new_item" => __("Přidat inzerát", "ZZZ_ADMIN_DOMAIN"),
        "edit_item" => __("Upravit inzerát", "ZZZ_ADMIN_DOMAIN"),
        "update_item" => __("Aktualizovat inzerát", "ZZZ_ADMIN_DOMAIN"),
        "view_item" => __("Zobrazit inzerát", "ZZZ_ADMIN_DOMAIN"),
        "view_items" => __("Zobrazit inzerát", "ZZZ_ADMIN_DOMAIN"),
        "search_items" => __("Hledat inzerát", "ZZZ_ADMIN_DOMAIN"),
        "not_found" => __("Nenalezeno", "ZZZ_ADMIN_DOMAIN"),
        "not_found_in_trash" => __("Nenalezeno v koši", "ZZZ_ADMIN_DOMAIN"),
        "featured_image" => __("Obrázek", "ZZZ_ADMIN_DOMAIN"),
        "set_featured_image" => __("Zvolit obrázek", "ZZZ_ADMIN_DOMAIN"),
        "remove_featured_image" => __("Odstranit obrázek", "ZZZ_ADMIN_DOMAIN"),
        "use_featured_image" => __("Zvolit obrázek", "ZZZ_ADMIN_DOMAIN"),
        "insert_into_item" => __("Vložit k inzerátu", "ZZZ_ADMIN_DOMAIN"),
        "uploaded_to_this_item" => __("Nahrát k inzerátu", "ZZZ_ADMIN_DOMAIN"),
        "items_list" => __("Seznam inzerátů", "ZZZ_ADMIN_DOMAIN"),
        "items_list_navigation" => __("Seznam inzerátů menu", "ZZZ_ADMIN_DOMAIN"),
        "filter_items_list" => __("Filtrovat inzeráty", "ZZZ_ADMIN_DOMAIN"),
    ];
    $args = [
        "label" => __("Inzeráty", "ZZZ_ADMIN_DOMAIN"),
        "description" => __("Entita inzerát", "ZZZ_ADMIN_DOMAIN"),
        "labels" => $labels,
        "public" => true,
        "publicly_queryable" => true,
        "show_ui" => true,
        "show_in_menu" => true,
        "capability_type" => KT_WP_POST_KEY,
        "query_var" => true,
        "rewrite" => ["slug" => KT_ZZZ_ADS_SLUG, "with_front" => false],
        "has_archive" => KT_ZZZ_ADS_SLUG,
        "hierarchical" => false,
        "menu_position" => 4,
        "menu_icon" => "dashicons-portfolio",
        "supports" => [
            KT_WP_POST_TYPE_SUPPORT_TITLE_KEY,
            KT_WP_POST_TYPE_SUPPORT_EDITOR_KEY,
            KT_WP_POST_TYPE_SUPPORT_THUMBNAIL_KEY,
            KT_WP_POST_TYPE_SUPPORT_EXCERPT_KEY,
            KT_WP_POST_TYPE_SUPPORT_PAGE_ATTRIBUTES_KEY,
        ],
    ];
    register_post_type(KT_ZZZ_ADS_KEY, $args);
}

// --- admin sloupce ---------------------------

if (is_admin()) { // vlastní sloupce v administraci
    $adsAdminColumns = new KT_Admin_Columns(KT_ZZZ_ADS_KEY);
    $adsAdminColumns->addColumn("post_thumbnail", [
        KT_Admin_Columns::LABEL_PARAM_KEY => __("Foto", "ZZZ_ADMIN_DOMAIN"),
        KT_Admin_Columns::TYPE_PARAM_KEY => KT_Admin_Columns::THUMBNAIL_TYPE_KEY,
        KT_Admin_Columns::INDEX_PARAM_KEY => 0,
    ]);
    $adsAdminColumns->addColumn(KT_ZZZ_Ads_Config::PARAMS_DATE, [
        KT_Admin_Columns::LABEL_PARAM_KEY => __("Datum", "ZZZ_ADMIN_DOMAIN"),
        KT_Admin_Columns::TYPE_PARAM_KEY => KT_Admin_Columns::POST_META_TYPE_KEY,
        KT_Admin_Columns::METAKEY_PARAM_KEY => KT_ZZZ_Ads_Config::PARAMS_DATE,
        KT_Admin_Columns::SORTABLE_PARAM_KEY => true,
        KT_Admin_Columns::INDEX_PARAM_KEY => 3,
    ]);
    $adsAdminColumns->addColumn(KT_ZZZ_Ads_Config::PARAMS_PRICE, [
        KT_Admin_Columns::LABEL_PARAM_KEY => __("Klient", "ZZZ_ADMIN_DOMAIN"),
        KT_Admin_Columns::TYPE_PARAM_KEY => KT_Admin_Columns::POST_META_TYPE_KEY,
        KT_Admin_Columns::METAKEY_PARAM_KEY => KT_ZZZ_Ads_Config::PARAMS_PRICE,
        KT_Admin_Columns::ORDERBY_PARAM_KEY => KT_Admin_Columns::METAKEY_VALUE_NUM_KEY,
        KT_Admin_Columns::SORTABLE_PARAM_KEY => true,
        KT_Admin_Columns::INDEX_PARAM_KEY => 4,
    ]);
}
