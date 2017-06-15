<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>pg_long_term</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/styles.css" rel="stylesheet">
  <link href="css/default.css" rel="stylesheet">
        <link href="css/component.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet"/>
  <!-- Special version of Bootstrap that only affects content wrapped in .bootstrap-iso -->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" /> 
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<!--Font Awesome (added because you use icons in your prepend/append)-->
<link rel="stylesheet" href="https://formden.com/static/cdn/font-awesome/4.4.0/css/font-awesome.min.css" />
<!-- for google api-->
<link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500">

<!-- Inline CSS based on choices in "Settings" tab -->
<style>.bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p, .bootstrap-iso form{font-family: Arial, Helvetica, sans-serif; color: black}.bootstrap-iso form button, .bootstrap-iso form button:hover{color: white !important;} .asteriskField{color: red;}</style>


<style>
	.ui-autocomplete { font-size: 10px; }
	#address { width: 300px; }
}
</style>
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
        color: #000000;
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
    background-color: #4CAF50; /* Green */
    border: none;
    color: #000000;
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
  

</head>
<body>
	
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
      <a class="navbar-brand" href="showHome"><b>DivaStays</b></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
     
     
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
											 <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">Password</label>
											 <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
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


<!-- dropdown start-->

 <nav id="cbp-hrmenu" class="cbp-hrmenu">
					<ul>
						<li>
							<a href="#">Pune</a>
							<div class="cbp-hrsub" style="height:350px;">
								<div class="cbp-hrsub-inner"> 
                                
									<div>
										<h3>Diva Stays Near Airport</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays2</a></li>
											
										</ul>
									</div>
                                    
									<div>
										<h3>Diva Stays Near Railway Station</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays2</a></li>
											
										</ul>
									</div>
									<div>
										<h3>Diva Stays Near Colleges</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays2</a></li>
											<li><a href="#">Diva Stays3</a></li>
										</ul>
										<h3>Diva Stays Near IT Compnies</h3>
										<ul>
											<li><a href="#">Diva Stays3</a></li>
										</ul>
									</div>
                                    
								</div><!-- /cbp-hrsub-inner -->
							</div>
						  <!-- /cbp-hrsub -->
						</li>
						<li>
							<a href="#">Mumbai</a>
							<div class="cbp-hrsub" style="height:350px;">
								<div class="cbp-hrsub-inner">
									<div>
										<h3>Diva Stays Near Airport</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays2</a></li>
											<li><a href="#">Diva Stays3</a></li>
										</ul>
										<h3>Diva Stays Near Railway Station</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays2</a></li>
										</ul>
									</div>
                                    
									<div>
										<h3>Diva Stays Near Colleges</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays1</a></li>
											
										</ul>
									</div>
                                    
									<div>
										<h3>Diva Stays Near IT Compnies</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays1</a></li>
											
										</ul>
									</div>
                                    
								</div><!-- /cbp-hrsub-inner -->
							</div>
						  <!-- /cbp-hrsub -->
						</li>
						<li>
							<a href="#">Kolhapur</a>
							<div class="cbp-hrsub" style="height:350px;">
								<div class="cbp-hrsub-inner">
									<div>
										<h3>Diva Stays Near Airport</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays2</a></li>
											<li><a href="#">Diva Stays3</a></li>
										</ul>
										<h3>Diva Stays Near Railway Station</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays2</a></li>
										</ul>
									</div>
                                    
									<div>
										<h3>Diva Stays Near Colleges</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays1</a></li>
											
										</ul>
									</div>
                                    
									<div>
										<h3>Diva Stays Near IT Compnies</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays1</a></li>
											
										</ul>
									</div>
                                    
								</div><!-- /cbp-hrsub-inner -->
							</div>
						  <!-- /cbp-hrsub -->
						</li>
						
						<li>
							<a href="#">Kolkata</a>
							<div class="cbp-hrsub" style="height:350px;">
								<div class="cbp-hrsub-inner">
									<div>
										<h3>Diva Stays Near Airport</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays2</a></li>
											<li><a href="#">Diva Stays3</a></li>
										</ul>
										<h3>Diva Stays Near Railway Station</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays2</a></li>
										</ul>
									</div>
									<div>
										<h3>Diva Stays Near Colleges</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays1</a></li>
										</ul>
									</div>
									<div>
										<h3>Diva Stays Near IT Compnies</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays1</a></li>

										</ul>
									</div>
								</div><!-- /cbp-hrsub-inner -->
							</div>
						  <!-- /cbp-hrsub -->
						</li>
						
					<li>
							<a href="#">GOA</a>
							<div class="cbp-hrsub" style="height:350px;">
								<div class="cbp-hrsub-inner">
									<div>
										<h3>Diva Stays Near Airport</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays2</a></li>
											<li><a href="#">Diva Stays3</a></li>
										</ul>
										<h3>Diva Stays Near Railway Station</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays2</a></li>
										</ul>
									</div>
									<div>
										<h3>Diva Stays Near Colleges</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays1</a></li>
											
										</ul>
									</div>
									<div>
										<h3>Diva Stays Near IT Compnies</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
										
											<li><a href="#">Diva Stays1</a></li>
										</ul>
									</div>
								</div><!-- /cbp-hrsub-inner -->
							</div>
				    <!-- /cbp-hrsub -->
						</li>
						
                        <li>
							<a href="#">Delhi</a>
							<div class="cbp-hrsub" style="height:350px;">
								<div class="cbp-hrsub-inner">
									<div>
										<h3>Diva Stays Near Airport</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays2</a></li>
											<li><a href="#">Diva Stays3</a></li>
										</ul>
										<h3>Diva Stays Near Railway Station</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays2</a></li>
										</ul>
									</div>
									<div>
										<h3>Diva Stays Near Colleges</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays1</a></li>
											
										</ul>
									</div>
									<div>
										<h3>Diva Stays Near IT Compnies</h3>
										<ul>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays1</a></li>
											<li><a href="#">Diva Stays1</a></li>
										</ul>
									</div>
								</div><!-- /cbp-hrsub-inner -->
							</div>
						  <!-- /cbp-hrsub -->
						</li>
						
					</ul>
				</nav>
              







<div class="jumbotron" style="background-color:#ffffff">   <!-- main div for the user search -->
   <div class="header-content" align="center">
      <div class="container text-center">						<!--conatainer center div start -->
          <h1 style="color:#FF0000; font-family:Georgia;">DivaStays</h1>     
              <p style="color:#000000; font-family:"Courier New", Courier, monospace;">Your Friendly  neighborhood hostel</p>
          <h5 style="color:#000000;">now in India</h5><br><br><br>
		   <div class="container text-center" style="background-color:rgb(243,210,230)" >    
  				<h3 align="center" style="color:#000000;">Stay with us and enjoy life</h3>
  					
                    
                
             <div class="row">
            	<div class="col-md-13 col-md-offset-1">
              	   <div class="form-section">
                	  <div class="row">
                         <form role="form" action="showFilter1" method="post">
                    
                   <div class="col-md-3">
                       <div class="form-group">
                           <label class="sr-only" for="guest">Guest</label>
                          	
                          <select id="city"  class="form-control" name="city">
                              <option value="Ahmednagar">Ahmednagar</option>
                              <option value="Akola">Akola</option>
                              <option value="Sangli">Sangli	</option>
                              <option value="Satara">Satara	</option>
							  <option value="Sindhudurg">Sindhudurg</option>
                              <option value="Solapur">Solapur	</option>
                              <option value="Thane">Thane	</option>
                              <option value="Wardha">Wardha	</option>
                              <option value="Washim">Washim	</option>
                              <option value="Yevtmal">Yevtmal	</option>
                              <option value="Palghar">Palghar	</option>                              
                          </select>  
                       </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="sr-only" for="location">Location</label>
                          <input type="text" class="form-control" name="address" id="address" placeholder="Where ?"/>
                        </div>
                        </div>
        
                        <div class="col-md-3">
                        <div class="form-group">
                          <label class="sr-only" for="guest">Guest</label>
                          <select id="guest" name="guest" class="form-control">
                              <option value="Girls">Girls</option>
                          </select>
                        </div>
                      </div>
               
                      <div class="col-md-1">
                      <button type="submit" class="btn btn-info">Search</button>

                        <!--<button type="submit" class="btn btn-default btn-primary">Search</button>-->
                      </div>
      
      						
      				</form>
                      </div>
                      </div>
                      </div>
            
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
    
                    <!-- two more tag add for  puppose is to contain in one-->
                 
			
    <br>
      <br>      
                  
                    
                
  
  
  <!-- search box start -->
 				
                  <div class="col-md-12 text-center">
				 <!-here we are add the map ->   
             		<div>
             		   
           			<div class="map">
           <h2 class="service-title pad-bt15">Hostels In Pune</h2>
           <hr class="bottom-line">
				<div id="google-map">
        		
<iframe src="https://www.google.com/maps/d/embed?mid=1c-xBCOm4KzrFzL7o24ZlWuwAhSg" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>               
        	</div>
        </div>
        
   </div></div>
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
      

  		<a href="showDeal1"><div class="col-sm-4">
      		<div class="panel panel-success">
       
      	 	 	<div class="panel-heading">Hinjewadi</div>
       			 <div class="panel-body"><img src="images/longterm_deal_hinjewadi.png" class="img-responsive" style="width:100%" alt="Image"></div>
       	 		<div class="panel-footer" style="color:#999999">best deal</div>
       	 		
      	</div>
    </div>
		</a>
        <div class="col-sm-4"> 
      	<div class="panel panel-success">
      	 	 <div class="panel-heading">Shivaji Nagar</div>
       		 <div class="panel-body"><img src="images/longterm_shivajinagar.png" class="img-responsive" style="width:100%" alt="Image"></div>
       		 <div class="panel-footer" style="color:#999999">best deal</div>
      </div>
      </div>
      <div class="col-sm-4"> 
      		<div class="panel panel-success">
        	<div class="panel-heading">Chinchwad</div>
        	<div class="panel-body"><img src="images/longterm_chinchwad.png" class="img-responsive" style="width:100%" alt="Image"></div>
        	<div class="panel-footer" style="color:#999999">best deal</div>
      </div>
    	</div>
      
    	    


        
   	  </div>
  </div>
</div>

<section id="three" class="no-padding">
        <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="margin-top-0 text-primary">DivaStays For All your Needs</h2>
                    <hr class="primary">
                </div>
            </div>
        </div>

            <div class="row no-gutter">           
              <div class="col-lg-4 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./assets/deer.png">
                        <img src="images/longterm_deal4.png" class="img-responsive" alt="Image 1">
                           <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>DivaStays with family</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./assets/beach.png">
                       <img src="images/longtermdeal_5.png" class="img-responsive" alt="Image 2">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>DivaStays with friends</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
				<div class="clearfix hidden-lg"> </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./assets/lake.png">
                        <img src="images/pg3.png" class="img-responsive" alt="Image 3">

                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>DivaStays best  with sharing</h4>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6">
                    <a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./assets/bike.png">
                        <img src="images/pg8.png" class="img-responsive" alt="Image 4">
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
                        <img src="images/Hostel-2.png" class="img-responsive" alt="Image 5">
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
                       <img src="images/longterm_couple.png" class="img-responsive" alt="Image 6">
                        <div class="gallery-box-caption">
                            <div class="gallery-box-content">
                                <div>
                                    <i class="icon-lg ion-ios-search"></i>
                                    <h4>DivaStays for couples</h4>
                                    
                                </div>
                            </div>
                        </div>
                    </a>
                </div>

                
             
             
	
        </div>
        
    </section>






    
<div class="jumbotron">
  <div class="container text-center">
  <H2 style="color:#000000;">What do you have to do?Pick a house you like</H2>
   <h4 >That’s it. There is no haggling, no awkward questions from landlords, no need to even run around for paperwork</h4>
	 <div class="row">
  			<div class="col-lg-3">
				<div class="wow fadeInLeft" data-wow-delay="0.2s">
                <div class="service-box">
					<div class="search-icon">
						<img src="" alt="" />      <here we can giv the path>
					</div>
					<div class="service-desc">
						<h3>Search</h3>
						<h5>Find a place the fit all your preferences.</h5>
					</div>
                </div>
				</div>
            </div>

        
        
        <div class="col-sm-3">
    		<H3>Visit</H3>
     		 <h5>Find a place the fit all your preferences.</h5>
    	</div>
  		<div class="col-sm-3">
    		<H3>Book</H3>
     		 <h5>Find a place the fit all your preferences.</h5>
    	</div>
        <div class="col-sm-3">
    		<H3>Move-In</H3>
     		 <h5>Let's move to your home enjoy!.</h5>
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
                    <form class="contact-form row" action="sendMail" method="post">
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Name" onBlur="CheckName();return false;" required>
                            <span id="checkName" class="checkName"></span>
                        </div>
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" class="form-control" id="email" name="email" placeholder="Email"  onBlur="CheckEmail();return false;" required="">
                            <span id="checkEmail" class="checkEmail"></span>
                        </div>
                        <div class="col-md-4">
                            <label></label>
                            <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="Phone" onBlur="CheckPhoneNumber();return false;" required>
                            
                            <span id="checkPhoneNumber" class="checkPhoneNumber"></span>
                        </div>
                        <div class="col-md-12">
                            <label></label>
                            <textarea class="form-control" rows="8" name="message" placeholder="Your message here.." required></textarea>
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
            <span class="pull-right text-muted small"><a href="http://www.bootstrapzero.com">DivaStays</a> ©2017 smsone.co.in</span>
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
        <!---get in touch validation--->
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