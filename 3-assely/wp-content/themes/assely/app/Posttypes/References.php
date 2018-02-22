<?php

namespace App\Posttypes;

use Assely\Posttype\Posttype;
use Column;

class References extends Posttype
{
    /**
     * Posttype slug.
     *
     * @var string
     */
    public $slug = "references";

    /**
     * Posttype arguments.
     *
     * @return array
     */
    public function arguments()
    {
        return [
            "title" => [__("Reference", "AS_DOMAIN"), __("Reference", "AS_DOMAIN")],
            "rewrite" => [
                "slug" => "references",
            ],
            "supports" => ["title", "editor", "thumbnail", "excerpt", "page-attributes"],
            "menu_position" => 20,
            "menu_icon" => "dashicons-portfolio",
        ];
    }

    /**
     * Specify columns of the posttype posts list.
     *
     * @return \Assely\Column\Column[]
     */
    public function columns()
    {
        return [
            Column::metabox("App\Metaboxes\ReferenceParameters", "client"),
            Column::taxonomy("App\Taxonomies\ReferenceCategories"),
        ];
    }

    /**
     * Specify posttype templates.
     *
     * @return array
     */
    public function templates()
    {
        return [
            // "template-slug" => "Template name"
        ];
    }
}
