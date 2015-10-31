<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Ajax Example(jQuery)</title>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js">
  </script>
  <script type="text/javascript">
    $(document).ready(function(){
       $("#userName").blur(function(){
         var name=$("#userName").val();
         $.get("AjaxServlet",{
           userName : name},function(responseText){
           $("#response").text(responseText);
         });
         });
     });
  </script>
</head>
<body>

<label>Enter you name : <input id="userName" type="text" />
</label>
<div id ="response" STYLE="color:green;"> </div>
</body>
</html>


