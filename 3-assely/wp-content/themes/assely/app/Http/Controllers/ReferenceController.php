<?php

namespace App\Http\Controllers;

use App\Posttypes\References;
use View;
use Assely\Routing\Controller;

class ReferenceController extends Controller
{
    /**
     * The posts instance.
     *
     * @var References
     */
    protected $references;

    /**
     * Construct controller.
     *
     * @param References
     */
    public function __construct(References $posts) {
        $this->references = $posts;
    }
    
    /**
     * Display a list of resources.
     *
     * @return void
     */
    public function index()
    {
        $references = $this->references;
        return View::make("index", compact("references"));
    }
}
