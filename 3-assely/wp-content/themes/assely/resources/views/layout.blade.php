<!DOCTYPE html>
<html {{ language_attributes() }}>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="author" content="Brilo Team">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{ wp_title("|", true, "right") }}</title>
    <link rel="pingback" href="{{ bloginfo("pingback_url") }}" />
    @wphead()
</head>
<body {{ body_class() }}>
<header id="header" class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only"><?php _e("Menu", "AS_DOMAIN"); ?></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a href="{{ get_home_url() }}" title="<?php _e("Assely", "AS_DOMAIN"); ?>" class="navbar-brand"><?php _e("Assely", "AS_DOMAIN"); ?></a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                @if(Menu::get("header-menu")->isActive())
                    @include("menu.nav", [
                        "items" => Menu::get("header-menu")->items()
                    ])
                @endif
                <form id="searchform" class="navbar-form navbar-right" role="search" method="get" action="{{ home_url("/") }}">
                    <div class="form-group">
                        <input id="s" name="s" type="text" class="form-control" placeholder="<?php _e("Zadejte výraz...", "ZZZ_DOMAIN"); ?>">
                    </div>
                    <button type="submit" class="btn btn-default"><?php _e("Vyhledat", "ZZZ_DOMAIN"); ?></button>
                </form>
            </div>
        </div>
    </nav>
</header>

@yield("content")

<footer id="footer" class="container">
    <hr />
    <p>
        Copyright &copy; 2014 - <?php echo date("Y"); ?> <b><?php _e("Assely", "AS_DOMAIN"); ?></b>.<br>
        <?php _e("Všechna práva vyhrazena, porušení autorského zákona <b>č. 121/2000 Sb</b>. se trestá dle zákona ČR.", "AS_DOMAIN"); ?>
    </p>
</footer>

@wpfooter()

</body>
</html>
