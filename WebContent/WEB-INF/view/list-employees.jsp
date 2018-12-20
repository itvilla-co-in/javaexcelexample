<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">

<head>



    <title>Listing Employees</title>
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
    
    
    
    
    
    
    <!-- Main Content -->
    <div class="main-content">
        <!--=================================
Blog -->
        <section class="iq-blog overview-block-ptb">
            <div class="container">
    		
    		
    		</br></br>
    		<!--  add our html table here -->
		 <div class="row">

                <div class="col-lg-12 col-sm-12 iq-font-black iq-mtb-30"> 
                  <h3 class="small-title iq-tw-6 iq-mb-30 ">Employees </h3> 
                <table id="datable1" class="table display nowrap">
                        <thead>
                          <tr>
                            
					<th scope="col">id</th>
					 
					<th scope="col">Firstname</th>
					<th scope="col">Last Name</th>
					<th scope="col">DOB</th>
					<th scope="col">band</th>
					<th scope="col">Image loc</th>
					<th scope="col">ProfileImage</th>
                          </tr> 
                        </thead>
                        <tbody>
						<!-- loop over and print our customers -->
				<c:forEach var="tempEmployee" items="${employess}">
				
					<!-- construct an "update" link with customer id -->
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempEmployee.id}" />
					</c:url>		
					<tr>
						<th scope="row"> ${tempEmployee.id} </th>
						<td> ${tempEmployee.firstName} </td>
						<td> ${tempEmployee.lastName} </td>
						<td> ${tempEmployee.empDob} </td>
						<td> ${tempEmployee.empBand} </td>
						<td> ${tempEmployee.empProfileimg} </td>
						<td>
						<img alt="image"  height="42" width="42" src="<c:url value="/files/${tempEmployee.empProfileimg}" />">
						</td>					
					</tr>
						</c:forEach>
                        </tbody>
                  </table>




          </div>


</div>
<!-- Table 1 -->
		
		
    		
    		
    		
    		
    
            </div>
        </section>
        <!--=================================
Blog -->
    
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
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/datatables/datatables.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
    $('#datable1').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'copy', 'csv', 'excel', 'pdf', 'print'
        ]
    } );
	} );
	</script>
	
</body>

</html>