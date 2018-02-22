<?php

namespace App\Metaboxes;

use Assely\Metabox\Metabox;
use Field;

class ReferenceParameters extends Metabox
{
    /**
     * Metabox slug.
     *
     * @var string
     */
    public $slug = "reference-parameters";

    /**
     * Describe metabox relationships.
     *
     * @return self
     */
    public function relation()
    {
        return $this->belongsTo(["App\Posttypes\References"]);
    }

    /**
     * Metabox arguments.
     *
     * @return array
     */
    public function arguments()
    {
        return [
            "title" => [__("Parametry", "AS_DOMAIN")],
            "description" => __("Parametry pro reference", "AS_DOMAIN")
        ];
    }

    /**
     * Register metabox custom fields.
     *
     * @return \Assely\Field\Field[]
     */
    public function fields()
    {
        return [
            Field::datepicker("date"),
            Field::text("client"),
            Field::checkboxes("types", [
                "title" => [__("Typy", "AS_DOMAIN")],
                "items" => [
                    0 => "---",
                    1 => __("Webdesign", "AS_DOMAIN"),
                    2 => __("Analýza", "AS_DOMAIN"),
                    3 => __("Programování", "AS_DOMAIN"),
                ]
            ]),
        ];
    }
}