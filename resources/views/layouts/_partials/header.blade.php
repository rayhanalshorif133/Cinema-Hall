<header>
    <section class="nav-top-item">
      <div id="nav-container">
        <div class="bg"></div>
        <div class="button" tabindex="0">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </div>
        <div class="top-menu-bg">
          <div id="nav-content" tabindex="0">

            <ul class="navbar-nav bg-transparent fixed-top" id="sidebar-wrapper">
              <li class="nav-item active">
                <a class="nav-link" href="#">
                  &nbsp Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#"> &nbsp Popular</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">&nbsp Fan
                  Favourite</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">&nbsp New Release</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">&nbsp Recomended</a>
              </li>

              <li class="nav-item dropdown">
                <a class="nav-link  dropdown-toggle" href="#" data-bs-toggle="dropdown"> &nbsp Category </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#"> Movie</a></li>
                  <li><a class="dropdown-item" href="#"> Video Clip </a></li>
                  <li><a class="dropdown-item" href="#"> Music </a></li>
                  <li><a class="dropdown-item" href="#"> Natok </a></li>
                </ul>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link  dropdown-toggle" href="#" data-bs-toggle="dropdown">&nbsp Genere</a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="#"> Action</a></li>
                  <li><a class="dropdown-item" href="#">Drama</a></li>
                  <li><a class="dropdown-item" href="#"> Comedy </a></li>
                  <li><a class="dropdown-item" href="#"> Romance </a></li>
                  <li><a class="dropdown-item" href="#"> Thriller </a></li>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">&nbsp Watchlist</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">&nbsp Account</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">&nbsp Logout</a>
              </li>
            </ul>

          </div>
          <a class="navbar-brand text-center d-block " href="#">

            <img src="images/logo.png" style="height: 40px; width: auto;" alt="" title="">
          </a>
        </div>
        <!-- top-menu-bg -->
      </div>
    </section>
    
    <!-- mobile-nav-panel -->
    <!-- ================= -->
    @include('layouts._partials.mobile_nav')

    <!--/ Carousel Star /-->
    @include('layouts._partials.slider')
    
    <!-- nav-bar-panel -->
  </header>