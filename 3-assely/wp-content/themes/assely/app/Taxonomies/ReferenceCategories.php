<?php

namespace App\Taxonomies;

use Assely\Taxonomy\Taxonomy;

class ReferenceCategories extends Taxonomy
{
    /**
     * Taxonomy slug.
     *
     * @var string
     */
    public $slug = "reference-categories";

    /**
     * Describe taxonomy relationships.
     *
     * @return self
     */
    public function relation()
    {
        return $this->belongsTo(["App\Posttypes\References"]);
    }

    /**
     * Taxonomy arguments.
     *
     * @return array
     */
    public function arguments()
    {
        return [
            "title" => [__("Kategorie", "AS_DOMAIN"), __("Kategorie", "AS_DOMAIN")],
            "description" => __("Kategorie referencí", "AS_DOMAIN"),
            "rewrite" => [
                "slug" => "reference-categories",
            ],
        ];
    }

    /**
     * Register taxonomy custom fields.
     *
     * @return \Assely\Field\Field[]
     */
    public function fields()
    {
        return [
            //
        ];
    }

    /**
     * Specify columns of the taxonomy terms list.
     *
     * @return \Assely\Column\Column[]
     */
    public function columns()
    {
        return [
            //
        ];
    }
}