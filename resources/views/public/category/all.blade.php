@include('layouts._partials.headTag')

<body>
  <section id="top-banner-panel">
    <div class="container-fluid">
      <div class="row row-cols-3 row-cols-sm-3 justify-content-center">
        <div class="col-2 col-sm-1 text-left">
          <a href="{{route('home')}}">
            <img src="{{asset('assets/images/top-left-arrow.png')}}" class="img-fluid">
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
          <div class="card-box-a card-shadow">
            <div class="card-body">
              <label class="label-check">
                <input type="checkbox">
                <span class="checkmark"></span>
              </label>
              <a href="/#{{$category->tag}}">
                <img class="card-img-top cover img-responsive" src="https://picsum.photos/500/300?random={{$key}}" alt="Card image cap ">
                <p class="card-text text-center text-white mt-2">
                  {{$category->cat_name}}
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
  <div id="preloader"></div>
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
    $(document).ready(function () {
      $(window).scroll(function (e) {
        $el = $('.nav-top-item');
        if ($(this).scrollTop() > 30) {
          $('.nav-top-item').addClass("fixedNav");
        } else {
          $('.nav-top-item').removeClass("fixedNav");
        }
      });
    });
  </script>

</body>

</html>