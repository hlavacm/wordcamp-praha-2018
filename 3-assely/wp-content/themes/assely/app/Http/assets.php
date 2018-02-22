<?php

/*
|--------------------------------------------------------------------------
| Application Assets
|--------------------------------------------------------------------------
|
| Here is where you can register all of the application assets.
| Simply tell which ones needs to be add and you ready to go.
| Relatives paths will be searched in `public` directory.
|
 */

Asset::add("bootstrap-style", ["path" => "css/bootstrap.min.css"]);

Asset::add("bootstrap-script", [
    "path" => "js/bootstrap.js",
    "dependences" => ["jquery"]
]);