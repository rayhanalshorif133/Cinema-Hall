<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Cinema</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link
        href="https://fonts.googleapis.com/css2?family=Noto+Sans+Bengali:wght@200;300;400;500;600;700&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
        rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- Custom styles for this template -->
    <link href="{{asset('assets/dist/animate/animate.min.css')}}" rel="stylesheet">

    <link href="{{asset('assets/dist/ionicons/css/ionicons.css')}}" rel="stylesheet">
    {{-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons-core.min.css" /> --}}
    {{-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css"/> --}}
    <link href="{{asset('assets/dist/owlcarousel/assets/owl.carousel.css')}}" rel="stylesheet">
    {{-- cdn --}}

    <link href="{{asset('assets/css/style.css')}}" rel="stylesheet">

    @stack('styles')
</head>

<body>
    @include('layouts._partials.header')
    @yield('content')
    @include('layouts._partials.footer')
   
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
  @stack('scripts')
</body>

</html>
