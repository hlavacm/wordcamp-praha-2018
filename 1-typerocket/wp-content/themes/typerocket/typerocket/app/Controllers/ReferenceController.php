<?php

namespace App\Controllers;

use App\Models\Reference;
use TypeRocket\Controllers\WPPostController;

class ReferenceController extends WPPostController
{
    protected $modelClass = Reference::class;

    function slug(Reference $reference, $slug)
    {
        return tr_view("references.view", compact("reference"))->setTitle($reference->title);
    }
}