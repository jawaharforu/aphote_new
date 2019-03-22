@extends('layouts.default')
@section('content')
<header class="masthead text-white text-center">
    <div class="overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-xl-9 mx-auto">
                <h1 class="mb-5"></h1>
            </div>
            <div class="col-md-10 col-lg-8 col-xl-7 mx-auto">
                <form id="SearchFormBoxCon" name="SearchFormBoxCon" method="get" novalidate="novalidate" _lpchecked="1">
                    <input type="hidden" name="_token" value="">
                    <div class="col-lg-12" style="background: white;padding: 0;">
                        <div class="input-group">
                            <input name="q" id="searchText" class="form-control Showadvanced required" type="text" placeholder="Enter a location, builder, project or RERA ID" aria-required="true">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-secondary">Search Properties</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</header>
<section class="projects section-padding">
    <div class="mb-5 section-title text-center featured-collections">
        <h2 class="btn btn-style">Featured Collections</h2>
    </div>
    <div class="container">
        <div class="row justify-content-end">
            <div class="list-and-grid-view m-2">
                <strong>Display</strong>
                <a href="#" id="list_link" class="btn btn-default btn-sm">
                    <i class="fa fa-list" aria-hidden="true"></i> List
                </a>
                <a href="#" id="grid_link" class="btn btn-default btn-sm">
                    <i class="fa fa-th" aria-hidden="true"></i> Grid
                </a>
            </div>
        </div>
        <div id="project-cards-row" class="row ">
            <div class="item  col-lg-4 col-md-4">
                <div class="card card-list">
                    <a target="_blank" href="#">
                        <div class="card-img">
                            <span class="badge badge-success">RERA Registered</span>
                            <img class="card-img-top" src="https://via.placeholder.com/1168X652&amp;text=APHOTE" alt="Provident #TooGoodHomes">
                        </div>
                    </a>
                    <div class="card-body project-info-blk"><a target="_blank" href="#">
                            <h3 class="text-center project-name">Provident #TooGoodHomes</h3>
                            <p class="property-block-address">
                                <span class="property-address-l1">Thanisandra main road, North Bangalore, Yelahanka</span>
                                <span class="property-address-l2">Under Construction - Residential Apartment</span>
                            </p>
                            <h3 class="card-title mb-2 project-price">39.9 Lakhs</h3>
                            <div class="row units-details-block">
                                <div class="col-lg-6">
                                    <p class="sub-title">2BHK... <br>
                                        <span>249 Units</span>
                                    </p>
                                </div>
                                <div class="col-lg-6">
                                    <p class="sub-title">536 - 574 <br>
                                        <span>Area sq.ft</span>
                                    </p>
                                </div>
                            </div>
                        </a>
                        <div class="row"><a target="_blank" href="#">
                            </a>
                            <div class="col-lg-12">
                                <div class="project-btns-grup">
                                    <a target="_blank" href="#" class="btn btn-style m-1">View Project</a>
                                    <a href="javascript:void()" class="btn btn-style m-1">Enquire Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item  col-lg-4 col-md-4">
                <div class="card card-list">
                    <a target="_blank" href="#">
                        <div class="card-img">
                            <span class="badge badge-success">RERA Registered</span>
                            <img class="card-img-top" src="https://via.placeholder.com/1168X652&amp;text=APHOTE" alt="Provident #TooGoodHomes">
                        </div>
                    </a>
                    <div class="card-body project-info-blk"><a target="_blank" href="#">
                            <h3 class="text-center project-name">Provident #TooGoodHomes</h3>
                            <p class="property-block-address">
                                <span class="property-address-l1">Thanisandra main road, North Bangalore, Yelahanka</span>
                                <span class="property-address-l2">Under Construction - Residential Apartment</span>
                            </p>
                            <h3 class="card-title mb-2 project-price">39.9 Lakhs</h3>
                            <div class="row units-details-block">
                                <div class="col-lg-6">
                                    <p class="sub-title">2BHK... <br>
                                        <span>249 Units</span>
                                    </p>
                                </div>
                                <div class="col-lg-6">
                                    <p class="sub-title">536 - 574 <br>
                                        <span>Area sq.ft</span>
                                    </p>
                                </div>
                            </div>
                        </a>
                        <div class="row"><a target="_blank" href="#">
                            </a>
                            <div class="col-lg-12">
                                <div class="project-btns-grup">
                                    <a target="_blank" href="#" class="btn btn-style m-1">View Project</a>
                                    <a href="javascript:void()" class="btn btn-style m-1">Enquire Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item  col-lg-4 col-md-4">
                <div class="card card-list">
                    <a target="_blank" href="#">
                        <div class="card-img">
                            <span class="badge badge-success">RERA Registered</span>
                            <img class="card-img-top" src="https://via.placeholder.com/1168X652&amp;text=APHOTE" alt="Provident #TooGoodHomes">
                        </div>
                    </a>
                    <div class="card-body project-info-blk"><a target="_blank" href="#">
                            <h3 class="text-center project-name">Provident #TooGoodHomes</h3>
                            <p class="property-block-address">
                                <span class="property-address-l1">Thanisandra main road, North Bangalore, Yelahanka</span>
                                <span class="property-address-l2">Under Construction - Residential Apartment</span>
                            </p>
                            <h3 class="card-title mb-2 project-price">39.9 Lakhs</h3>
                            <div class="row units-details-block">
                                <div class="col-lg-6">
                                    <p class="sub-title">2BHK... <br>
                                        <span>249 Units</span>
                                    </p>
                                </div>
                                <div class="col-lg-6">
                                    <p class="sub-title">536 - 574 <br>
                                        <span>Area sq.ft</span>
                                    </p>
                                </div>
                            </div>
                        </a>
                        <div class="row"><a target="_blank" href="#">
                            </a>
                            <div class="col-lg-12">
                                <div class="project-btns-grup">
                                    <a target="_blank" href="#" class="btn btn-style m-1">View Project</a>
                                    <a href="javascript:void()" class="btn btn-style m-1">Enquire Now</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>
<section class="section-padding bg-grey">
    <div class="section-title text-center mb-5">
        <h2 class="btn btn-style">Trending Projects</h2>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="card bg-dark text-white card-overlay">
                    <a href="">
                        <img class="card-img" src="https://phplaravel-252511-785143.cloudwaysapps.com/img/overlay/4.jpeg" alt="Card image">
                        <div class="card-img-overlay">
                            <h3 class="card-title text-white">New Launches</h3>
                            <p class="card-text text-white btn btn-primary">23 Properties</p>
                        </div>
                    </a>
                    .
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card bg-dark text-white card-overlay">
                    <a href="">
                        <img class="card-img" src="https://phplaravel-252511-785143.cloudwaysapps.com/img/overlay/5.png" alt="Card image">
                        <div class="card-img-overlay">
                            <h3 class="card-title text-white">Budget Home</h3>
                            <p class="card-text text-white btn btn-primary">3 Properties</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="card bg-dark text-white card-overlay">
                    <a href="">
                        <img class="card-img" src="https://phplaravel-252511-785143.cloudwaysapps.com/img/overlay/1.jpg" alt="Card image">
                        <div class="card-img-overlay">
                            <h3 class="card-title text-white">Ready to Move Flats</h3>
                            <p class="card-text text-white btn btn-primary">11 Properties</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-4 col-md-4">
                <div class="card bg-dark text-white card-overlay">
                    <a href="">
                        <img class="card-img" src="https://phplaravel-252511-785143.cloudwaysapps.com/img/overlay/2.jpg" alt="Card image">
                        <div class="card-img-overlay">
                            <h3 class="card-title text-white">Luxury Properties</h3>
                            <p class="card-text text-white btn btn-primary">12 Properties</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-4 col-md-4">
                <div class="card bg-dark text-white card-overlay">
                    <a href="">
                        <img class="card-img" src="https://phplaravel-252511-785143.cloudwaysapps.com/img/overlay/3.jpg" alt="Card image">
                        <div class="card-img-overlay">
                            <h3 class="card-title text-white">Under Construction</h3>
                            <p class="card-text text-white btn btn-primary">21 Properties</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="projects section-padding">
    <div class="mb-5 section-title text-center featured-collections">
        <h2 class="btn btn-style">Featured Builders</h2>
    </div>
    <div class="container">
        <div id="project-cards-row" class="row ">

        </div>
    </div>
    </div>
</section>
@stop
