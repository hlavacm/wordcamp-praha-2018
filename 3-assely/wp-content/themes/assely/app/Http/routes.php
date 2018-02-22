<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the application routes.
| Remember, routes order matters, only first matched route
| will be resolved. More specific ones goes as first!
|
 */

Route::get("/", "ReferenceController@index");

Route::get("404", function () {
    return View::make("errors.404");
});
