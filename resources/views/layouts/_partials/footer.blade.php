<style>
    .bg_modal {
        background-color: #171717 !important;
    }
</style>
<!-- Modal -->
<div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="searchModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content bg_modal text-white">
            <div class="modal-body">
                {{-- input --}}
                <form action="{{route('search.keyword')}}" method="post">
                    @csrf
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Search" aria-label="Recipient's username"
                            aria-describedby="button-addon2" id="searchInput" name="searchInput">
                        <button class="btn btn-outline-secondary searchBtn" type="submit" id="button-addon2">
                          <i class="fas fa-search"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<footer id="footer-menu-panel">
    <div class="container-fluid">
        <div class="row ">
            <nav class=" navbar-expand navbar-dark bg-dark fixed-bottom ">
                <ul class="navbar">
                    <li class="nav-item">
                        <a class="nav-link active" href="{{ route('home') }}">
                            <i class="fas fa-home fa-2x"></i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link search_icon" aria-current="page" href="#">
                            <i class="fas fa-search fa-2x"></i>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="{{ route('favorite.show-all-favorite') }}">
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

{{-- axios cdn --}}
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
{{-- sweetalert2 cdn --}}
