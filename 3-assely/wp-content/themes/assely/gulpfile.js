var elixir = require('laravel-elixir');

/*
 |--------------------------------------------------------------------------
 | Elixir Assets Management
 |--------------------------------------------------------------------------
 |
 | Laravel Elixir provides a clean, fluent API for defining
 | basic Gulp tasks for your application. Elixir supports
 | several common CSS and JavaScript pre-processors.
 |
 */

elixir(function(mix) {
    mix.sass('app.scss');
});