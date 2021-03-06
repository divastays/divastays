<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/registrationForm.css">
</head>
<body style="background-image:url(images/formBackground.png)">
	<div class="main-content">
	  <form class="form-basic" method="post" action="saveHouse" onSubmit="return HouseSubmit()"  enctype="multipart/form-data" style="background-color: rgb(243,210,230);">
            <div class="form-title-row">
                <h1>House Details</h1>
            </div>
			<div class="form-row" style="float:left; width:50%;">
                <label>
                    <span>Owner ID</span>
                    <input type="text" name="ownerId" id="ownerId" value="${oId}" readonly>
                </label>
                   <label>
                    <span>Tenancy Type</span>
                    <select name="tenancyType" class="form-control selectpicker" id="tenancyType" required>
                         <option value="">Select Tenancy Type</option>
                        <option value="apartment">Apartment</option>
                        <option value="bunglow">Bunglow</option>
                        <option value="1bhk">1 BHK</option>
                        <option value="2bhk">2 BHK</option>
                        <option value="3bhk">3 BHK</option>
                        <option value="hall">Hall</option>
                        <option value="sharing">Sharing</option>
                     </select>
                </label>
                     <label>
                    <span>Number Of Room</span>
                    <input type="text" name="room" id="room" placeholder="Rooms" onBlur="CheckRoom(); return true;" autocomplete="off" required>
                </label>
               <br>
               <br>
               <br>
               <br>
                <label>
                    <span>City</span>
                 <select name="city" id="city" class="form-control selectpicker" onChange="dynamicdropdown(this.value);" required>
                        <option value="">Select Your City</option>
                        <option value="pune">Pune</option>
                        <option value="mumbai">Mumbai</option>
                         <option value="nagpur">Nagpur</option>
                        <option value="kolhapur">Kolhapur</option>
                        </select>
                </label>
                 <label>
                    <span>State</span> 
                  <script type="text/javascript" language="JavaScript">
                document.write('<select name="subcategory1" id="subcategory1" class="form-control" ><option value="">Please select Area</option></select>')
            </script>
                </label>
              
                <label>
                    <span>Rent</span>
                    <input type="text" name="rent" id="rent" placeholder="Rent" onBlur="CheckRent(); return false;" autocomplete="off" required>
                </label>
                <label>
                    <span>Area</span>
                    <input type="text" name="area" id="area" placeholder="Area in sq.ft." onBlur="CheckArea(); return false;" autocomplete="off" required>
                </label> 
                <br>&nbsp;&nbsp;&nbsp;&nbsp;
                <label>
                   <span>Upload Photo 1</span>
                 <input type="file" name="img1" id="img1" onBlur="CheckImg1(); return false;" autocomplete="off"  required>
                </label>
                       <label>
                   <span>Upload Photo 2</span>
                 <input type="file" name="img2" id="img2" onBlur="CheckImg2(); return false;" autocomplete="off"  required>
                </label>
                
                 
                
             </div>

            <div class="form-row" style="float:left; width:50%;">
               <label>
               <span>House Name</span>
                    <input type="text" name="houseName" id="houseName" placeholder="Name of the House" onBlur="CheckHouseName(); return false;" autocomplete="off" required>
               </label>
             <label>
                    <span>Floor No.</span>
                    <input type="text" name="floorNumber" id="floorNumber" placeholder="Floor Number" onBlur="CheckFloor(); return false;" autocomplete="off" required>
                </label>
                <label>
                    <span>Address</span>
                    <textarea name="address" id="address" placeholder="Address" onBlur="CheckAddress(); return false;" autocomplete="off" required></textarea>
                </label> 
                <br>
                 <label>
                 <span>Area Location</span>
                   <script type="text/javascript" language="JavaScript">
                document.write('<select name="subcategory" id="subcategory" class="form-control" ><option value="">Please select Area</option></select>')
            </script>
                </label>
                    <label>
             <span>Country</span>
                 <script type="text/javascript" language="JavaScript">
                document.write('<select name="subcategory2" id="subcategory2" class="form-control" ><option value="">Please select Area</option></select>')
            </script>
                </label>
             <label>
                    <span>Deposit</span>
                    <input type="text" name="deposit" id="deposit" placeholder="Deposit" onBlur="getLatLong();CheckDeposit(); return false;" autocomplete="off" required>
                </label>
             
           
                <label>
                    <span>Food Preference</span>
                    <select name="foodPreference" id="foodPreference" class="form-control selectpicker" required>
                        <option value="">Select Food Preference</option>
                        <option value="veg">Veg</option>
                        <option value="non-veg">Non-Veg</option>
                        <option value="both">Both</option>
                       
                    </select>
                </label>
                <br>
                <label>
                   <span>Upload Photo 3</span>
                 <input type="file" name="img3" id="img3" onBlur="CheckImg3(); return false;" autocomplete="off"  required>
                </label>
                
                <input type="hidden" name="latitude" id="latitude" value="">
               <input type="hidden" name="longitude" id="longitude" value="">
               
            </div>

            <div class="form-row" style="width:50%;">
                <button type="submit" value="Submit" id="btn" >Submit</button>
            </div>		
        </form>
</div>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
 <script>
    function checkAadharNumber()
    {
    	 var aadharNumber=document.getElementById( "aadharNumber" ).value;
    	 $.ajax({
    			url:"checkOwnerAadharNumber",
    			data:{aadharNumber:$("#aadharNumber").val()},
    			success:function(resText){
    				if(resText!="")
    					{
    				alert(resText);
    					}
    				if(resText!=""){
    					$("#aadharNumber").val("");
    					$("#aadharNumber").focus();
    				}
    			}
    			
    		});
    }
    </script>
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyAae9SU_6aO359OSvLrFEx27cs4ervdYDU&callback=initMap"></script>
     <script>
        function getLatLong() {
        	  var city =document.getElementById( "city" ).value;
        	  var area =document.getElementById( "subcategory" ).value;
        	  var state =document.getElementById( "subcategory1" ).value;
        	  var address=area+" "+city+" "+" "+state;
            geocoder = new google.maps.Geocoder();
            geocoder.geocode({
            'address': address
            }, function(results, status) {      
                document.getElementById("latitude").value=results[0].geometry.location.lat();    
                document.getElementById("longitude").value=results[0].geometry.location.lng();        
            });
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
<script src="js/registrationForm.js" type="text/javascript"></script>  
<script src="js/dynamicdropdown.js" type="text/javascript"></script>
</body>
</html>