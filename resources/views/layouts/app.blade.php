@include('layouts._partials.headTag')
<body>
    @include('layouts._partials.header')
    <div class="container pt-17px subscribeBtn">
      <div class="text-center mx-auto">
  <span class="text-white fsz-1">Enjoy unlimited entertainment @ BDT2.30/day</span><br>  
  <a href="http://mmgamers.b2mwap.com/subscription/confirmation" class="btn btn-lg bg-red text-white px-5 mt-12px">
    Subscribe
  </a>
</div>
</div>
    @yield('content')
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
