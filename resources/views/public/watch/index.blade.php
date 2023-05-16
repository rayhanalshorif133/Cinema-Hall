@include('layouts._partials.headTag', ['title' => 'Watch Play'])

<body>
    <section id="top-banner-panel">
        <div class="container-fluid">
            <div class="row row-cols-3 row-cols-sm-3 justify-content-center">
                <div class="col-2 col-sm-1 text-left">
                    <a href="{{ route('category.detail', [$content->cat_id, $content->cat_name]) }}">
                        <img src="{{ asset('assets/images/top-left-arrow.png') }}" class="img-fluid">
                    </a>
                </div>
                <div class="col-8 col-sm-10 text-center">
                </div>
                <div class="col-2 col-sm-1 text-center">
                </div>
            </div>
        </div>
    </section>

    <main role="main">
        <section id="watchVide">
            <div class="wrapper">
                <img id="video-cover" src="{{ asset('storage/' . $content->prv1_file_name) }}" alt="Video title"
                    class="img-fluid" style="width:100%; margin: 0 auto;">

                {{-- <iframe id="video" width="100%" height="auto" src="https://www.youtube.com/embed/d7lCZ0rpH3o" frameborder="0"
          allow="autoplay; encrypted-media" allowfullscreen>
        </iframe> --}}
                <button id="playbutton" class="play-btn">
                    <div class="row row-cols-2 row-cols-sm-2 justify-content-center">
                        <div class="col-6 text-right left-play-btn">
                            <a href="{{ route('watch.play', $content->id) }}">
                                Play Now
                            </a>
                        </div>
                        <div class="col-6 text-left right-play-btn">
                            <a href="">
                                Watch later
                            </a>
                        </div>
                    </div>
                </button>
            </div>
            <div class="container-fluid">
                <div class="row" id="ratingContentId-{{ $content->id }}">
                    <div class="col-6">
                        <div class="rating">
                            @for ($index = 5; $index >= 1; $index--)
                                @if ($content->rating == $index)
                                    <input type="radio" name="rating" value="{{ $index }}"
                                        id="{{ $index }}" checked><label for="{{ $index }}">☆</label>
                                @else
                                    <input type="radio" name="rating" value="{{ $index }}"
                                        id="{{ $index }}"><label for="{{ $index }}">☆</label>
                                @endif
                            @endfor
                            <p style="color: #9b9b9b; margin: 0%; padding: 10px 2px 0 0px;">Rating:</p>
                        </div>
                        <p style="color: #9b9b9b;">Price: {{ $content->price }}</p>
                    </div>
                    <div class="col-6">
                        <div class="rating" style="text-align: left !important;">
                            @if ($content->rating == 6)
                                <input type="radio" name="rating" value="6" id="6" checked><label
                                    for="6">☆</label>
                            @else
                                <input type="radio" name="rating" value="6" id="6"><label
                                    for="6">☆</label>
                            @endif
                            <p style="color: #9b9b9b; margin: 0%; padding: 10px 10px 0 0px;">Rate : </p>
                        </div>
                        <p style="color: #9b9b9b; margin-bottom: 3px;">

                        </p>
                    </div>
                    <div class="col-12">
                        <h3 style="color:#e9ecef">{{ $content->title }}</h3>
                        <h5 style="color:#9b9b9b">{{ $content->short_des }}</h4>
                            <p style="color: #9b9b9b; margin-bottom: 3px;">
                                Cast: {{ $content->artist_name }}
                            </p>
                    </div>
                    @if ($content->is_favourite === false)
                            <h3 style="color:#e9ecef" id="{{ $content->id }}">Add to Favourite list <a href=""
                                    style="color: #00f9ff; font-size: 16px; background-color: #000000; padding: 1%;" class="checkmark"><i
                                        class="fas fa-plus"></i></a></h3>
                    @else
                    <h3 style="color:#e9ecef" id="{{ $content->id }}">Remove from Favourite list <a href=""
                      style="color: #00f9ff; font-size: 16px; background-color: #000000; padding: 1%;" class="checkmark"><i
                          class="fas fa-minus"></i></a></h3>
                    @endif
                </div>
            </div>
        </section>
        <!--/ Section Three Star /-->
        <section id="section_three" style="margin-bottom: 20%;">
            <div class="wrap-three  d-flex justify-content-between mt-3">
                <div class="title-box">
                    <h3 style="color: #00f9ff; width: 100%;">Up next
                    </h3>

                </div>
            </div>
            <div id="three_carousel" class="owl-carousel ">
                @foreach ($content->relatedContents as $item)
                    <div class="carousel-item-b">
                        <div class="card-box-a card-shadow">
                            <div class="card-body">
                                <label class="label-check" id="{{ $item->id }}">
                                    <input type="checkbox">
                                    <span class="checkmark"></span>
                                </label>
                                <a href="{{ route('watch.index', $item->id) }}">
                                    <img class="card-img-top cover img-responsive"
                                        src="{{ asset('storage/' . $item->prv1_file_name) }}" alt="Card image cap ">
                                    <p class="card-text text-center">
                                        {{ $item->title }}
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
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <script src="{{ asset('assets/dist/owlcarousel/owl.carousel.js') }}"></script>
    <script src="{{ asset('assets/dist/scrollreveal/scrollreveal.min.js') }}"></script>
    <script src="{{ asset('assets/js/main.js') }}"></script>
    <script>
        const Player = document.getElementById('video');
        const PlayBtn = document.getElementById('playbutton');
        const videoCover = document.getElementById('video-cover');

        let times = 0,
            playY;
        const playVideo = PlayBtn.addEventListener('click', () => {
            if (times == 0) {
                playY = Player.src += '?autoplay=1';
                times = 1;
                Player.style.display = 'block';
                PlayBtn.style.display = 'none';
                document.getElementById('video-cover').style.display = 'none';
            }
        });
    </script>

</body>

</html>
