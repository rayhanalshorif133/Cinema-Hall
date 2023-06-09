@include('layouts._partials.headTag')

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
                    <h2 style="color: #00f9ff; text-align: center; font-size: 1.8rem;">Category</h2>
                </div>
                <div class="col-2 col-sm-1 text-center">
                </div>
            </div>
        </div>
    </section>
    <main role="main">
        <!--/ Section Three Star /-->
        <section id="section_three">
            <div class="row">
                @foreach ($categories as $key => $category)
                    <div class="col-md-3">
                        @php
                        $url = str_replace(' ', '-', strtolower($category->cat_name));
                    @endphp
                        <div class="card-box-a card-shadow">
                            <div class="card-body">

                                <label class="label-check">
                                    @if ($category->is_favorite == true)
                                        <input type="checkbox" checked>
                                    @else
                                        <input type="checkbox">
                                    @endif
                                    <span class="checkmark categoryCheckMark"
                                        id="categoryID-{{ $category->id }}"></span>
                                </label>
                                <a href="{{ route('category.detail', [$category->id, $url]) }}">
                                    <img class="card-img-top cover img-responsive"
                                        src="https://picsum.photos/500/300?random={{ $key }}"
                                        alt="Card image cap ">
                                    <p class="card-text text-center text-white mt-2">
                                        {{ $category->cat_name }}
                                    </p>
                                </a>
                            </div>
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
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <script src="{{ asset('assets/dist/owlcarousel/owl.carousel.js') }}"></script>
    <script src="{{ asset('assets/dist/scrollreveal/scrollreveal.min.js') }}"></script>
    <script src="{{ asset('assets/js/main.js') }}"></script>
    <script>
        $(document).ready(function() {
            scrollingHandler();
            favoritesHandler()

        });


        const scrollingHandler = () => {
            $(window).scroll(function(e) {
                $el = $('.nav-top-item');
                if ($(this).scrollTop() > 30) {
                    $('.nav-top-item').addClass("fixedNav");
                } else {
                    $('.nav-top-item').removeClass("fixedNav");
                }
            });
        };

        function favoritesHandler() {
            $(".categoryCheckMark").on("click", function() {
                var categoryID = $(this).attr("id").split("-")[1];
                var isChecked = $(this).prev().prop("checked") ? 'delete' : 'create';
                axios.post('/category/favorite/create', {
                    categoryID: categoryID,
                    status: isChecked
                }).then(function(response) {
                    var data = response.data.data;
                    console.log(response);
                }).catch(function(error) {
                    console.log(error);
                })
            });
        }
    </script>

</body>

</html>
