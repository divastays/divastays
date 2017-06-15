<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>

<script type="text/javascript">
/*$(document).ready(function(){
	$("#email").change(function(){
		
		$.ajax({
			url:"checkId",
			data:{email:$("#email").val()},
			success:function(resText){
				$("#empIdErr").text(resText);
				if(resText!=""){
					$("#email").val("");
					$("#email").focus();
				}
			}
			
		});
	});
});
*/
function checKLogin()
{
	 var email=document.getElementById( "email" ).value;
	 var password=document.getElementById( "password" ).value;

	 $.ajax({
			url:"login",
			 type: 'POST',
			data:"email="+email+"&password="+password,
			success:function(resText){
				if(resText!="")
					{
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
</head>
<body>
<form  method="post">
email<input type="text"  id="email" name="email">
pa<input type="text"  id="password" name="password" onBlur="checkname();"><span id="empIdErr" class="errMsg"></span>
<span id="email_status"></span>
<input type="submit" value="submit">

</form>
${msg}
</body>
</html>