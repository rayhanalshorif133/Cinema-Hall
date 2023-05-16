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
                                <div class="card-body">
                                    <label class="label-check" id="{{ $item->id }}">
                                        <input type="checkbox" checked>
                                        <span class="checkmark"></span>
                                    </label>
                                    <a href="{{ route('watch.index', [$item->id]) }}">
                                        <img class="card-img-top cover img-responsive"
                                            src="https://picsum.photos/500/300?random={{ $rendom }}"
                                            alt="Card image cap ">
                                        <p class="card-text text-center text-white mt-2">{{ $item->title }}</p>
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
        <section id="section_one"
            @if ($isLast == true) style="margin-bottom: 15%;" @else style="margin-bottom: 2%;" @endif>
            <div class="wrap-one d-flex justify-content-between">
                <div class="title-box" id="{{ $category->tag }}">
                    <h3 class="title-a">
                        {{ $category->cat_name }} 
                        {{-- {{ $category->id }} --}}
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
                            <div class="card-body">
                                <label class="label-check" id="{{ $item->id }}">
                                    {{ $item->is_favorite }}
                                    @if ($item->is_favorite == 1)
                                        <input type="checkbox" checked>
                                    @else
                                        <input type="checkbox">
                                    @endif
                                    <span class="checkmark"></span>
                                </label>
                                <a href="{{ route('watch.index', [$item->id]) }}">
                                    <img class="card-img-top cover img-responsive"
                                        src="https://picsum.photos/500/300?random={{ $rendom }}"
                                        alt="Card image cap ">
                                    <p class="card-text text-center text-white mt-2">{{ $item->title }}</p>
                                </a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </section>
    @endforeach
@endsection

@push('scripts')
    <script>
        var countOfCategories = {{ count($categories) }};
        for (let index = 0; index < countOfCategories; index++) {
            $(`#${index}_carousel`).owlCarousel({
                loop: true,
                margin: 10,
                responsive: {
                    0: {
                        items: 1,
                    },
                    576: {
                        items: 2,
                    },
                    769: {
                        items: 3,
                    },
                    992: {
                        items: 4,
                    },
                },
            });
        }


        $('#fav_carousel').owlCarousel({
            loop: true,
            margin: 10,
            responsive: {
                0: {
                    items: 1,
                },
                576: {
                    items: 2,
                },
                769: {
                    items: 3,
                },
                992: {
                    items: 4,
                },
            },
        });
    </script>
@endpush
