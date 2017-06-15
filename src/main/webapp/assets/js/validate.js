//validate name
function CheckName()   
{  
  var firstName = document.getElementById('name');
var decimal=  /^[a-zA-Z ]{2,30}$/;
var message = document.getElementById('checkName');
 var goodColor = "#66cc66";
    var badColor = "#ff4d4d";
if(firstName.value.match(decimal))   
{   
 firstName.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Your Name is Ok!" 
}  
else  
{   
firstName.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Please enter valid Name"
}  
}

//validate email
function CheckEmail()   
{  
  var email = document.getElementById('email');
var decimal=  /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
var message = document.getElementById('checkEmail');
 var goodColor = "#66cc66";
    var badColor = "#ff6666";
if(email.value.match(decimal))   
{   
 email.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Your Email is Ok!" 
}  
else  
{   
email.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Please enter valid Email"
}  
}  

//validate Mobile
function CheckPhone()   
{  
  var phoneNumber = document.getElementById('phone');
var decimal=  /^\d{4}\d{4}\d{2}$/g;
var message = document.getElementById('checkPhone');
 var goodColor = "#66cc66";
    var badColor = "#ff6666";
if(phoneNumber.value.match(decimal))   
{   
 phoneNumber.style.backgroundColor = goodColor;
        message.style.color = goodColor;
        message.innerHTML = "Contact number is Ok!" 
}  
else  
{   
phoneNumber.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "Please enter valid contact number"
}  
}  


//validate visit now
function Submit()
{
	var fn = document.getElementById('name');
    var decimalFN=  /^[a-zA-Z ]{2,30}$/;
	
	 var mail = document.getElementById('email');
     var decimalMail=  /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	 var phone = document.getElementById('phone');
     var decimalPH=  /^\d{4}\d{4}\d{2}$/g;
	
	
	
	
	if(fn.value.match(decimalFN) && mail.value.match(decimalMail) && phone.value.match(decimalPH))
	{
		document.write("Success");
	}
	else
	{
		document.write("Fail");
	}
	
	
	
}

