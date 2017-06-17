<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>pg_short_term</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/styles.css" rel="stylesheet">
  <link href="css/default.css" rel="stylesheet">
        <link href="css/component.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet"/>
    <link href="css/header.css" rel="stylesheet"/>
  <!-- Special version of Bootstrap that only affects content wrapped in .bootstrap-iso -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" /> 
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<!--Font Awesome (added because you use icons in your prepend/append)-->
<link rel="stylesheet" href="https://formden.com/static/cdn/font-awesome/4.4.0/css/font-awesome.min.css" />
<!-- for google api-->
<link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<!-- Inline CSS based on choices in "Settings" tab -->
<style>.bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p, .bootstrap-iso form{font-family: Arial, Helvetica, sans-serif; color: black}.bootstrap-iso form button, .bootstrap-iso form button:hover{color: white !important;} .asteriskField{color: red;}</style>
<style>
	.ui-autocomplete { font-size: 10px; }
	#address { width: 300px; }
}
</style>

<style>

#first{ height:500px;}
</style>


  <style>
	.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button1 {
    background-color: white; 
    color: black; 
    border: 2px solid #4CAF50;
}

.button1:hover {
    background-color: #009900;
    color: white;
}


/* Dropdown Button */
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #FFFFFF;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #0000CC}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
    display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
    background-color: #006699;
}

<!-- start search box-->



.search {
    margin-top: -25%;
}
.search .form-section{
	background:rgba(0,0,0,0.6);
	border: 2px solid #414141;
	border-radius: 5px;
	padding: 10px;
}
<!-- end search box-->
  </style>
   <script>
$(window).ready(function(){
      var nowTemp = new Date();
      var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);
      var checkin = $('#checkin').datepicker({
        onRender: function(date) {
          return date.valueOf() < now.valueOf() ? 'disabled' : '';
        }
      }).on('changeDate', function(ev) {
        if (ev.date.valueOf() > checkout.date.valueOf()) {
          var newDate = new Date(ev.date)
          newDate.setDate(newDate.getDate() + 1);
          checkout.setValue(newDate);
        }
        checkin.hide();
        $('#checkout')[0].focus();
      }).data('datepicker');
      var checkout = $('#checkout').datepicker({
        onRender: function(date) {
          return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
        }
      }).on('changeDate', function(ev) {
        checkout.hide();
      }).data('datepicker');
    });

</script>

 
 
 

</head>
<body >

	
    <nav class="navbar navbar-default navbar-inverse" role="navigation" style="background-color: rgb(243,210,230);">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="showHome"><b>Diva Stays</b></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        
      </ul>
     
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
			<ul id="login-dp" class="dropdown-menu">
				<li>
					 <div class="row">
							<div class="col-md-12">
								Login via
								<div class="social-buttons">
									<a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
									<a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
								</div>
                                or
								 <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">Email address</label>
											 <input type="email" name="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">Password</label>
											 <input type="password" name="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
                                             <div class="help-block text-right"><a href="">Forget the password ?</a></div>
										</div>
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
										</div>
										<div class="checkbox">
											 <label>
											 <input type="checkbox"> keep me logged-in
											 </label>
										</div>
								 </form>
							</div>
							<div class="bottom text-center">
								New here ? <a href="showUserReg"><b>Join Us</b></a>
							</div>
					 </div>
				</li>
			</ul>
        </li>
        <li><a href="showHelp">Help</a></li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->


 <jsp:include page="cityDropDown.jsp"></jsp:include>

<div class="jumbotron" style="background-color:#ffffff">
  <div class="container text-center">
      <h1 style="color:#FF0000; font-family:Georgia">DivaStays</h1>     
    <p style="color:#000000; font-family:"Courier New", Courier, monospace;">Your Friendly  neighborhood hostel</p>
    <h5 style="color:#333333;">now in India</h5>
   <a href="showKnowMore"> <button class="button btn-info">Know More</button></a>
  </div> 
  <br>
  
  <div class="container text-center">
  <div class="container text-center" style="background-color:rgb(243,210,230)">
		   		   
  				<h3 align="center" style="color:#000000">Stay with us and enjoy life</h3>
  				<br>
                    
                    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
              <div class="form-section">
                <div class="row">
                    <form role="form" action="showFilter1">
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="sr-only" for="location">Location</label>
                          <input type="text" name="address" class="form-control" id="address" placeholder="Where ?">
                        </div>
                        </div>
                       <div class="col-md-2">
       					<div class="input-group">
       						 <div class="input-group-addon">
         						<i class="fa fa-calendar">
                                 </i>
       						 </div>
       				 		<input class="form-control" id="dpd1" name="dpd1" placeholder="Check In" type="text"/>
      					 </div>
      				</div>
                      <div class="col-md-2">
       					<div class="input-group">
       						 <div class="input-group-addon">
         						<i class="fa fa-calendar">
                                 </i>
       						 </div>
       				 		<input class="form-control" id="dpd2" name="dpd2" placeholder="Check Out" type="text"/>
      					 </div>
      				</div>
                      <div class="col-md-2">
                        <div class="form-group">
                          <label class="sr-only" for="guest">Guest</label>
                          <select id="guest" name="guest" class="form-control">
                              <option value="1">Girls</option>
                           
                          </select>
                        </div>
                      </div>
               
                      <div class="col-md-2">
                      <button class="btn btn-info">Search</a>
                       
                      
                       <!--<button type="submit" class="btn btn-default btn-primary">Search</button>-->
                      </div>
                      </form>
      
                      </div>
                      </div>
                      </div>
                      </div>
    
                    <!-- two more tag add for  puppose is to contain in one-->
                    </div>
					</div>
                
  					<!--
                          <div class="row" align="left">
						 <div class="container" align="left">
                        <ul class="nav nav-pills" role="tablist">
          		          
        		 
          		 <a class="col-lg-1" href="#"><h6 style="color:#00FFFF" align="left">EXPERIANCES</h6></a>
                 <a class="col-lg-1" href="#"><h6 style="color:#00FFFF" align="left">PLACES</h6></a>
                  <a class="col-lg-1" href="#"><h6 style="color:#00FFFF" align="left">FOR YOU</h6></a> 
        		  <a class="col-lg-1" href="#"><h6 style="color:#00FFFF" align="left">HOMES</h6></a>
            		</ul>
      			  
                 </div> <!- this tag is for the border line->
        			</div>-->
  
  <!-- search box start -->
 				
                   		<div class="col-md-12 text-center">
            <h2 class="service-title pad-bt15">Hostels In Pune</h2>
            <hr class="bottom-line">
          </div>
                  
                

				 <!-here we are add the map ->   
             		   
           			<div class="map">
           
				<div id="google-map"><!-here we can add the embeded map URL... ie hotels in pune>
<iframe src="https://www.google.com/maps/d/embed?mid=1c-xBCOm4KzrFzL7o24ZlWuwAhSg" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>                
               
        	</div>
        </div>




<br>
  
  </div>
</div>
  
  <!-- search box end -->
<div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <h2 class="service-title pad-bt15">Limited Deals</h2>
            <hr class="bottom-line">
          </div>
      
  		<div class="col-sm-4"> 
        		     <a href="showDeal1" class="gallery-box" data-toggle="modal" data-src="images/pg_hostel_img1.png">
                     <img src="images/pg_hostel_img5.png" class="img-responsive" alt="Image 1">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>For Checkin Today</h4>
                                    <h4>Minimum</h4>
                                    <h4>vacation</h4>
                                </div>
                            </div>
                        </div></a>
                    
        
        
    		</div>
 
        <div class="col-sm-4">
        		            <a href="showDeal1" class="gallery-box" data-toggle="modal" data-src="images/pg_hostel_img1.png">
                        <img src="images/pg_hostel_img6.png" class="img-responsive" alt="Image 1">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>For Checkin Today</h4>
                                    <h4>Minimum 35% off</h4>
                                    
                                </div>
                            </div>
                        </div>
                    </a>

    	</div>
        <div class="col-sm-4">
            <a href="showDeal1" class="gallery-box" data-toggle="modal" data-src="images/pg_hostel_img1.png">
                        <img src="images/pg_hostel_img7.png" class="img-responsive" alt="Image 1">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>For Checkin Today</h4>
                                    <h4>Minimum 35 % off</h4>
                                    <h4>vacation</h4>
                                </div>
                            </div>
                        </div>
                    </a>
        
        
   	  </div>
  </div>
</div>

<section id="three" class="no-padding">
        <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="margin-top-0 text-primary">Diva Stays for all your needs</h2>
                    <hr class="primary">
                </div>
            </div>
        </div>
            <div class="row no-gutter">
                <div class="col-lg-6 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="images/pg_hostel_img1.png">
                        <img src="images/pg_hostel_img1.png" class="img-responsive" alt="Image 1">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>Our cutomized holiday packages at handpicked</h4>
                                    <h4>destinations will help you have an extraordinary</h4>
                                    <h4>vacation</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-6 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./assets/beach.png">
                        <img src="images/pg_hostel_img2.png" class="img-responsive" alt="Image 2">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>Enjoy the mystic beauty of places at collection of </h4>
                                    <h4>handpicked hostels across India</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-6 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./assets/bike.png">
                        <img src="images/pg_hostel_img3.png" class="img-responsive" alt="Image 4">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>Diva Stayss for</h4>
                                    <h3>BUISNESS</h3>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
				<div class="clearfix hidden-lg"> </div>
                <div class="col-lg-6 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./assets/colors.png">
                        <img src="images/pg_hostel_img4.png" class="img-responsive" alt="Image 6">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>Diva Stayss for</h4>
                                    <h4>Tommorow's people</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </section>
    
<div class="jumbotron">
  <div class="container text-center">
  <H2 style="color:#000000;">As Spotted In</H2>
	 <div class="row">
  		<div class="col-sm-4">
    		<H3>Times Of India</H3>
     		 <p>Some text..</p>
    	</div>
        <div class="col-sm-4">
    		<H3>Forbs</H3>
     		 <p>Some text..</p>
    	</div>
  		<div class="col-sm-4">
    		<H3>The Hindu</H3>
     		 <p>Some text..</p>
    	</div>
      </div>
  </div>
</div>

				
                
                
                
           <!--  from here get in touch -->
    
    
  
    <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="margin-top-0 wow fadeIn" style="margin-top:10px">Get in Touch</h2>
                    <hr class="primary">
                    <p>We love feedback. Fill out the form below and we'll get back to you as soon as possible.</p>
                </div>
                <div class="col-lg-10 col-lg-offset-1 text-center">
                    <form class="contact-form row" action="sendMail" method="post" >
                        <div class="col-md-4">
                             <label></label>
                            <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Name" required>
                            <span id="checkName" class="checkName"></span>
                        </div>
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" class="form-control" id="email" name="email" placeholder="Email" required>
                            <span id="checkEmail" class="checkEmail"></span>
                        </div>
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="Phone" required>
                            
                            <span id="checkPhoneNumber" class="checkPhoneNumber"></span>
                        </div>
                        <div class="col-md-12">
                            <label></label>
                            <textarea class="form-control" rows="8" placeholder="Your message here.." name="message" required></textarea>
                        </div>
                        <div class="col-md-3 col-md-offset-4">
                            <label></label>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" data-toggle="modal" data-target="#alertModal" class="btn btn-info" id="register" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SUBMIT<i class="ion-android-arrow-forward"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</button><br>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </section>
    

  <jsp:include page="footer.jsp"></jsp:include>

<!-- Extra JavaScript/CSS added manually in "Settings" tab -->
<!-- Include jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
var nowTemp = new Date();
var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);
 
var checkin = $('#dpd1').datepicker({
  onRender: function(date) {
    return date.valueOf() < now.valueOf() ? 'disabled' : '';
  }
}).on('changeDate', function(ev) {
  if (ev.date.valueOf() > checkout.date.valueOf()) {
    var newDate = new Date(ev.date)
    newDate.setDate(newDate.getDate() + 1);
    checkout.setValue(newDate);
  }
  checkin.hide();
  $('#dpd2')[0].focus();
}).data('datepicker');
var checkout = $('#dpd2').datepicker({
  onRender: function(date) {
    return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
  }
}).on('changeDate', function(ev) {
  checkout.hide();
}).data('datepicker');
</script>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
 <script src="js/cbpHorizontalMenu.js" type="text/javascript"></script>
 <script src="js/modernizr.custom.js" type="text/javascript"></script>
  <script src="js/jquery.easing.min.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/scripts.js"></script>
		<script>
			$(function() {
				cbpHorizontalMenu.init();
			});
		</script>
<!---get in touch validation-->
<script src="js/userFormVerify.js"></script>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script>
		$(function() {
			$("#address").autocomplete({
				source : function(request, response) {
					$.ajax({
						url : "listAddress",
						data : {
							input : request.term
						},
						success : function(data) {
							response(data);
						}
					});
				}
			});
		});
	</script>
</body>
</html>