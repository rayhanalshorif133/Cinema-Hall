@extends('layouts.app', ['title' => 'Cinema-Hall | Home'])

@push('styles')
@endpush

@section('content')
    @if ($favoriteContents != null)
        <section id="section_fav" style="margin-bottom: 2%;">
            <div class="wrap-one d-flex justify-content-between">
                <div class="title-box" id="fav">
                    <h3 class="title-a">
                        Favorite List
                    </h3>
                </div>
                <div class="more-link">
                    <a href="{{ route('favorite.show-all-favorite') }}" class="see_all">see all
                        <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                    </a>
                </div>
            </div>
            <div id="fav_carousel" class="owl-carousel">
                @if ($favoriteContents != null)
                    @foreach ($favoriteContents as $contentKey => $item)
                        @php
                            $rendom = $contentKey + rand(10, 100);
                        @endphp
                        <div class="carousel-item-b">
                            <div class="card-box-a card-shadow">
                                <div class="card-body"  style="padding: 0.25rem">
                                    <label class="label-check" id="{{ $item->id }}">
                                        <input type="checkbox" checked>
                                        <span class="checkmark"></span>
                                    </label>
                                    <a href="{{ route('watch.index', [$item->id]) }}">
                                        <img class="card-img-top cover img-responsive" src="{{ $item->img($item->id) }}"
                                            alt="Card image cap ">
                                        <p class="card-text text-center text-white mt-2">
                                            @php
                                                $result = substr($item->title, 0, 9);
                                            @endphp
                                            {{ $result }} ...
                                        </p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </section>
    @endif
    @foreach ($categories as $catKey => $category)
        @php
            $tempKey = $catKey + 1;
            $isLast = count($categories) == $tempKey ? true : false;
            // lowercase
            $category->see_all = str_replace(' ', '-', strtolower($category->cat_name));
        @endphp
        @if (count($category->contents) > 0)
            <section id="section_one"
                @if ($isLast == true) style="margin-bottom: 15%;" @else style="margin-bottom: 2%;" @endif>
                <div class="wrap-one d-flex justify-content-between">
                    <div class="title-box" id="{{ $category->tag }}">
                        <h3 class="title-a">
                            {{ $category->cat_name }}
                        </h3>
                    </div>
                    <div class="more-link">
                        <a href="{{ route('category.detail', [$category->id, $category->see_all]) }}">see all
                            <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
                <div id="{{ $catKey }}_carousel" class="owl-carousel">
                    @foreach ($category->contents as $contentKey => $item)
                        @php
                            $rendom = $catKey + $contentKey + rand(10, 100);
                        @endphp
                        <div class="carousel-item-b">
                            <div class="card-box-a card-shadow">
                                <div class="card-body" style="padding: 0.25rem">
                                    <label class="label-check" id="{{ $item->id }}">
                                        @if ($item->is_favorite == 1)
                                            <input type="checkbox" checked>
                                        @else
                                            <input type="checkbox">
                                        @endif
                                        <span class="checkmark"></span>
                                    </label>
                                    <a href="{{ route('watch.index', [$item->id]) }}">
                                        <img class="card-img-top cover img-responsive" src="{{ $item->img }}"
                                            alt="Card image cap ">
                                        <p class="card-text text-center text-white mt-2 content-title">
                                            @php
                                                $result = substr($item->title, 0, 9);
                                            @endphp
                                            {{ $result }} ...
                                        </p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </section>
        @endif
    @endforeach
@endsection

{{-- {{ $item->title }} --}}

@push('scripts')
    <script>

        $(function(){

            const data = {
                height: $(window).height(),
                width: $(window).width(),
            }


            axios.post('/hit-log',data)
            .then(function(response){
                console.log(response.data);
            })

        });

        var countOfCategories = {{ count($categories) }};
        for (let index = 0; index < countOfCategories; index++) {
            $(`#${index}_carousel`).owlCarousel({
                loop: true,
                margin: 10,
                responsive: {
                    0: {
                        items: 3,
                    },
                    769: {
                        items: 3,
                    },
                    992: {
                        items: 3,
                    },
                },
            });
        }


        $('#fav_carousel').owlCarousel({
            loop: true,
            margin: 10,
            responsive: {
                0: {
                    items: 3,
                },
                769: {
                    items: 3,
                },
                992: {
                    items: 3,
                },
            },
        });
    </script>
@endpush
