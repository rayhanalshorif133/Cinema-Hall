@include('layouts._partials.headTag', ['title' => 'Favorite All'])

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
                    <h2 style="color: #00f9ff; text-align: center; font-size: 1.8rem;">Your Favourite</h2>
                </div>
                <div class="col-2 col-sm-1 text-center">
                </div>
            </div>
        </div>
    </section>
    <main role="main">
        <!--/ Section Three Star /-->
        <section id="section_three" style="margin-bottom: 20%;">
            <div class="row">
                @foreach ($favorite_contents as $content)
                    <div class="card-box-a card-shadow col-md-4">
                        <div class="card-body">
                            <label class="fvrt-label-check" id="{{$content->id}}">
                                <input type="checkbox" checked>
                                <span class="checkmark"></span>
                            </label>
                            <a href="{{ route('watch.index', $content->id) }}">
                                <img class="card-img-top cover img-responsive"
                                    src="{{$content->img($content->id)}}" alt="Card image cap ">
                                <p class="card-text text-center">
                                    <span class="card-text-a">{{ $content->title }}</span>
                                </p>
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>
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

            // for (let index = 0; index < countOfSubCategories; index++) {
            //     $(`#${index}_carousel`).owlCarousel({
            //         loop: true,
            //         margin: 10,
            //         responsive: {
            //             0: {
            //                 items: 1,
            //             },
            //             576: {
            //                 items: 2,
            //             },
            //             769: {
            //                 items: 3,
            //             },
            //             992: {
            //                 items: 4,
            //             },
            //         },
            //     });
            // }
        });
    </script>

</body>

</html>
