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
              <li><a class="dropdown-item" href="{{route('category.all')}}">All</a></li>
            </ul>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">&nbsp Logout</a>
          </li>
        </ul>

      </div>

    </nav>
</div>