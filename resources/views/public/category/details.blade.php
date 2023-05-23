@include('layouts._partials.headTag', ['title' => $name])

<body>
    <section id="top-banner-panel">
        <div class="container-fluid">
            <div class="row row-cols-3 row-cols-sm-3 justify-content-center">
                <div class="col-2 col-sm-1 text-left">
                    <a href="{!! URL::previous() !!}">
                        <img src="{{ asset('assets/images/top-left-arrow.png') }}" class="img-fluid">
                    </a>
                </div>
                <div class="col-8 col-sm-10 text-center">
                    <h2 style="color: #00f9ff; text-align: center; font-size: 1.8rem;" class="text-capitalize">
                        {{ $name }}</h2>
                </div>
                <div class="col-2 col-sm-1 text-center">
                </div>
            </div>
        </div>
    </section>
    <main role="main">
        <!--/ Section Three Star /-->
        <section id="section_three">
            @foreach ($sub_categories as $sub_categoryKey => $sub_category)
                <h4 class="text-white px-2 m-2">{{ $sub_category->cat_name }}</h4>
                <div id="{{ $sub_categoryKey }}_carousel" class="owl-carousel">

                    @if ($sub_category->contents->count() > 0)
                        @foreach ($sub_category->contents as $contentKey => $content)
                            <div class="carousel-item-b">
                                <div class="card-box-a card-shadow">
                                    <div class="card-body" style="padding: 0.25rem">
                                        <label class="label-check" id="{{ $content->id }}">
                                            <input type="checkbox" @if ($content->is_favorite == 1) checked @endif>
                                            <span class="checkmark"></span>
                                        </label>
                                        <a href="{{ route('watch.index', $content->id) }}">
                                            <img class="card-img-top cover img-responsive" src="{{ $content->img }}"
                                                alt="Card image cap ">
                                            <p class="card-text text-center text-white mt-2">
                                                @php
                                                    $result = substr($content->title, 0, 9);
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
            @endforeach
        </section>
        <!--/ Section three End /-->
    </main>
    @include('layouts._partials.footer')
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
    <script src="{{ asset('js/app.js') }}"></script>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <script src="{{ asset('assets/dist/owlcarousel/owl.carousel.js') }}"></script>
    <script src="{{ asset('assets/dist/scrollreveal/scrollreveal.min.js') }}"></script>
    <script src="{{ asset('assets/js/main.js') }}"></script>
    <script>
        $(document).ready(function() {
            $(window).scroll(function(e) {
                $el = $('.nav-top-item');
                if ($(this).scrollTop() > 30) {
                    $('.nav-top-item').addClass("fixedNav");
                } else {
                    $('.nav-top-item').removeClass("fixedNav");
                }
            });

            var countOfSubCategories = {{ count($sub_categories) }};
            for (let index = 0; index < countOfSubCategories; index++) {
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
        });
    </script>

</body>

</html>
