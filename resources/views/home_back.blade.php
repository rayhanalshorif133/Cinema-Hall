@extends('layouts.app')

@section('content')

    @foreach ($categories as $category)
    <section id="section_one">
        <div class="wrap-one d-flex justify-content-between">
            <div class="title-box">
                <h3 class="title-a">
                    {{$category->cat_name}}
                </h3>
            </div>
            <div class="more-link">
                <a href="#">see all
                    <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                </a>
            </div>
        </div>
    </section>
    @endforeach
    <!--/ Section one Star /-->
    <section id="section_one">
        <div class="wrap-one  d-flex justify-content-between">
            <div class="title-box">
                <h3 class="title-a">New Release</h3>
            </div>
            <div class="more-link">
                <a href="#">see all
                    <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                </a>
            </div>
        </div>
        <div id="one_carousel" class="owl-carousel">
            <div class="carousel-item-b">
                <div class="card-box-a card-shadow">
                    <div class="card-body">
                        <label class="label-check">
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                        <a href="">
                            <img class="card-img-top cover img-responsive" src="{{asset('assets/images/futered-img.png')}}"
                                alt="Card image cap ">
                            <p class="card-text text-center">Movie name</p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item-b">
                <div class="card-box-a card-shadow">
                    <div class="card-body">
                        <label class="label-check">
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                        <a href="">
                            <img class="card-img-top cover img-responsive" src="{{asset('assets/images/futered-img-1.png')}}"
                                alt="Card image cap ">
                            <p class="card-text text-center">Movie name</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!--/ Section one End /-->
    <!--/ Section Two Star /-->
    <section id="section_two">
        <div class="wrap-two  d-flex justify-content-between mt-3">
            <div class="title-box">
                <h3 class="title-a">Most Popular</h3>
            </div>
            <div class="more-link">
                <a href="#">see all
                    <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                </a>
            </div>
        </div>
        <div id="two_carousel" class="owl-carousel ">
            <div class="carousel-item-b">
                <div class="card-box-a card-shadow">
                    <div class="card-body">
                        <label class="label-check">
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                        <a href="">
                            <img class="card-img-top cover img-responsive" src="{{asset('assets/images/img-1.png')}}" alt="Card image cap ">
                            <p class="card-text text-center">Name -1 sdfsf asdf asdf adassd</p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item-b">
                <div class="card-box-a card-shadow">
                    <div class="card-body">
                        <label class="label-check">
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                        <a href="">
                            <img class="card-img-top cover img-responsive" src="{{asset('assets/images/img-2.png')}}" alt="Card image cap ">
                            <p class="card-text text-center">Name -1</p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item-b">
                <div class="card-box-a card-shadow">
                    <div class="card-body">
                        <label class="label-check">
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                        <a href="">
                            <img class="card-img-top cover img-responsive" src="{{asset('assets/images/img-3.png')}}" alt="Card image cap ">
                            <p class="card-text text-center">Name -1</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
    <!--/ Section two End /-->
    <!--/ Section Three Star /-->
    <section id="section_three">
        <div class="wrap-three  d-flex justify-content-between mt-3">
            <div class="title-box">
                <h3 class="title-a">Fan Favourite</h3>
            </div>
            <div class="more-link">
                <a href="#">Sell all
                    <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                </a>
            </div>
        </div>
        <div id="three_carousel" class="owl-carousel ">
            <div class="carousel-item-b">
                <div class="card-box-a card-shadow">
                    <div class="card-body">
                        <label class="label-check">
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                        <a href="">
                            <img class="card-img-top cover img-responsive" src="{{asset('assets/images/img-4.png')}}" alt="Card image cap ">
                            <p class="card-text text-center">Name -1 sdfsf asdf asdf adassd</p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item-b">
                <div class="card-box-a card-shadow">
                    <div class="card-body">
                        <label class="label-check">
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                        <a href="">
                            <img class="card-img-top cover img-responsive" src="{{asset('assets/images/img-5.png')}}" alt="Card image cap ">
                            <p class="card-text text-center">Name -1</p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item-b">
                <div class="card-box-a card-shadow">
                    <div class="card-body">
                        <label class="label-check">
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                        <a href="">
                            <img class="card-img-top cover img-responsive" src="{{asset('assets/images/img-6.png')}}" alt="Card image cap ">
                            <p class="card-text text-center">Name -1</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
    <!--/ Section three End /-->
    <!--/ Section Four Star /-->
    <section id="section_four" style="margin-bottom: 15%;">
        <div class="wrap-four  d-flex justify-content-between mt-3">
            <div class="title-box">
                <h3 class="title-a">Recomended for You</h3>
            </div>
            <div class="more-link">
                <a href="#">Seel all
                    <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>
                </a>
            </div>
        </div>
        <div id="four_carousel" class="owl-carousel ">
            <div class="carousel-item-b">
                <div class="card-box-a card-shadow">
                    <div class="card-body">
                        <label class="label-check">
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                        <a href="">
                            <img class="card-img-top cover img-responsive" src="{{asset('assets/images/img-7.png')}}" alt="Card image cap ">
                            <p class="card-text text-center">Name -1 sdfsf asdf asdf adassd</p>
                        </a>
                    </div>
                </div>
            </div>
            <div class="carousel-item-b">
                <div class="card-box-a card-shadow">
                    <div class="card-body">
                        <label class="label-check">
                            <input type="checkbox">
                            <span class="checkmark"></span>
                        </label>
                        <a href="">
                            <img class="card-img-top cover img-responsive" src="{{asset('assets/images/img-5.png')}}" alt="Card image cap ">
                            <p class="card-text text-center">Name -1</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
    <!--/ Section four End /-->
@endsection
