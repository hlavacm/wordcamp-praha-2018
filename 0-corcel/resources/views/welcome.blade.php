<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ config('app.name', 'Laravel') }}</title>
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
  </head>
  <body>

    <div class="jumbotron">
      <div class="container">
        <h1>Reference!</h1>
        <p>Toto jsou vypsané reference z WP Framework dema....</p>
        <p><a class="btn btn-primary btn-lg" href="http://localhost/wordcamp-praha-2018/0-wpfw/" role="button">Přejít na původní demo »</a></p>
      </div>
    </div>

    <div class="container">

      @foreach($references->chunk(3) as $rows)
        <div class="row">
            @foreach($rows as $reference)
              <div class="col-lg-4">
                <img src="{{ $reference->thumbnail }}" alt="{{ $reference->title }}" class="img-responsive img-thumbnail">
                <h2>{{ $reference->title }}</h2>
                <p><a class="btn btn-default" href="{{ $reference->url }}" role="button">Detail »</a></p>
            </div>
            @endforeach
        </div>
      @endforeach

      <footer>
        <hr>
        <p>&copy; {{ date("Y") }} Company, Inc.</p>
      </footer>

    </div>

    <script src="{{ asset('js/app.js') }}"></script>
  </body>
</html>