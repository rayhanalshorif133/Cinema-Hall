<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
@include('layouts._partials.headTag',['title' => 'Cinema-Hall | Account'])
<body class="">
    <header>
       
    
        <!-- pc-nav-panel -->
        
        <div id="mobile-nav-panel">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <a class="navbar-brand" href="{{route('home')}}">
                <img src="{{asset("assets/images/logo.png")}}" style="height: 40px; width: auto;" alt="" title="">
              </a>
              <div class="collapse navbar-collapse justify-content-center" id="navbarNavDropdown">
                <ul class="navbar-nav">
                  <li class="nav-item active">
                    <a class="nav-link" href="{{route('home')}}">
                      &nbsp Home <span class="sr-only">(current)</span></a>
                  </li>
        
                  <li class="nav-item dropdown">
                    <a class="nav-link  dropdown-toggle" href="#" data-bs-toggle="dropdown"> Category </a>
                    <ul class="dropdown-menu">
                      @foreach ($categories as $item)
                      @php
                          $url = str_replace(' ', '-', strtolower($item->cat_name));
                      @endphp
                      <li><a class="dropdown-item" href="{{ route('category.detail', [$item->id, $url]) }}">{{$item->cat_name}}</a></li>
                      @endforeach
                    </ul>
                  </li>
                  
                </ul>
        
              </div>
        
            </nav>
        </div>

        <!-- mobile-nav-panel -->
        <section class="nav-top-item" id="pc-nav-panel">
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
                                <a class="nav-link" href="{{ route('home') }}">
                                    &nbsp Home <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link  dropdown-toggle" href="#" data-bs-toggle="dropdown"> &nbsp
                                    Category </a>
                                <ul class="dropdown-menu">
                                    @foreach ($categories as $item)
                                    
                                        @php
                                            $url = str_replace(' ', '-', strtolower($item->cat_name));
                                        @endphp
                                        <li><a class="dropdown-item" href="{{ route('category.detail', [$item->id, $url]) }}">{{ $item->cat_name }}</a>
                                        </li>
                                    @endforeach
                                </ul>
                            </li>
                        </ul>
    
                    </div>
                    <a class="navbar-brand text-center d-block " href="{{ route('home') }}">
    
                        <img src="{{ asset('assets/images/logo.png') }}" style="height: 40px; width: auto;" alt=""
                            title="">
                    </a>
                </div>
                <!-- top-menu-bg -->
            </div>
        </section>
    
        <!--/ Carousel Star /-->
    
        <!-- nav-bar-panel -->
    </header>
    <div class="container subscribeBtn mt-[10rem]">
        
        <div class="justify-content-center ">
            <div class="account_icon">
                <div class="py-4">
                    <i class="fas fa-user fa-2x"></i>
                </div>
                <div>
                    <h3 class="text-white text-2xl">{{$msisdn}}</h3>
                </div>
            </div>
            <div class="account_box_container">
                <div class="box">
                    <h4>Status</h4>
                    <div class="badge">
                        @if($subscriberInfo->status == 1)
                        Active
                        @else
                        Inactive
                        @endif
                    </div>
                </div>
                <div class="box">
                    <h4>Last Charged</h4>
                    <div class="badge">
                        {{$subscriberInfo->last_update}}
                    </div>
                </div>
            </div>
            <!-- <div class="col-4"></div> -->

            @isset($subscriberInfo)
                @if($subscriberInfo->status == 0)
                    <div class="container pt-17px subscribeBtn">
                      <div class="text-center mx-auto">
                        <span class="text-white fsz-1">Enjoy unlimited entertainment @ BDT2.30/day</span><br>  
                        <a href="{{route('subscription.confirmation')}}" class="btn btn-lg bg-red text-white px-5 mt-12px">
                          Subscribe
                        </a>
                      </div>
                    </div>
                @else
                <div class="container pt-17px subscribeBtn">
                    <div class="text-center mx-auto">
                      <span class="text-white fsz-1">Enjoy unlimited entertainment @ BDT2.30/day</span><br>  
                      <a href="{{route('subscription.cancel-confirmation')}}" class="btn btn-lg bg-7c7c7c text-white px-5 mt-12px">
                        Unsubscribe
                      </a>
                    </div>
                  </div>
                @endif
            @endisset
            
            <div class="col-md-4 text-center col-sm-4 mx-auto mt-10rem">
                <a href="{{route('home')}}" class="btn btn-outline-danger text-center btn-block btn-lg text-white">
                    Back to Home
                </a>
            </div>
        </div>
    </div>

    @include('layouts._partials.footer')
   
  <!-- Bootstrap core JavaScript
    ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/toastify-js"></script>
  <script src="{{asset('js/app.js')}}"></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

  <script src="{{asset('assets/dist/owlcarousel/owl.carousel.js')}}"></script>
  <script src="{{asset('assets/dist/scrollreveal/scrollreveal.min.js')}}"></script>
  <script src="{{asset('assets/js/main.js')}}"></script>
  @stack('scripts')
</body>

</html>
