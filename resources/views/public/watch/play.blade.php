@include('layouts._partials.headTag', ['title' => "Watch Play"])

<body>
  <section id="top-banner-panel">
    <div class="container-fluid">
      <div class="row row-cols-3 row-cols-sm-3 justify-content-center">
        <div class="col-2 col-sm-1 text-left">
          <a href="{{route('watch.index',[$content->id])}}">
            <img src="{{asset('assets/images/top-left-arrow.png')}}" class="img-fluid">
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
      @php
        $video_file_path = $content->con1_file_name ? $content->con1_file_name : $content->con2_file_name;
      @endphp
      <video width="100%" controls>
        <source src="{{asset('storage/'. $video_file_path)}}" type="video/mp4">
        Your browser does not support HTML video.
        <a href="{{asset('storage/'. $video_file_path)}}">
          download the MP4
        </a>
        and watch it with your favorite video player!
      </video>
      <div class="container-fluid">
        <div class="row">
          <div class="col-6">
            <div class="rating">
              <input type="radio" name="rating" value="5" id="5"><label for="5">☆</label>
              <input type="radio" name="rating" value="4" id="4"><label for="4">☆</label>
              <input type="radio" name="rating" value="3" id="3"><label for="3">☆</label>
              <input type="radio" name="rating" value="2" id="2"><label for="2">☆</label>
              <input type="radio" name="rating" value="1" id="1"><label for="1">☆</label>
              <p style="color: #9b9b9b; margin: 0%; padding: 10px 2px 0 0px;">Rating:</p>
            </div>
            <p style="color: #9b9b9b;">Price: {{$content->price}}</p>
          </div>
          <div class="col-6">
            <div class="rating" style="text-align: left !important;">
              <input type="radio" name="rating" value="6" id="6"><label for="6">☆</label>
              <p style="color: #9b9b9b; margin: 0%; padding: 10px 10px 0 0px;">Rate : </p>
            </div>
            <p style="color: #9b9b9b; margin-bottom: 3px;">
              
            </p>
          </div>
          <div class="col-12">
            <h3 style="color:#e9ecef">{{$content->title}}</h3>
            <h5 style="color:#9b9b9b">{{$content->short_des}}</h4>
            <p style="color: #9b9b9b; margin-bottom: 3px;">
              Cast: {{$content->artist_name}}
            </p>
          </div>
          <div class="col-12">
            <h3 style="color:#e9ecef">Add to Favourite list <a href=""
                style="color: #00f9ff; font-size: 16px; background-color: #000000; padding: 1%;"><i
                  class="fas fa-plus"></i></a></h3>

          </div>
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
              <label class="label-check" id={{$item->id}}>
                <input type="checkbox">
                <span class="checkmark"></span>
              </label>
              <a href="{{route('watch.index',$item->id)}}">
                <img class="card-img-top cover img-responsive" src="{{asset('storage/'.$item->prv1_file_name)}}" alt="Card image cap ">
                <p class="card-text text-center">
                  {{$item->title}}
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
  <footer id="footer-menu-panel">
    <div class="container-fluid">
      <div class="row ">
        <nav class=" navbar-expand navbar-dark bg-dark fixed-bottom ">
          <ul class="navbar">
            <li class="nav-item">
              <a class="nav-link active" href="#">
                <i class="fas fa-home fa-2x"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="#">
                <i class="fas fa-search fa-2x"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="#">
                <i class="far fa-heart fa-2x"></i>
              </a>
            </li>
            </li>
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="#">
                <i class="fas fa-user fa-2x"></i>
              </a>
            </li>
          </ul>

        </nav>
      </div>
    </div>
  </footer>

  <!-- Bootstrap core JavaScript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

  <script src="{{asset('assets/dist/owlcarousel/owl.carousel.js')}}"></script>
  <script src="{{asset('assets/dist/scrollreveal/scrollreveal.min.js')}}"></script>
  <script src="{{asset('assets/js/main.js')}}"></script>
  <script>
    const Player = document.getElementById('video');
    const PlayBtn = document.getElementById('playbutton');
    const videoCover = document.getElementById('video-cover');

    let times = 0, playY;
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