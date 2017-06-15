<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
 <script>  
   function doAjaxPost() {   
    var email = $('#address').val();  
  
    $.ajax({  
     type : "post",   
     url : "showFilter1",   
     data : "address=" + address,  
     success : function(response) {  
      alert(response);   
     },  
     error : function(e) {  
      alert('Error: ' + e);   
     }  
    });  
   }  
  </script>  

</head>
<body>
<form action="showFilter1">
To<input type="text" name="address">
<input type="submit" value="send" onSubmit="doAjaxPost()";>
</form>
</body>
</html>