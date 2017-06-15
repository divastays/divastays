<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Room Details</title>
		<link rel="stylesheet" href="css/registrationForm.css">
   <!--Table css required--> 
 <style>
 table
 {
 border-collapse:collapse;
 }
 td
 {
 padding-top:.5em;
 padding-bottom:.5em;
 }
 </style>
</head>
<body>
	<div class="main-content">
	  <form class="form-basic" method="post" action="saveRoom" onSubmit="return RoomSubmit()" enctype="multipart/form-data" style="background-color: rgb(243,210,230);">
            <div class="form-title-row">
                <h1>Room Details</h1>
            </div>
            
			<div class="form-row" style="float:left; width:50%;">
                <label>
                    <span>Room ID</span>
                    <input type="text" name="roomId" id="roomId" placeholder="Room ID" onBlur="CheckRoomID(); return false;" autocomplete="off" required>
                </label>
              <label>
                    <span>Number Of Bed</span>
                    <input type="text" name="NumberOfBed" id="bed" placeholder="Bed" onBlur="CheckBed(); return false;" autocomplete="off" required>
                </label>
                
                <div class="form-row" style="float:left;">
                 <table id="table" class="table table-bordered" style="background-color:#FFFFFF">
                  <thead>
                  <tr>
                      <label><span>Facilities</span></label>
                  </tr>
                  </thead>
                  <tbody>
                 <tr>
    	            <td>AC</td>
                    <td><input type="radio" name="ac"  ><span>Yes&nbsp;&nbsp;&nbsp;</span></td>
                    <td><input type="radio" name="ac" ><span>No</span></td>
                </tr>
                <tr>
                   <td>Wifi</td>
                   <td><input type="radio" name="wifi" ><span>Yes</span></td>
                   <td><input type="radio" name="wifi" ><span>No</span></td>
               </tr>
               <tr>
                  <td>Bathroom</td>
                  <td><input type="radio" name="bathroom"  ><span>Yes</span></td>
                  <td><input type="radio" name="bathroom" ><span>No</span></td>
              </tr>
              <tr>
                  <td>Geyser</td>
                  <td><input type="radio" name="geyser" ><span>Yes</span></td>
                  <td><input type="radio" name="geyser" ><span>No</span></td>
              </tr>
              <tr>
                  <td>Bed</td>
                  <td><input type="radio" name="bed"  ><span>Yes</span></td>
                  <td><input type="radio" name="bed" ><span>No</span></td>
              </tr>
              <tr>
                  <td>Swimming Pool&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  <td><input type="radio" name="swimmingPool"  ><span>Yes</span></td>
                  <td><input type="radio" name="swimmingPool" ><span>No</span></td>
              </tr>
              <tr>
                  <td>Parking</td>
                  <td><input type="radio" name="parking"  ><span>Yes</span></td>
                  <td><input type="radio" name="parking" ><span>No</span></td>
              </tr>
              <tr>
                  <td>Gym</td>
                  <td><input type="radio" name="gym"  ><span>Yes</span></td>
                  <td><input type="radio" name="gym" ><span>No</span></td>
             </tr>
     </tbody>
</table>
             </div>
          </div>

            <div class="form-row" style="float:left; width:50%;">
             <label>
                    <span>Room Type</span>
                    <select name="roomType" class="form-control selectpicker" id="roomType" required>
                         <option value="">Select Room Type</option>
                         <option value="hall">Hall</option>
                        <option value="bed">Bed</option>
                        <option value="kitchen">Kitchen</option>
                     </select>
                </label>
                
                <label>
                    <span>Food Availability</span>
                    <select name="foodAvailability" class="form-control selectpicker" id="foodAvailability" required>
                         <option value="">Select Availability</option>
                        <option value="yes">Yes</option>
                        <option value="no">No</option>
                     
                     </select>
                </label>
                
                 <label>
                   <span>Upload Photo 1</span>
                 <input type="file" name="img1" id="img1" onBlur="CheckImg1(); return false;" autocomplete="off"  required>
                </label>
                  <label>
                   <span>Upload Photo 2</span>
                 <input type="file" name="img2" id="img2" onBlur="CheckImg2(); return false;" autocomplete="off"  required>
                </label>
                  <label>
                   <span>Upload Photo 3</span>
                 <input type="file" name="img3" id="img3" onBlur="CheckImg3(); return false;" autocomplete="off"  required>
                </label>
                
                
                
            </div>
            <div class="form-row" style="width:50%;">
                <button type="submit" value="Submit" >Submit</button>
            </div>		
        </form>
</div>
<script src="js/room.js" type="text/javascript"></script>  

</body>
</html>