@extends("layout")

@section("content")

    <div class="container">
        <div class="row">
            <section id="references" class="col-md-12 col-lg-12">
                <header><h2><?php _e("Reference", "AS_DOMAIN"); ?></h2></header>
                <div class="row">
                    @foreach($references->all() as $reference)
                        <article class="col-sm-12 col-md-6 col-lg-4">
                            @if($reference->hasThumbnail)
                                {!! wp_get_attachment_image($reference->thumbnail->id) !!}
                            @endif
                            <h3><a href="{{ $reference->link }}" title="{{ $reference->title }}">{{ $reference->title }}</a></h3>
                            <p>{{ wp_trim_words($reference->content, 30) }}</p>
                        </article>
                    @endforeach
                </div>
            </section>
        </div>
    </div>

@endsection
