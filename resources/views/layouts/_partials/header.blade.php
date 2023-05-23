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
                            <a class="nav-link" href="{{ route('home') }}">
                                &nbsp Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link  dropdown-toggle" href="#" data-bs-toggle="dropdown"> &nbsp
                                Category </a>
                            <ul class="dropdown-menu">
                                @foreach ($categories as $item)
                                    {{-- category/12/bangla-movie --}}
                                    @php
                                        $url = str_replace(' ', '-', strtolower($item->cat_name));
                                    @endphp
                                    <li><a class="dropdown-item" href="{{ route('category.detail', [$item->id, $url]) }}">{{ $item->cat_name }}</a>
                                    </li>
                                @endforeach
                                <li><a class="dropdown-item" href="{{ route('category.all') }}">All</a></li>
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

    <!-- pc-nav-panel -->
    <!-- ================= -->
    @include('layouts._partials.pc_nav')

    <!--/ Carousel Star /-->
    @include('layouts._partials.slider')

    <!-- nav-bar-panel -->
</header>
