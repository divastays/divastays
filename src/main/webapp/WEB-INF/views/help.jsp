<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="http://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<!-- Custom styles for this template -->
	<link href="http://getbootstrap.com/examples/offcanvas/offcanvas.css" rel="stylesheet">
	<link href="css/help.css" rel="stylesheet" type="text/css">
</head>
<body>
		<header>
			<div class="container">
				<div class="row">
					<div class="col-md-12"></div>
                    <h1 align="center">दिवा Stay</h1>
				</div>
			</div>
			<nav class="navbar navbar-default" role="navigation"> 
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>					
				</div>

				<div class="collapse navbar-collapse navbar-ex1-collapse">
					
					<form class="navbar-form navbar-right" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">Go</button>
					</form>					
				</div><!-- /.navbar-collapse -->
			</nav>
		</header>
		<div class="container" id="home">
			<div class="row"><!-- row-offcanvas row-offcanvas-left"-->
				<div class="col-md-6"> <!--id="sidebar" role="navigation">-->	
                			
					<!--<div class="sidebar-nav">-->
                    
						<h4>Most Frequently Asked Questions</h4>
						<ul class="sidebar_menu">
                        	<li><a href="index.jsp">How do I locate my currnet upcoming bookings?</a></li>
							<li><a href="secondlink.html">How do I create a booking in दिवा Stay?</a></li>
                            <li><a href="helpPages/thirdlink.html">How can i find the best deals available?</a></li>
							<li><a href="helpPages/fourthlink.html">Where are the valid ID proof that i should carry?</a></li>
                            <li><a href="helpPages/fifthlink.html">How do i check the status of my currnt openings?</a></li>
						</ul>
                        </div>
                        
                       <div class="col-md-6">
                        	<h4 >Discount and Coupens</h4>
						<ul class="sidebar_menu">
                        	<li><a href="eleventhlink.html">How can i find the bset deals available?</a></li>
							<li><a href="twelvethlink.html">Why i can't modify my discounter bookings?</a></li>
                            <li><a href="thirteenthlink.html">What is दिवा Stay and how is it different from other hotel booking websites?</a></li>
							<li><a href="fourteenthlink.html">What amenities can I expect in a standard दिवा Stay?</a></li>
                           
						</ul>
                        </div>
                        </div>
                       
                        
                        <div class="row">
                        <div class="col-md-6">
                        	<h4>Booking Creation</h4>
						<ul class="sidebar_menu">
                        	<li><a href="sixthlink.html">How to create a booking in दिवा Stay?</a></li>
							<li><a href="seventhlink.html">How do i book more than three rooms in PG Hoatel?</a></li>
                            <li><a href="eighthlink.html">What is the differnce between standard and premium propertirs?</a></li>
							<li><a href="ninthlink.html">What are the standard check-in and check-out timings?
</a></li>
                            <li><a href="tenthlink.html">Does the booking include lunch/dinner as well?</a></li>
						</ul>
						</div>
						
                        
                        <div class="col-md-6">
                        	<h4>Booking Modification</h4>
						<ul class="sidebar_menu">
                        	<li><a href="fifteenthlink.html">How can i extend my bookings?</a></li>
							<li><a href="sixteenthlink.html">How i can increase/decrease the number of rooms?</a></li>
                            <li><a href="seventeenthlink.html">How do i cancel my booking?</a></li>
							<li><a href="eighteenthlink.html">Can i cancel a part of my booking?</a></li>
                            <li><a href="ninteenthlink.html">What are the cancellation policies in दिवा Stay?</a></li>
						</ul>
						</div>
                        </div>       
                        
						<hr>
                        
						<div class="social_buttons">
							<a href="#" class="icon-button twitter"><i class="icon-twitter"></i><span></span></a>
							<a href="#" class="icon-button facebook"><i class="icon-facebook"></i><span></span></a>
							<a href="#" class="icon-button google-plus"><i class="icon-google-plus"></i><span></span></a>
						</div>
                        
                        <hr>
                        
					</div>
                    
				</div> <!-- col sidebar -->
                
				<div class="col col-xs-12 col-sm-9">
					<p class="pull-left visible-xs">
						<button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
					</p>
                    
                    
				    
						</div> <!-- col -->
			</div>  <!-- row -->   
		</div> <!-- container -->
		

		<!-- Bootstrap core JavaScript
		================================================== -->
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/offcanvas.js"></script>
	    <!-- 
		http://masonry.desandro.com/
	    http://desandro.mit-license.org/ 
		http://stackoverflow.com/questions/17767130/masonry-js-error-uncaught-typeerror-object-object-object-has-no-method-imag
		Align items in center: https://github.com/desandro/isotope/issues/20
	    Hiding text overflow: http://stackoverflow.com/questions/15308061/how-to-avoid-text-overflow-in-twitter-bootstrap
		-->
		<script src="js/masonry.pkgd.min.js"></script>
		<script src="js/imagesloaded.pkgd.min.js"></script>	     
		<script>

			$(document).ready(function(){
				init_masonry();
			});

			function init_masonry(){
				var $container = $('.item_container');
				$container.imagesLoaded( function(){
					$container.masonry({
						itemSelector : '.item',
						"gutter": 18,
						isFitWidth: true
					});
				});
			}

			$(function() {
				$('a[href*=#]:not([href=#])').click(function() {
					if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
						var target = $(this.hash);
						target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
						if (target.length) {
							$('html,body').animate({
								scrollTop: target.offset().top
							}, 1000);
							return false;
						}
					}
				});
			});

		</script>
	</body>
</html>