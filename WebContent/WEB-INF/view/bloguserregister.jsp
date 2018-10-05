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
                <img src="images/loader.png" alt="loder">
            </div>
        </div>
        <!-- loading End -->
        <!--=================================
        MAIN CONTENT -->
        <div class="main-content">
            <!--================================
            Login -->
            <section class="overview-block-ptb150 iq-over-black-60 iq-bg" style="background-image: url('images/bg/39.jpg'); background-position: left center;">
                <div class="container">
                    
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="heading-title text-center">
                                <h2 class="title iq-tw-6 iq-font-white">Register & Start Bloging for FREE !!</h2>
                                
                            </div>
                        </div>
                    </div>
                    <div class="row justify-content-md-center">
                        <div class="col-sm-8">
                            <div class="iq-register no-brd iq-pt-40 iq-pb-30 iq-plr-30">
                                <form>
                                    <div class="form-group">
                                        <label for="exampleInputName">Name</label>
                                        <input type="text" class="form-control" id="exampleInputName" placeholder="Name">
                                    </div>
                                    
                                    <div class="form-group iq-mt-20">
                                        <label for="exampleInputEmail">Email</label>
                                        <input type="email" class="form-control" id="exampleInputEmail" placeholder="Email">
                                    </div>
                                    <div class="form-group iq-mt-20">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>
                                    <div class="form-group iq-mt-20">
                                        <label for="exampleInputPassword1">Repeat Password</label>
                                        <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Repeat Password">
                                    </div>
                                    <button type="submit" class="button iq-mt-40">Sign Up</button>
                                </form>
                                
                                <div class="row iq-mt-30">
                                    <div class="col-sm-6">
                                        <ul class="iq-media iq-mtb-10">
                                            <li><a href="#" class="fb"><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="#" class="tw"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#" class="gplus"><i class="fa fa-google"></i></a></li>
                                            <li><a href="#" class="lkd"><i class="fa fa-linkedin"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="text-right iq-mtb-10">
                                            <div class="iq-font-white iq-tw-6">Already Have an Account?<a href="#" class="iq-font-green iq-tw-6"> Login</a></div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    
                </div>
            </section>
            <!--================================
            Login -->
        </div>
        <!--=================================
        Main Content -->

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