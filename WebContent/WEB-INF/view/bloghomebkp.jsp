<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>



    <title>Qwilo - Multi-purpose Responsive HTML5 Template</title>
    <%@include file="head.jsp" %>
   
</head>

<body>
    <!-- loading -->
    <div id="loading">
        <div id="loading-center">
            <img src="${pageContext.request.contextPath}/resources/images/loader.png" alt="loder">
        </div>
    </div>
    <!-- loading End -->
    <!-- HEADER  -->
    <header class="header-01 white">
        <div class="topbar">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="topbar-left">
                            <ul class="list-inline">
                                <li class="list-inline-item"><i class="fa fa-phone text-blue"></i> +0123 456 789</li>
                                <li class="list-inline-item"><i class="fa fa-envelope-o"> </i> support@Qwilo.com</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="topbar-right text-right">
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <ul class="list-inline iq-left">
                                        <li class="list-inline-item"><a href="#" data-toggle="modal" data-target=".iq-login-from" data-whatever="@mdo"><i class="fa fa-lock"></i>Login</a></li>
                                        <li class="list-inline-item"><a href="#" data-toggle="modal" data-target=".iq-register-from" data-whatever="@fat"><i class="fa fa-user"></i>Register</a></li>
                                    </ul>
                                </li>
                                <li class="list-inline-item"><a href="#"><i class="fa fa-comments-o"></i>Free Consulting</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    <!-- menu start -->    
        
        <%@include file="mainmenu.jsp" %>
        
    <!-- /HEADER END -->
    
    
    <!----------------------------------------------------------- search -->
    <div class="search">
        <button id="btn-search-close" class="btn btn--search-close" aria-label="Close search form">
            <i class="fa fa-close" aria-hidden="true"></i>
        </button>
        <form class="search__form">
            <input class="search__input" name="search" type="search" placeholder="Qwilo Search" autocomplete="off" autocapitalize="off" spellcheck="false">
            <span class="search__info">Hit enter to search or ESC to close</span>
        </form>
        <div class="search__related">
            <div class="search__suggestion iq-font-white">
                <h3 class="iq-font-white iq-tw-6">May We Suggest?</h3>
                <p>#drone #funny #catgif #broken #lost #hilarious #good #red #blue #nono #why #yes #yesyes #aliens #green</p>
            </div>
            <div class="search__suggestion iq-font-white">
                <h3 class="iq-font-white iq-tw-6">Is It This?</h3>
                <p>#good #red #hilarious #blue #nono #why #yes #yesyes #aliens #green #drone #funny #catgif #broken #lost</p>
            </div>
            <div class="search__suggestion iq-font-white">
                <h3 class="iq-font-white iq-tw-6">Where Art Thou?</h3>
                <p>#broken #lost #good #red #funny #hilarious #catgif #blue #nono #why #yes #yesyes #aliens #green #drone</p>
            </div>
        </div>
    </div>
    <!---------------------------------------------------------------- /search END -->
    
    
    
    <!--======= Breadcrumb Left With BG Image =======-->
    <section class="overview-block-ptb iq-over-black-70 jarallax iq-breadcrumb3 text-left iq-font-white" style="background-image: url('images/bg/03.jpg'); background-position: center center; background-repeat: no-repeat; background-size: cover;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-sm-12">
                    <div class="iq-mb-0">
                        <h2 class="iq-font-white iq-tw-6">Blog Page</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-12">
                    <nav aria-label="breadcrumb" class="text-right">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="home-1.html"><i class="ion-android-home"></i> Home</a></li>
                            <li class="breadcrumb-item"><a href="home-1.html">Blog</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Blog Masonry left Sidebar</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </section>
    <!--======= Breadcrumb Left With BG Image =======-->
    
    
    
    
    <!-- Main Content -->
    <div class="main-content">
        <!--=================================
Blog -->
        <section class="iq-blog overview-block-ptb">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-5 col-sm-12 iq-mtb-15">
                        <div class="iq-post-sidebar">
                            <div class="iq-sidebar-widget">
                                <h5 class="iq-tw-6 small-title iq-font-dark">Search Here</h5>
                                <div class="iq-widget-search"> <i class="fa fa-search"></i>
                                    <input type="search" placeholder="Search...." class="form-control placeholder">
                                </div>
                            </div>
                            <div class="iq-sidebar-widget">
                                <h5 class="iq-tw-6 small-title iq-font-dark">About Blog</h5>
                                <p>Lorem ipsum dolor sit ametLorem Ipsum Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, consequat ipsum, nec sagittis sem nibh id elit nibh vel velit auctor aliquet.</p>
                            </div>
                            <div class="iq-sidebar-widget">
                                <h5 class="iq-tw-6 small-title iq-font-dark">Categories</h5>
                                <div class="iq-widget-menu">
                                    <ul class="iq-pl-0">
                                        <li><a href="#"><span>Events <i class="fa fa-angle-right"></i></span></a></li>
                                        <li>
                                            <a href="#"><span>News <i class="fa fa-angle-right"></i></span></a>
                                     
                                        </li>
                                        <li>
                                            <a href="#"><span>Business <i class="fa fa-angle-right"></i></span></a>
                                      
                                        </li>
                                        <li><a href="#"><span>Trending Price <i class="fa fa-angle-right"></i></span></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="iq-sidebar-widget">
                                <h5 class="iq-tw-6 small-title iq-font-dark">Recent Posts</h5>
                                <div class="iq-recent-post media">
                                    <div class="media-left iq-mr-10"> <a href="#"><img alt="" class="media-object" src="images/blog/posts/01.jpg"></a> </div>
                                    <div class="media-body"> <a href="#">Proin gravida velit auctor.</a><span><i class="fa fa-calendar"></i> September 30, 2017</span> </div>
                                </div>
                                <div class="iq-recent-post media">
                                    <div class="media-left iq-mr-10"> <a href="#"><img alt="" class="media-object" src="images/blog/posts/02.jpg"></a> </div>
                                    <div class="media-body"> <a href="#">Proin gravida velit auctor.</a><span><i class="fa fa-calendar"></i> September 30, 2017</span> </div>
                                </div>
                                <div class="iq-recent-post media">
                                    <div class="media-left iq-mr-10"> <a href="#"><img alt="" class="media-object" src="images/blog/posts/03.jpg"></a> </div>
                                    <div class="media-body"> <a href="#">Proin gravida velit auctor.</a><span><i class="fa fa-calendar"></i> September 30, 2017</span> </div>
                                </div>
                                <div class="iq-recent-post media">
                                    <div class="media-left iq-mr-10"> <a href="#"><img alt="" class="media-object" src="images/blog/posts/04.jpg"></a> </div>
                                    <div class="media-body"> <a href="#">Proin gravida velit auctor.</a><span><i class="fa fa-calendar"></i> September 30, 2017</span> </div>
                                </div>
                            </div>
                            <div class="iq-sidebar-widget">
                                <h5 class="iq-tw-6 small-title iq-font-dark">Tags</h5>
                                <ul class="iq-tag list-inline">
                                    <li><a href="#">Bootstrap</a></li>
                                    <li><a href="#">HTML5</a></li>
                                    <li><a href="#">Wordpress</a></li>
                                    <li><a href="#">CSS3</a></li>
                                    <li><a href="#">Creative</a></li>
                                    <li><a href="#">Multipurpose</a></li>
                                    <li><a href="#">Bootstrap</a></li>
                                    <li><a href="#">HTML5</a></li>
                                    <li><a href="#">Wordpress</a></li>
                                </ul>
                            </div>
                            <div class="iq-sidebar-widget">
                                <h5 class="iq-tw-6 small-title iq-font-dark">Meta</h5>
                                <ul class="iq-widget-archives">
                                    <li><a href="#"><i class="fa fa-angle-right"></i> Log in</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i> Entries RSS</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i> Comments RSS </a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i> September 2015</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i> WordPress.org</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-12 iq-mtb-20">
                        <div class="row">
                            <div class="col-lg-6 col-sm-12">
                                <div class="iq-blog-entry white-bg">
                                    <div class="iq-entry-image clearfix">
                                        <img class="img-fluid" src="images/blog/01.jpg" alt="#">
                                        <span class="tag"><i class="ion-image"></i> Photos</span>
                                        <span class="date">12<small>Aug</small></span>
                                    </div>
                                    <div class="iq-blog-detail">
                                        <div class="iq-entry-title iq-mb-10">
                                            <a href="#">
                                                <h5 class="iq-tw-6">Blogpost With Image</h5>
                                            </a>
                                        </div>
                                        <div class="iq-entry-content">
                                            <p>Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                                        </div>
                                        <ul class="iq-entry-meta iq-mt-10">
                                            <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i> Qwilo</a></li>
                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i> 6 like</a></li>
                                            <li><a href="#"><i class="fa fa-comments" aria-hidden="true"></i> 9 comments</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="iq-blog-entry white-bg iq-mt-30">
                                    <div class="iq-entry-image clearfix">
                                        <div class="owl-carousel arrow-1" data-nav-dots="false" data-nav-arrow="true" data-items="1" data-xs-items="1" data-sm-items="1" data-md-items="1" data-lg-items="1" data-autoplay="true">
                                            <div class="item">
                                                <img class="img-fluid" src="images/blog/02.jpg" alt="#">
                                            </div>
                                            <div class="item">
                                                <img class="img-fluid" src="images/blog/03.jpg" alt="#">
                                            </div>
                                        </div>
                                        <span class="tag"><i class="ion-image"></i> Photos</span>
                                        <span class="date">12<small>Aug</small></span>
                                    </div>
                                    <div class="iq-blog-detail">
                                        <div class="iq-entry-title iq-mb-10">
                                            <a href="#">
                                                <h5 class="iq-tw-6">Blogpost With Slider</h5>
                                            </a>
                                        </div>
                                        <div class="iq-entry-content">
                                            <p>Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                        </div>
                                        <ul class="iq-entry-meta iq-mt-10">
                                            <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i> Qwilo</a></li>
                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i> 6 like</a></li>
                                            <li><a href="#"><i class="fa fa-comments" aria-hidden="true"></i> 9 comments</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="iq-blog-entry white-bg iq-video iq-mt-30">
                                    <div class="iq-entry-image clearfix">
                                        <div class="media-wrapper">
                                            <video id="player1" style="max-width:100%;" class="mejs__player" poster="video/01.jpg" preload="none">
                                                <source src="video/01.mp4" type="video/mp4">
                                            </video>
                                        </div>
                                    </div>
                                    <div class="iq-blog-detail">
                                        <span class="tag d-inline"><i class="ion-image"></i> Photos</span>
                                        <span class="date d-inline">12-Aug</span>
                                        <div class="iq-entry-title iq-mb-10 iq-mt-10">
                                            <a href="#">
                                                <h5 class="iq-tw-6">Blogpost With Video</h5>
                                            </a>
                                        </div>
                                        <div class="iq-entry-content">
                                            <p>Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                        </div>
                                        <ul class="iq-entry-meta iq-mt-10">
                                            <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i> Qwilo</a></li>
                                            <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i> 6 like</a></li>
                                            <li><a href="#"><i class="fa fa-comments" aria-hidden="true"></i> 9 comments</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="iq-blog-entry iq-blockquote green-bg iq-mt-30">
                                    <div class="iq-blog-detail">
                                        <span class="tag d-inline"><i class="ion-image"></i> Photos</span>
                                        <span class="date d-inline">12-Aug</span>
                                        <div class="iq-entry-title iq-mb-10 iq-mt-10">
                                            <h5 class="iq-tw-6"><a href="#">Blogpost With Background Color </a></h5>
                                        </div>
                                        <div class="iq-entry-content">
                                            <p>Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                        </div>
                                        <ul class="iq-entry-meta iq-mt-10">
                                            <li><a href="#" class="iq-font-white"><i class="fa fa-user" aria-hidden="true"></i> Qwilo</a></li>
                                            <li><a href="#" class="iq-font-white"><i class="fa fa-heart" aria-hidden="true"></i> 6 like</a></li>
                                            <li><a href="#" class="iq-font-white"><i class="fa fa-comments" aria-hidden="true"></i> 9 comments</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="iq-over-black-60 iq-bg iq-mt-30" style="background-image:url(images/blog/01.jpg); background-position: center center;">
                                    <div class="iq-blog-entry iq-blockquote img">
                                        <div class="iq-blog-detail">
                                            <span class="tag d-inline"><i class="ion-image"></i> Photos</span>
                                            <span class="date d-inline">12-Aug</span>
                                            <div class="iq-entry-title iq-mb-10 iq-mt-10">
                                                <h5 class="iq-tw-6"><a href="#">Blogpost With Background Image </a></h5>
                                            </div>
                                            <div class="iq-entry-content">
                                                <p>Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                            </div>
                                            <ul class="iq-entry-meta iq-mt-10">
                                                <li><a href="#" class="iq-font-white"><i class="fa fa-user" aria-hidden="true"></i> Qwilo</a></li>
                                                <li><a href="#" class="iq-font-white"><i class="fa fa-heart" aria-hidden="true"></i> 6 like</a></li>
                                                <li><a href="#" class="iq-font-white"><i class="fa fa-comments" aria-hidden="true"></i> 9 comments</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-12">
                                <div class="iq-blog-entry iq-youtube white-bg">
                                    <div class="iq-entry-image clearfix">
                                        <div class="video-box">
                                            <iframe src="http://player.vimeo.com/video/23534361"></iframe>
                                        </div>
                                    </div>
                                    <div class="iq-pos-r">
                                        <div class="iq-blog-detail">
                                            <span class="tag"><i class="ion-image"></i> Photos</span>
                                            <span class="date">12-Aug</span>
                                            <div class="iq-entry-title iq-mb-10 iq-mt-10">
                                                <a href="#">
                                                    <h5 class="iq-tw-6">Blogpost With Vimeo</h5>
                                                </a>
                                            </div>
                                            <div class="iq-entry-content">
                                                <p>Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                            </div>
                                            <ul class="iq-entry-meta iq-mt-10">
                                                <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i> Qwilo</a></li>
                                                <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i> 6 like</a></li>
                                                <li><a href="#"><i class="fa fa-comments" aria-hidden="true"></i> 9 comments</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="iq-blog-entry iq-audio white-bg iq-mt-30">
                                    <div class="iq-entry-image clearfix">
                                        <img class="img-fluid" src="images/blog/01.jpg" alt="#">
                                    </div>
                                    <div class="iq-entry-image clearfix">
                                        <div class="players" id="player2-container">
                                            <div class="media-wrapper">
                                                <audio id="player2" preload="none" controls>
                                                    <source src="http://www.largesound.com/ashborytour/sound/AshboryBYU.mp3" type="audio/mp3">
                                                </audio>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="iq-pos-r">
                                        <div class="iq-blog-detail">
                                            <span class="tag"><i class="ion-image"></i> Photos</span>
                                            <span class="date">12-Aug</span>
                                            <div class="iq-entry-title iq-mb-10 iq-mt-10">
                                                <a href="#">
                                                    <h5 class="iq-tw-6">Blogpost With Audio</h5>
                                                </a>
                                            </div>
                                            <div class="iq-entry-content">
                                                <p>Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                                            </div>
                                            <ul class="iq-entry-meta iq-mt-10">
                                                <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i> Qwilo</a></li>
                                                <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i> 6 like</a></li>
                                                <li><a href="#"><i class="fa fa-comments" aria-hidden="true"></i> 9 comments</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="iq-blog-entry iq-youtube white-bg iq-mt-30">
                                    <div class="iq-entry-image clearfix">
                                        <div class="video-box">
                                            <iframe src="https://www.youtube.com/embed/gVCFoBekvaY"></iframe>
                                        </div>
                                    </div>
                                    <div class="iq-pos-r">
                                        <div class="iq-blog-detail">
                                            <span class="tag"><i class="ion-image"></i> Photos</span>
                                            <span class="date">12-Aug</span>
                                            <div class="iq-entry-title iq-mb-10 iq-mt-10">
                                                <a href="#">
                                                    <h5 class="iq-tw-6">Blogpost With Youtube</h5>
                                                </a>
                                            </div>
                                            <div class="iq-entry-content">
                                                <p>Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                            </div>
                                            <ul class="iq-entry-meta iq-mt-10">
                                                <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i> Qwilo</a></li>
                                                <li><a href="#"><i class="fa fa-heart" aria-hidden="true"></i> 6 like</a></li>
                                                <li><a href="#"><i class="fa fa-comments" aria-hidden="true"></i> 9 comments</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="iq-blog-entry iq-blockquote white iq-mt-30">
                                    <div class="iq-blog-detail">
                                        <span class="tag d-inline"><i class="ion-image"></i> Photos</span>
                                        <span class="date d-inline">12-Aug</span>
                                        <div class="iq-entry-title iq-mb-10 iq-mt-10">
                                            <h5 class="iq-tw-6"><a href="#">Blogpost With Background Color </a></h5>
                                        </div>
                                        <div class="iq-entry-content">
                                            <p>Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                        </div>
                                        <ul class="iq-entry-meta iq-mt-10">
                                            <li><a href="#" class="iq-font-white"><i class="fa fa-user" aria-hidden="true"></i> Qwilo</a></li>
                                            <li><a href="#" class="iq-font-white"><i class="fa fa-heart" aria-hidden="true"></i> 6 like</a></li>
                                            <li><a href="#" class="iq-font-white"><i class="fa fa-comments" aria-hidden="true"></i> 9 comments</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="iq-over-black-60 iq-bg jarallax iq-mt-30" style="background-image:url(images/blog/01.jpg); background-position: center center;">
                                    <div class="iq-blog-entry iq-blockquote img">
                                        <div class="iq-blog-detail">
                                            <span class="tag d-inline"><i class="ion-image"></i> Photos</span>
                                            <span class="date d-inline">12-Aug</span>
                                            <div class="iq-entry-title iq-mb-10 iq-mt-10">
                                                <h5 class="iq-tw-6"><a href="#">Blogpost With Fix Background Image </a></h5>
                                            </div>
                                            <div class="iq-entry-content">
                                                <p>Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
                                            </div>
                                            <ul class="iq-entry-meta iq-mt-10">
                                                <li><a href="#" class="iq-font-white"><i class="fa fa-user" aria-hidden="true"></i> Qwilo</a></li>
                                                <li><a href="#" class="iq-font-white"><i class="fa fa-heart" aria-hidden="true"></i> 6 like</a></li>
                                                <li><a href="#" class="iq-font-white"><i class="fa fa-comments" aria-hidden="true"></i> 9 comments</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 iq-mt-40">
                            <nav aria-label="Page navigation example">
                                <ul class="pagination justify-content-center pagination-box">
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous">
<span aria-hidden="true">&laquo;</span>
<span class="sr-only">Previous</span>
</a>
                                    </li>
                                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Next">
<span aria-hidden="true">&raquo;</span>
<span class="sr-only">Next</span>
</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--=================================
Blog -->
        <!--=================================
Action Box -->
        <div class="iq-action-blog green-bg particles-bg iq-ptb-40">
            <canvas id="canvas"></canvas>
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-10 col-md-9 col-sm-8  iq-font-white">
                        <h2 class="iq-font-white iq-fw-4 iq-pb-10">Qwilo is the Most <strong class="iq-font-black">Creative</strong> Template</h2>
                        <div>Lorem Ipsum is simply dummy text ever sincehar the 1500s, when an unknownshil printer took a galley of type and scrambled it to make a type specimen book.It has survived not only five centuries.</div>
                    </div>
                    <div class="col-lg-2 col-md-3 col-sm-4 text-right"><a href="#" class="button white grey iq-re-4-mt30 iq-mr-0">Purchase Now</a> </div>
                </div>
            </div>
        </div>
        <!--=================================
Action Box -->
    </div>
    <!--=================================
Main Content -->
    <!--=================================
Footer -->
    <footer class="iq-footer2 iq-over-black-80 iq-bg jarallax" style="background-image: url('images/bg/22.jpg'); background-position: left center;">
        <div class="footer-top">
            <div class="container">
                <div class="row overview-block-ptb4">
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="logo">
                            <img class="img-fluid" src="images/logo.png" alt="#">
                            <div class="iq-font-white iq-mt-15">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</div>
                            <div class="schedule iq-mt-20">
                                <div class="header iq-lead">Working Days</div>
                                <div class="schedule-blog text-center">
                                    <ul>
                                        <li><span class="iq-tw-6">MON - FRI:</span> 09AM - 05PM</li>
                                        <li><span class="iq-tw-6">SAT:</span> 09AM - 01PM</li>
                                        <li><span class="iq-tw-6">SUN:</span> Enjoy Day</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 menu iq-re-4-mt50">
                        <h5 class="small-title iq-tw-6 iq-font-white">Menu</h5>
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Services</a></li>
                            <li><a href="#">Portfolio</a></li>
                            <li><a href="#">Faqs</a></li>
                            <li><a href="#">Terms &amp; Conditions </a></li>
                            <li><a href="#">Privacy Policy </a></li>
                            <li><a href="#">Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 iq-re-9-mt50">
                        <h5 class="small-title iq-tw-6 iq-font-white">Popular Posts</h5>
                        <ul class="iq-post">
                            <li>
                                <div class="post-img"> <img src="images/gallery/01.jpg" alt="#"> </div>
                                <div class="post-blog">
                                    <a href="#">Ipsum is simply dummy text.</a>
                                    <div class="iq-font-green iq-date"><i class="fa fa-calendar"></i> Nov 10, 2016</div>
                                </div>
                            </li>
                            <li>
                                <div class="post-img"> <img src="images/gallery/02.jpg" alt="#"> </div>
                                <div class="post-blog">
                                    <a href="#">Simply dummy text of the printing.</a>
                                    <div class="iq-font-green iq-date"><i class="fa fa-calendar"></i> Nov 10, 2016</div>
                                </div>
                            </li>
                            <li>
                                <div class="post-img"> <img src="images/gallery/03.jpg" alt="#"> </div>
                                <div class="post-blog">
                                    <a href="#">Dummy text of the printing</a>
                                    <div class="iq-font-green iq-date"><i class="fa fa-calendar"></i> Nov 10, 2016</div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 iq-re-9-mt50">
                        <h5 class="small-title iq-tw-6 iq-font-white">Recent Works</h5>
                        <div class="iq-gallery popup-gallery">
                            <a href="images/flicker/i1.jpg" class="img-thumbnail popup-img" title="Flicker 1">
<img class="img-fluid" src="images/flicker/i1-thumb.jpg" alt="">
</a>
                            <a href="images/flicker/i2.jpg" class="img-thumbnail popup-img" title="Flicker 2">
<img class="img-fluid" src="images/flicker/i2-thumb.jpg" alt="">
</a>
                            <a href="images/flicker/i3.jpg" class="img-thumbnail popup-img" title="Flicker 3">
<img class="img-fluid" src="images/flicker/i3-thumb.jpg" alt="">
</a>
                            <a href="images/flicker/i4.jpg" class="img-thumbnail popup-img" title="Flicker 4">
<img class="img-fluid" src="images/flicker/i4-thumb.jpg" alt="">
</a>
                            <a href="images/flicker/i1.jpg" class="img-thumbnail popup-img" title="Flicker 5">
<img class="img-fluid" src="images/flicker/i1-thumb.jpg" alt="">
</a>
                            <a href="images/flicker/i2.jpg" class="img-thumbnail popup-img" title="Flicker 6">
<img class="img-fluid" src="images/flicker/i2-thumb.jpg" alt="">
</a>
                            <a href="images/flicker/i3.jpg" class="img-thumbnail popup-img" title="Flicker 7">
<img class="img-fluid" src="images/flicker/i3-thumb.jpg" alt="">
</a>
                            <a href="images/flicker/i4.jpg" class="img-thumbnail popup-img" title="Flicker 8">
<img class="img-fluid" src="images/flicker/i4-thumb.jpg" alt="">
</a>
                            <a href="images/flicker/i1.jpg" class="img-thumbnail popup-img" title="Flicker 9">
<img class="img-fluid" src="images/flicker/i1-thumb.jpg" alt="">
</a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <hr>
                    </div>
                </div>
                <div class="row iq-contact">
                    <div class="col-sm-4 iq-mtb-30">
                        <div class="blog">
                            <i aria-hidden="true" class="ion-ios-telephone-outline"></i>
                            <div class="content">
                                <div class="iq-tw-6 title">Phone</div>
                                +0123 456 789
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 iq-mtb-30">
                        <div class="blog">
                            <i aria-hidden="true" class="ion-ios-email-outline"></i>
                            <div class="content">
                                <div class="iq-tw-6 title">Mail</div>
                                mail@qwilo.com
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 iq-mtb-30">
                        <div class="blog">
                            <i aria-hidden="true" class="ion-ios-location-outline"></i>
                            <div class="content">
                                <div class="iq-tw-6 title">Address</div>
                                1234 North Luke Lane, South Bend, IN 360001
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom iq-ptb-20">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="iq-copyright iq-mt-10 iq-font-white">
                            Copyright
                            <span id="copyright">
<script>document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear()))</script>
</span>
                            <a href="#">Qwilo</a> All Rights Reserved
                        </div>
                    </div>
                    <div class="col-sm-6 iq-re-4-mt30">
                        <ul class="iq-media-blog">
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-google"></i></a></li>
                            <li><a href="#"><i class="fa fa-github"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--=================================
Footer -->
    <!--=================================
Login -->
    <div class="modal fade iq-login-from" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h4 class="modal-title iq-tw-5">Login</h4>
                    <a class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times; </span>
</a>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <input type="text" class="form-control" id="recipient-name" placeholder="Enter Name">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" id="recipient-password" placeholder="Password">
                        </div>
                        <a class="button iq-mtb-10" href="#">Sign In</a>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input">Remember Me</label>
                                </div>
                            </div>
                            <div class="col-sm-6 text-right">
                                <a href="#">Forgot Password</a>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer text-center">
                    <div> Don't Have an Account? <a href="#" class="iq-font-yellow">Register Now</a></div>
                    <ul class="iq-media-blog iq-mt-20">
                        <li><a href="# "><i class="fa fa-twitter "></i></a></li>
                        <li><a href="# "><i class="fa fa-facebook "></i></a></li>
                        <li><a href="# "><i class="fa fa-google "></i></a></li>
                        <li><a href="# "><i class="fa fa-github "></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--=================================
Login -->
    <!--=================================
Register -->
    <div class="modal fade iq-register-from" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <h4 class="modal-title iq-tw-5">Register</h4>
                    <a class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</a>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="form-group">
                            <input type="text" class="form-control" id="recipient-username" placeholder="User Name">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="recipient-email" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" id="password" placeholder="Password">
                        </div>
                        <div class="form-check">
                            <label class="form-check-label">
                                <input type="checkbox" class="form-check-input">I Agree to the Terms and Conditions</label>
                        </div>
                        <p>Qwailo galley of type and scrambled it to make a type specimen book.</p>
                        <a class="button iq-mtb-10" href="#">Sign Up</a>
                    </form>
                </div>
                <div class="modal-footer text-center">
                    <div> Already Have an Account? <a href="#" class="iq-font-yellow">Login</a></div>
                    <ul class="iq-media-blog iq-mt-20">
                        <li><a href="# "><i class="fa fa-twitter "></i></a></li>
                        <li><a href="# "><i class="fa fa-facebook "></i></a></li>
                        <li><a href="# "><i class="fa fa-google "></i></a></li>
                        <li><a href="# "><i class="fa fa-github "></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--=================================
Register -->
    <!-- back-to-top -->
    <div id="back-to-top">
        <a class="top" id="top" href="#top"> <i class="ion-ios-upload-outline"></i> </a>
    </div>
    <!-- back-to-top End -->
    <!--================ Jquery =================-->
    <!-- Jquery  -->
    <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
    <!-- bootstrap -->
    <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

    <!-- Mega Menu -->
    <script src="${pageContext.request.contextPath}/resources/js/mega-menu/mega_menu.js"></script>
    <!-- Main -->
    <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    <!-- Custom -->
    <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
</body>

</html>