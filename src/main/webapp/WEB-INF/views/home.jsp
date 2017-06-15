<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/styles.css" rel="stylesheet">
  <link href="css/default.css" rel="stylesheet">
  <link href="css/component.css" rel="stylesheet">
  <link href="css/custom.css" rel="stylesheet"/>
  <!-- Special version of Bootstrap that only affects content wrapped in .bootstrap-iso -->
  <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" /> 

<!--Font Awesome (added because you use icons in your prepend/append)-->
<link rel="stylesheet" href="https://formden.com/static/cdn/font-awesome/4.4.0/css/font-awesome.min.css" />
<!-- for google api-->
<link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500">
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>

<!-- Inline CSS based on choices in "Settings" tab -->
<style>.bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p, .bootstrap-iso form{font-family: Arial, Helvetica, sans-serif; color: black}.bootstrap-iso form button, .bootstrap-iso form button:hover{color: white !important;} .asteriskField{color: red;}</style>



<style>
#login-dp{
    min-width: 250px;
    padding: 14px 14px 0;
    overflow:hidden;
    background-color:rgba(255,255,255,.8);
}
#login-dp .help-block{
    font-size:12px    
}
#login-dp .bottom{
    background-color:rgba(255,255,255,.8);
    border-top:1px solid #ddd;
    clear:both;
    padding:14px;
}
#login-dp .social-buttons{
    margin:12px 0    
}
#login-dp .social-buttons a{
    width: 49%;
}
#login-dp .form-group {
    margin-bottom: 10px;
}
.btn-fb{
    color: #fff;
    background-color:#3b5998;
}
.btn-fb:hover{
    color: #fff;
    background-color:#496ebc 
}
.btn-tw{
    color: #fff;
    background-color:#55acee;
}
.btn-tw:hover{
    color: #fff;
    background-color:#59b5fa;
}
@media(max-width:768px){
    #login-dp{
        background-color: inherit;
        color: #fff;
    }
    #login-dp .bottom{
        background-color: inherit;
        border-top:0 none;
    }
}
#first{ height:500px;}
</style>


  <style>
	.button {
    background-color: rgb(243,210,230); /* Green */
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
<script>
            var autocomplete;
            function initialize() {
              autocomplete = new google.maps.places.Autocomplete(
                  /** @type {HTMLInputElement} */(document.getElementById('autocomplete')),
                  { types: ['geocode'] });
              google.maps.event.addListener(autocomplete, 'place_changed', function() {
              });
            }
        </script>
</head>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body  onload="initialize()">
	
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
      <a class="navbar-brand" href="showHome"><b>DivaStays</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        
        </li>
      </ul>
    
      <ul class="nav navbar-nav navbar-right">
      <li><a href="showOwnerPage">House Owner</a></li>
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
								 <form class="form" role="form" method="post"  accept-charset="UTF-8" id="login-nav">
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">Email address</label>
											 <input type="email" name="email" class="form-control" id="email" placeholder="Email address" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">Password</label>
											 <input type="password" name="password" class="form-control" id="password"  placeholder="Password" required>
                                             <div class="help-block text-right"><a href="">Forget the password ?</a></div>
                                             <span id="empIdErr" class="errMsg"></span>
										</div>
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block" onClick="checkLogin();">Sign in</button>
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
<%= session.getAttribute( "email" ) %>

<!-- dropdown start-->

<nav id="cbp-hrmenu" class="cbp-hrmenu">
					<ul>
						<li>
							<a href="#">Pune</a>
							<div class="cbp-hrsub">
								<div class="cbp-hrsub-inner"> 
                                
									<div>
										<h4>DivaStays Near Airport</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays2</a></li>
											<li><a href="#">DivaStays3</a></li>
											<li><a href="#">DivaStays4</a></li>
											<li><a href="#">DivaStays5</a></li>
										</ul>
									</div>
                                    
									<div>
										<h4>DivaStays Near Railway Station</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays2</a></li>
											<li><a href="#">DivaStays3</a></li>
											<li><a href="#">DivaStays4</a></li>
											<li><a href="#">DivaStays5</a></li>
										</ul>
									</div>
									<div>
										<h4>DivaStays Near Colleges</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays2</a></li>
											<li><a href="#">DivaStays3</a></li>
										</ul>
										<h4>DivaStays Near IT Compnies</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays2</a></li>
                                            <li><a href="#">DivaStays3</a></li>
										</ul>
									</div>
                                    
								</div><!-- /cbp-hrsub-inner -->
							</div>
						  <!-- /cbp-hrsub -->
						</li>
						<li>
							<a href="#">Mumbai</a>
							<div class="cbp-hrsub">
								<div class="cbp-hrsub-inner">
									<div>
										<h4>DivaStays Near Airport</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays2</a></li>
											<li><a href="#">DivaStays3</a></li>
										</ul>
										<h4>DivaStays Near Railway Station</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays2</a></li>
										</ul>
									</div>
                                    
									<div>
										<h4>DivaStays Near Colleges</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
										</ul>
									</div>
                                    
									<div>
										<h4>DivaStays Near IT Compnies</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
										</ul>
									</div>
                                    
								</div><!-- /cbp-hrsub-inner -->
							</div>
						  <!-- /cbp-hrsub -->
						</li>
						<li>
							<a href="#">Kolhapur</a>
							<div class="cbp-hrsub">
								<div class="cbp-hrsub-inner">
									<div>
										<h4>DivaStays Near Airport</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays2</a></li>
											<li><a href="#">DivaStays3</a></li>
										</ul>
										<h4>DivaStays Near Railway Station</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays2</a></li>
										</ul>
									</div>
                                    
									<div>
										<h4>DivaStays Near Colleges</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
										</ul>
									</div>
                                    
									<div>
										<h4>DivaStays Near IT Compnies</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
										</ul>
									</div>
                                    
								</div><!-- /cbp-hrsub-inner -->
							</div>
						  <!-- /cbp-hrsub -->
						</li>
						
						<li>
							<a href="#">Kolkata</a>
							<div class="cbp-hrsub">
								<div class="cbp-hrsub-inner">
									<div>
										<h4>DivaStays Near Airport</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays2</a></li>
											<li><a href="#">DivaStays3</a></li>
										</ul>
										<h4>DivaStays Near Railway Station</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays2</a></li>
										</ul>
									</div>
									<div>
										<h4>DivaStays Near Colleges</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
										</ul>
									</div>
									<div>
										<h4>DivaStays Near IT Compnies</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
										</ul>
									</div>
								</div><!-- /cbp-hrsub-inner -->
							</div>
						  <!-- /cbp-hrsub -->
						</li>
						
					<li>
							<a href="#">GOA</a>
							<div class="cbp-hrsub">
								<div class="cbp-hrsub-inner">
									<div>
										<h4>DivaStays Near Airport</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays2</a></li>
											<li><a href="#">DivaStays3</a></li>
										</ul>
										<h4>DivaStays Near Railway Station</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays2</a></li>
										</ul>
									</div>
									<div>
										<h4>DivaStays Near Colleges</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
										</ul>
									</div>
									<div>
										<h4>DivaStays Near IT Compnies</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
										</ul>
									</div>
								</div><!-- /cbp-hrsub-inner -->
							</div>
				    <!-- /cbp-hrsub -->
						</li>
						
                        <li>
							<a href="#">Delhi</a>
							<div class="cbp-hrsub">
								<div class="cbp-hrsub-inner">
									<div>
										<h4>DivaStays Near Airport</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays2</a></li>
											<li><a href="#">DivaStays3</a></li>
										</ul>
										<h4>DivaStays Near Railway Station</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays2</a></li>
										</ul>
									</div>
									<div>
										<h4>DivaStays Near Colleges</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
										</ul>
									</div>
									<div>
										<h4>DivaStays Near IT Compnies</h4>
										<ul>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
											<li><a href="#">DivaStays1</a></li>
										</ul>
									</div>
								</div><!-- /cbp-hrsub-inner -->
							</div>
						  <!-- /cbp-hrsub -->
						</li>
						
					</ul>
				</nav>
               






<div class="jumbotron" style="background-color:#ffffff">
   <div class="header-content" align="center">
    <div class="inner" style="margin-top:100px;">
      <h1 class="cursive">Simple, get near by hostel</h1>
       <h4>get easy and best hostel</h4>
        <hr>
         <a href="showShortTerm" class="btn btn-info btn-xl"><font color=#000000>short term</font></a> &nbsp; 
         <a href="showLongTerm" class="btn btn-info btn-xl"><font color=#000000>Long term</font></a>          
     </div><!--inner class end here-->		<br /><br /><br /><br /><br /><br />
    </div><!--header .. align center class end here-->
</div><!--jumbotron class ends here -->
<br>
  
 
  
 
<div class="container">
        <div class="row">
          <div class="col-md-12 text-center">
            <h2 class="service-title pad-bt15">Limited Deals</h2>
            <hr class="bottom-line">
          </div>
      

  		<div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Pune</div>
        <div class="panel-body"><img src="images/index_pune_city.png" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">best deal</div>
      </div>
    </div>
	<div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Delhi</div>
        <div class="panel-body"><img src="images/index_delhi_city.png" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">best deal</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Banglore</div>
        <div class="panel-body"><img src="images/index_banglore_city.png" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">best deal</div>
      </div>
    </div>
  </div>
</div><br>	


<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Kolhapur</div>
        <div class="panel-body"><img src="images/index_kolhapur_city.png" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">best deal</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Hydrabad</div>
        <div class="panel-body"><img src="images/index_hyderabad_city.png" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">best deal</div>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Mumbai</div>
        <div class="panel-body"><img src="images/index_mumbai_city.png" class="img-responsive" style="width:100%" alt="Image"></div>
        <div class="panel-footer">best deal</div>
      </div>
    </div>
  </div>
</div>

        
   	  </div>
  </div>
</div>
</sec>

<section id="three" class="no-padding">
        <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="margin-top-0 text-primary">DivaStays For All Your Needs</h2>
                    <hr class="primary">
                </div>
            </div>
        </div>

            <div class="row no-gutter">           
              <div class="col-lg-4 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./assets/deer.png">
                        <img src="images/index_limiteddeal1.png" class="img-responsive" alt="Image 1">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>DivaStays near by adventure</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./assets/beach.png">
                        <img src="images/index_limitedeal_2.png" class="img-responsive" alt="Image 2">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>DivaStays near by awsome nature</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
				<div class="clearfix hidden-lg"> </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./assets/lake.png">
                        <img src="images/index_limiteddeal3.png" class="img-responsive" alt="Image 3">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>DivaStays best deals for holidays</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./assets/bike.png">
                        <img src="images/index_limiteddeal4.png" class="img-responsive" alt="Image 4">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>DivaStays best deal for Students</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
				<div class="clearfix hidden-lg"> </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./assets/city.png">
                        <img src="images/index_limiteddeal5.png" class="img-responsive" alt="Image 5">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>DivaStays in Pune</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./assets/colors.png">
                        <img src="images/index_limiteddeal6.png" class="img-responsive" alt="Image 6">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>DivaStays in Cultural places</h4>
                                    
                                </div>
                            </div>
                        </div>
                    </a>
                </div>

                
             
             
	
        </div>
        
    </section>
    
<div class="jumbotron">
  <div class="container text-center">
   <h2 class="margin-top-0 text-primary">Best Places</h2>
   <hr class="primary">
	 <div class="row">
     <div class="col-lg-4 col-md-4 text-center">
                    <div class="feature">
                        <i class="icon-lg ion-android-laptop wow fadeIn" data-wow-delay=".3s"></i>
                        <h3>Hinjwadi</h3>
                        <p class="text-muted">Hostels looks good everywhere</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 text-center">
                    <div class="feature">
                        <i class="icon-lg ion-social-sass wow fadeInUp" data-wow-delay=".2s"></i>
                        <h3>Aundh</h3>
                        <p class="text-muted">Easy to get</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 text-center">
                    <div class="feature">
                        <i class="icon-lg ion-ios-star-outline wow fadeIn" data-wow-delay=".3s"></i>
                        <h3>Pimpari</h3>
                        <p class="text-muted">A mature, well, stable area</p>
                    </div>
                </div>
 
     
     
     
     
     
     
    </div>
  </div>
</div>
		<section class="container-fluid" id="four">
        <div class="row">
            <div class="col-xs-10 col-xs-offset-1 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
                <h2 class="text-center text-primary">Features</h2>
                <hr>
                <div class="media wow fadeInRight">
                    <h3>Simple</h3>
                    <div class="media-body media-middle">
                        <p>What could be easier? Get started fast with this page starter.</p>
                    </div>
                    <div class="media-right">
                        <i class="icon-lg ion-ios-bolt-outline"></i>
                    </div>
                </div>
                <hr>
                <div class="media wow fadeIn">
                    <h3>Free</h3>
                    <div class="media-left">
                        <a href="#alertModal" data-toggle="modal" data-target="#alertModal"><i class="icon-lg ion-ios-cloud-download-outline"></i></a>
                    </div>
                    <div class="media-body media-middle">
                        <p>Yes, please. Grab it for yourself, and find something awesome for you.</p>
                    </div>
                </div>
                <hr>
                
                <div class="row">
                <div class="media wow fadeInRight">
                    <h3>Unique</h3>
                    <div class="media-body media-middle">
                        <p>Because you want your bset hostel, to look like a good place.</p>
                    </div>
                    <div class="media-right">
                        <i class="icon-lg ion-ios-snowy"></i>
                    </div>
                </div>
                <hr>
                <div class="media wow fadeIn">
                    <h3>Popular</h3>
                    <div class="media-left">
                        <i class="icon-lg ion-ios-heart-outline"></i>
                    </div>
                    <div class="media-body media-middle">
                        <p>There's good reason why DivaStays is the most used all at one place to find hostel.</p>
                    </div>
                </div>
                <hr>
                <div class="media wow fadeInRight">
                    <h3>Analysed</h3>
                    <div class="media-body media-middle">
                        <p>DivaStays is well-analysed. It's a stable portal that provides your best hostel.</p>
                    </div>
                    <div class="media-right">
                        <i class="icon-lg ion-ios-flask-outline"></i>
                    </div>
                </div>
                
    		            </div>
        </div>
    </section>


<div class="jumbotron">
  <div class="container text-center">
  <H2 >As Spotted In</H2>
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


		<div class="jumbotron">	
      <div class="container">
        <div class="row">
          <div class="header-section text-center">
            <h2>Why People Love DivaStays?</h2>
            <hr class="bottom-line">
          </div>
          
          <div class="feature-info">
            <div class="fea">
              <div class="col-md-2">
                <div class="heading pull-right">
                  <h4>SIMPLE</h4>
                <h6>hey  guys this is really simple & easy procresss</h6>
                </div>
                <div class="fea-img pull-left">
                  <i class="fa fa-css3"></i>
                </div>
              </div>
            </div>
            
            <div class="fea">
              <div class="col-md-2">
                <div class="heading pull-right">
                  <h4>AFFORDABLE PRICE</h4>
                  <h6>Yes, we provide the best service at affordable price.</h6>
                </div>
                <div class="fea-img pull-left">
                  <i class="fa fa-drupal"></i>
                </div>
              </div>
            </div>
            
            <div class="fea">
              <div class="col-md-2">
                <div class="heading pull-right">
                  <h4>UNIQE</h4>
                  <h6>Because you don't want restrinct and the customer are ready to move in homes for life time.</h6>
                </div>
                <div class="fea-img pull-left">
                  <i class="fa fa-drupal"></i>
                </div>
              </div>
            </div>
            
            
            <div class="fea">
              <div class="col-md-2">
                <div class="heading pull-right">
                  <h4>POPULAR</h4>
                  <h6>There's good reason the people are enjoyed lot.</h6>
                </div>
                <div class="fea-img pull-left">
                  <i class="fa fa-drupal"></i>
                </div>
              </div>
            </div>
            
            
            
            <div class="fea">
              <div class="col-md-3">
                <div class="heading pull-right">
                  <h4>NO UNNECESSARY RESTRICTION</h4>
                  <h6>at DivaStays you provide lot of freedom and enjoyed lot.</h6>
                </div>
                <div class="fea-img pull-left">
                  <i class="fa fa-trophy"></i>
                </div>
              </div>
            </div>
        </div>
        </div>
      </div>
      </div>
   
   
			











		<div class="jumbotron">
		<div class="container">
			<div class=" row">
				<div class="col-md-2"></div>
	           	 <div class="text-right-md col-md-4 col-sm-4">
	              <h2 class="section-title blue lg-line\">Â« A few words<br> about us Â»</h2>
	            	</div>
	            <div class="col-md-3col-sm-5">                 We provides a better hostels guide website that really gives you all the 		information you need to find the best hostels., the idea of having a one stop website 	for hostels was born What we got for you: pghostel.com started in 2017.
	              <p class="text-right text-primary"><i></i></p>
	            </div>
	            <div class="col-md-2"></div>
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
    
    
    <footer id="footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-6 col-sm-3 column">
                    <h4>Information</h4>
                    <ul class="list-unstyled">
                        <li><a href="">Products</a></li>
                        <li><a href="">Services</a></li>
                        <li><a href="">Benefits</a></li>
                        <li><a href="">Developers</a></li>
                    </ul>
                </div>
                <div class="col-xs-6 col-sm-3 column">
                    <h4>About</h4>
                    <ul class="list-unstyled">
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">FAQs</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms &amp; Conditions</a></li>
                    </ul>
                </div>
                <div class="col-xs-12 col-sm-3 column">
                    <h4>Stay Posted</h4>
                    <form>
                        <div class="form-group">
                          <input type="text" class="form-control" title="No spam, we promise!" placeholder="Tell us your email">
                        </div>
                        <div class="form-group">
                          <button class="btn btn-info" data-toggle="modal" data-target="#alertModal" type="button">Subscribe for updates</button>
                        </div>
                    </form>
                </div>
                
               
                
                
                
              
               <div class="col-xs-12 col-sm-3 column">
                
                   
						   <h4>Follow Us</h4>
							<ul class="social-icon">
								<li class="bglight-blue"><i class="fa fa-facebook"></i></li>
								<li class="bgred"><i class="fa fa-google-plus"></i></li>
								<li class="bgdark-blue"><i class="fa fa-linkedin"></i></li>
								<li class="bglight-blue"><i class="fa fa-twitter"></i></li>
							</ul>
						</div>
                </div>
            <br/>
            <span class="pull-right text-muted small"><a href="http://www.bootstrapzero.com">DivaStays</a> Â©2017 smsone.co.in</span>
        </div>
    </footer>
    








<!-- Extra JavaScript/CSS added manually in "Settings" tab -->
<!-- Include jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
	$(document).ready(function(){
		var date_input=$('input[name="date"]'); //our date input has the name "date"
		var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
		date_input.datepicker({
			format: 'mm/dd/yyyy',
			container: container,
			todayHighlight: true,
			autoclose: true,
		})
	})
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
<!----get in touch validation--->
<script src="js/userFormVerify.js"></script>

<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script>
function checkLogin()
{
	 var email=document.getElementById( "email" ).value;
	 var password=document.getElementById( "password" ).value;

	 $.ajax({
			url:"login",
			 type: 'POST',
			data:"email="+email+"&password="+password,
			success:function(resText){
				if(resText!=""){
					alert(resText);
				}
				
				if(resText!=""){
					$("#email").val("");
					$("#email").focus();
					$("#password").val("");
					$("#password").focus();
				}
			}
			
		});
}
</script>

</body>
</html>