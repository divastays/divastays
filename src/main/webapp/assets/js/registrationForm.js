// JavaScript Document
//validate name
function CheckName()   
{  
  var firstName = document.getElementById('firstName');
  var decimal=  /^[a-zA-Z ]{2,30}$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C  ";
if(firstName.value.match(decimal))   
{   
 firstName.style.backgroundColor = goodColor;
}  
else  
{   
firstName.style.backgroundColor = badColor;
}  
}

//validate last name
function CheckLastName()   
{  
  var lastName = document.getElementById('lastName');
  var decimal=  /^[a-zA-Z ]{2,30}$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C  ";
if(lastName.value.match(decimal))   
{   
 lastName.style.backgroundColor = goodColor;
}  
else  
{   
lastName.style.backgroundColor = badColor;
}  
}

//validate Mobile
function CheckPhoneNumber()   
{  
  var phoneNumber = document.getElementById('contact');
  var decimal=  /^\d{4}\d{4}\d{2}$/g;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(phoneNumber.value.match(decimal))   
{   
 phoneNumber.style.backgroundColor = goodColor;
}  
else  
{   
phoneNumber.style.backgroundColor = badColor;
}  
}  

//validate email
function CheckEmail()   
{  
  var email = document.getElementById('email');
  var decimal =  /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(email.value.match(decimal))   
{   
 email.style.backgroundColor = goodColor;
}  
else  
{   
email.style.backgroundColor = badColor;
}  
}  

//validate password
function CheckPassword()   
{  
  var pass1 = document.getElementById('password1');
  var decimal= /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[^\w\s]).{8,}$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(pass1.value.match(decimal))   
{   
 pass1.style.backgroundColor = goodColor;
}  
else  
{   
pass1.style.backgroundColor = badColor;
}  
}  

//confirm password
function CheckPass()
{
    
    var pass1 = document.getElementById('password1');
    var pass2 = document.getElementById('password2');
    var goodColor = "#82E0AA";
    var badColor = "#E74C3C";
    //Compare the values in the password field 
    //and the confirmation field
    if(pass1.value == pass2.value){
        //The passwords match. 
        //Set the color to the good color and inform
        //the user that they have entered the correct password 
        pass2.style.backgroundColor = goodColor;
      
    }else{
        //The passwords do not match.
        //Set the color to the bad color and
        //notify the user.
        pass2.style.backgroundColor = badColor;
      }
}  


//validate aadhar
function CheckAadhar()   
{  
  var aadhar = document.getElementById('aadharNumber');
  var decimal=  /^\d{4}\d{4}\d{4}$/g;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(aadhar.value.match(decimal))   
{   
 aadhar.style.backgroundColor = goodColor;
}  
else  
{   
aadhar.style.backgroundColor = badColor;
}  
}  

//validate tenancy
function CheckTenancy()   
{  
  var tenancy = document.getElementById('tenancyType');
  var decimal= /.*\S.*/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(tenancy.value.match(decimal))   
{   
tenancy.style.backgroundColor = goodColor;
}  
else  
{   
tenancy.style.backgroundColor = badColor;
}  
}

//validate floor
function CheckFloor()   
{  
  var floor1 = document.getElementById('floorNumber');
  var decimal = /^[0-9]{1,2}$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(floor1.value.match(decimal))   
{   
 floor1.style.backgroundColor = goodColor;
}  
else  
{   
floor1.style.backgroundColor = badColor;
}  
}  


//validate Room
function CheckRoom()   
{  
  var room = document.getElementById('room');
  var decimal = /^[0-9]{1,2}$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(room .value.match(decimal))   
{   
 room.style.backgroundColor = goodColor;
}  
else  
{   
 room.style.backgroundColor = badColor;
}  
}  


//validate accomodation
function CheckAccomodation()   
{  
  var accomodation = document.getElementById('accomodation');
  var decimal=  /^[a-zA-Z ]{2,30}$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(accomodation.value.match(decimal))   
{   
accomodation.style.backgroundColor = goodColor;
}  
else  
{   
accomodation.style.backgroundColor = badColor;
}  
}

//validate food preference
function CheckFoodPreference()   
{  
  var food = document.getElementById('foodPreference');
  var decimal=  /^[a-zA-Z ]{2,30}$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(food.value.match(decimal))   
{   
food.style.backgroundColor = goodColor;
}  
else  
{   
food.style.backgroundColor = badColor;
}  
}

//validate rent
function CheckRent()   
{  
  var rent = document.getElementById('rent');
  var decimal= /^[0-9]{4,5}$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(rent.value.match(decimal))   
{   
 rent.style.backgroundColor = goodColor;
}  
else  
{   
rent.style.backgroundColor = badColor;
}  
}  

//validate Deposit
function CheckDeposit()   
{  
  var deposit = document.getElementById('deposit');
  var decimal= /^[0-9]{4,5}$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(deposit.value.match(decimal))   
{   
 deposit.style.backgroundColor = goodColor;
}  
else  
{   
deposit.style.backgroundColor = badColor;
}  
}  

//validate Area
function CheckArea()   
{  
  var area = document.getElementById('area');
  var decimal= /^[1-9]{3,5}(\.\d{2})?$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(area.value.match(decimal))   
{   
 area.style.backgroundColor = goodColor;
}  
else  
{   
area.style.backgroundColor = badColor;
}  
}  

//validate Address
function CheckAddress()   
{  
  var address = document.getElementById('address');
  var decimal= /.*\S.*/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(address.value.match(decimal))   
{   
 address.style.backgroundColor = goodColor;
}  
else  
{   
address.style.backgroundColor = badColor;
}  
}  


//validate pincode
function CheckPincode()   
{  
  var pincode = document.getElementById('pincode');
  var decimal=  /^\d{2}\d{2}\d{2}$/g;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(pincode.value.match(decimal))   
{   
 pincode.style.backgroundColor = goodColor;
}  
else  
{   
pincode.style.backgroundColor = badColor;
}  
}  

//validate country
function CheckCountry()   
{  
  var country = document.getElementById('country');
  var decimal=  /^[a-zA-Z ]{2,30}$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(country.value.match(decimal))   
{   
 country.style.backgroundColor = goodColor;
}  
else  
{   
country.style.backgroundColor = badColor;
}  
}

//validate motherTounge
function CheckMotherTounge()   
{  
  var motherTounge = document.getElementById('motherTounge');
  var decimal=  /^[a-zA-Z ]{2,30}$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(motherTounge.value.match(decimal))   
{   
 motherTounge.style.backgroundColor = goodColor;
}  
else  
{   
motherTounge.style.backgroundColor = badColor;
}  
}

//validate profession
function CheckProfession()   
{  
  var profession = document.getElementById('profession');
  var decimal=  /^[a-zA-Z ]{2,30}$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(profession.value.match(decimal))   
{   
profession.style.backgroundColor = goodColor;
}  
else  
{   
profession.style.backgroundColor = badColor;
}  
}


//validate city
function CheckCity()   
{  
  var city = document.getElementById('city');
  var decimal=  /^[a-zA-Z ]{2,30}$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(city.value.match(decimal))   
{   
 city.style.backgroundColor = goodColor;
}  
else  
{   
city.style.backgroundColor = badColor;
}  
}

//validate state
function CheckState()   
{  
  var state = document.getElementById('state');
  var decimal=  /^[a-zA-Z ]{2,30}$/;
  var goodColor = "#66cc66";
  var badColor = "#ff6666";
if(state.value.match(decimal))   
{   
 state.style.backgroundColor = goodColor;
}  
else  
{   
state.style.backgroundColor = badColor;
}  
}

//validate gender
function CheckGender()   
{  
  var gender = document.getElementById('gender');
  var decimal=  /^[a-zA-Z ]{2,30}$/;
  var goodColor = "#66cc66";
  var badColor = "#ff6666";
if(gender.value.match(decimal))   
{   
 gender.style.backgroundColor = goodColor;
}  
else  
{   
gender.style.backgroundColor = badColor;
}  
}



//validate food
function CheckFoodAvailability()   
{  
  var food = document.getElementById('checkButton');
  var decimal= /.*\S.*/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(food.value.match(decimal))   
{   
food.style.backgroundColor = goodColor;
}  
else  
{   
food.style.backgroundColor = badColor;
}  
}

//validate roomID
function CheckRoomID()   
{  
  var roomID = document.getElementById('roomID');
  var decimal = /^[0-9]{0,3}$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(roomID.value.match(decimal))   
{   
 roomID.style.backgroundColor = goodColor;
}  
else  
{   
roomID.style.backgroundColor = badColor;
}  
}  


//validate Bed
function CheckBed()   
{  
  var bed = document.getElementById('bed');
  var decimal = /^[0-9]{1,2}$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(bed .value.match(decimal))   
{   
 bed.style.backgroundColor = goodColor;
}  
else  
{   
 bed.style.backgroundColor = badColor;
}  
}  


//Validate Submit
function RoomSubmit()
{
	
	var roomID = document.getElementById('roomID').value;
	var decimalRoomID = /^[0-9]{0,3}$/;
	var bed = document.getElementById('bed').value;
	var decimalBed = /^[0-9]{1,2}$/;
	
	
    if (roomID != '' && bed != '')
	{
		if (roomID.match(decimalRoomID) && bed.match(decimalBed))
		{
			return true;
		}
		else
		{
			return false;
		}
}
}







//Validate Submit
function Submit()
{
	 var firstName = document.getElementById('firstName').value;
	 var decimalname =  /^[a-zA-Z ]{2,30}$/;
	 var lastName = document.getElementById('lastName').value;
	 var decimallname =  /^[a-zA-Z ]{2,30}$/;
	 var contact = document.getElementById('contact').value;
	 var decimalContact = /^\d{4}\d{4}\d{2}$/g;
	 var email = document.getElementById('email').value;
	 var decimalmail= /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	 var aadharNumber = document.getElementById('aadharNumber').value;
	 var decimalAadhar =  /^\d{4}\d{4}\d{4}$/g;
	 var Pass1 = document.getElementById('password1').value;
     var Pass2 = document.getElementById('password2').value;
	
	
    if (firstName != '' && lastName != '' && contact != '' && email != '' && aadharNumber != '' && Pass1 != '' && Pass2 != '')
	{
		if (firstName.match(decimalname) && lastName.match(decimallname) && contact.match(decimalContact) && email.match(decimalmail) && aadharNumber.match(decimalAadhar) && Pass1.value == Pass2.value)
		{
			return true;
		}
		else
		{
			return false;
		}
}
}

//validate HouseSubmit
function HouseSubmit()
{
	
	 var Floor = document.getElementById('floorNumber').value;
     var decimalFloor = /^[0-9]{1,2}$/;
	 var Room = document.getElementById('room').value;
     var decimalRoom = /^[0-9]{1,2}$/;
	 var Rent = document.getElementById('rent').value;
     var decimalRent = /^[0-9]{4,5}$/;
	 var Deposit = document.getElementById('deposit').value;
     var decimalDeposit = /^[0-9]{4,5}$/;
	 var Area = document.getElementById('area').value;
     var decimalArea = /^[1-9]{3,5}(\.\d{2})?$/;
	 var Address = document.getElementById('address').value;
     var decimalAddress = /.*\S.*/;
	 var aadhar1 = document.getElementById('aadharNumber').value;
     var decimalaadhar1 =  /^\d{4}\d{4}\d{4}$/g;
	 
	 var img1 = document.getElementById('img1').value;
	 var img2 = document.getElementById('img2').value;
	 var img3 = document.getElementById('img3').value;
     var decimalImage = /([a-zA-Z0-9\s_\\.\-:])+(.png|.jpg|.gif)$/;
	 
	  var houseName = document.getElementById('houseName').value;
      var decimalHouseName = /.*\S.*/;
	 
	 
	 if (aadhar1 != '' && Floor != '' && Room != '' && Rent != '' && Deposit != '' && Area != '' && Address != '' && img1 != '' && img2 != '' && img3 != '' && houseName != '' )
	{
		if (aadhar1.match(decimalaadhar1) && Floor.match(decimalFloor) && Room.match(decimalRoom) && Rent.match(decimalRent) && Deposit.match(decimalDeposit) && Area.match(decimalArea) && Address.match(decimalAddress) && img1.match(decimalImage) && img2.match(decimalImage) && img3.match(decimalImage) && houseName.match(decimalHouseName) )
		{
			return true;
		}
		else
		{
			return false;
		}
    }
	 
}

//Validate UserSubmit
function UserSubmit()
{
	 var FirstName = document.getElementById('firstName').value;
	 var decimalFirstName =  /^[a-zA-Z ]{2,30}$/;
	 var LastName = document.getElementById('lastName').value;
	 var decimalLastName =  /^[a-zA-Z ]{2,30}$/;
	 var Contact = document.getElementById('contact').value;
	 var decimalContactNumber = /^\d{4}\d{4}\d{2}$/g;
	 var Email = document.getElementById('email').value;
	 var decimalEmail= /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	 var AadharNumber = document.getElementById('aadharNumber').value;
	 var decimalAadharNumber =  /^\d{4}\d{4}\d{4}$/g;
	 var Pincode = document.getElementById('pincode');
     var decimalPincode =  /^\d{2}\d{2}\d{2}$/g;
	 var Address1 = document.getElementById('address');
     var decimalAddress1 = /.*\S.*/;
	 
	 var Password1 = document.getElementById('password1').value;
     var Password2 = document.getElementById('password2').value;
	
	
    if (FirstName != '' && LastName != '' && Contact != '' && Email != '' && AadharNumber != '' && Pincode != '' && Address1 != '' && Password1 != '' && Password2 != '')
	{
		if (FirstName.match(decimalFirstName) && LastName.match(decimalLastName) && Contact.match(decimalContactNumber) && Email.match(decimalEmail) && AadharNumber.match(decimalAadharNumber) && Pincode.match(decimalPincode) && Address1.match(decimalAddress1) && Password1.value == Password2.value)
		{
			return true;
		}
		else
		{
			return false;
		}
}
}

function CheckHouseName()
{
  var houseName = document.getElementById('houseName');
  var decimal = /.*\S.*/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(houseName .value.match(decimal))   
{   
 houseName.style.backgroundColor = goodColor;
}  
else  
{   
 houseName.style.backgroundColor = badColor;
}  
}


function CheckImg1()   
{  
  var img1 = document.getElementById('img1');
  var decimal = /([a-zA-Z0-9\s_\\.\-:])+(.png|.jpeg|.jpg|.gif)$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(img1 .value.match(decimal))   
{   
 img1.style.backgroundColor = goodColor;
}  
else  
{   
 img1.style.backgroundColor = badColor;
}  
}  


function CheckImg2()   
{  
  var img2 = document.getElementById('img2');
  var decimal = /([a-zA-Z0-9\s_\\.\-:])+(.png|.jpeg|.jpg|.gif)$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(img2 .value.match(decimal))   
{   
 img2.style.backgroundColor = goodColor;
}  
else  
{   
 img2.style.backgroundColor = badColor;
}  
}  

function CheckImg3()   
{  
  var img3 = document.getElementById('img3');
  var decimal = /([a-zA-Z0-9\s_\\.\-:])+(.png|.jpeg|.jpg|.gif)$/;
  var goodColor = "#82E0AA";
  var badColor = "#E74C3C";
if(img3 .value.match(decimal))   
{   
 img3.style.backgroundColor = goodColor;
}  
else  
{   
 img3.style.backgroundColor = badColor;
}  
}  





