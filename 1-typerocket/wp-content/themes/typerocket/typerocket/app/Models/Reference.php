<?php
namespace App\Models;

use \TypeRocket\Models\WPPost;

class Reference extends WPPost
{
    protected $postType = "reference";

    protected $fillable = [
        "photo",
        "post_title",
        "post_content",
        "datum",
        "klient",
        "typy",
        "newsletter",
    ];

    protected $guard = [
        "id",
        "slug",
        "created_at",
        "modified_at"
    ];

    public function getPermalinkAttribute()
    {
        return get_permalink($this->ID);
    }

    public function getRouterInjectionColumn()
    {
        return "slug";
    }
}