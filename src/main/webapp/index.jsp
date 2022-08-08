<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@include file="vector/bootstrap0.jsp"%>
</head>
<body>
<form action="/home" method="post">
 <div class="row mt-9" style="display: flex;justify-content: center; margin: 30px;">
     <div class="col"><span>Name of a Site:</span></div>
     <div class="col"><input type="text" name="text" class="form-control" required></div>
     <div class="col"><button class="btn btn-success">Set Site Name</button></div>
 </div>
</form>
 <%
     String currentName = "Default Site Name";
     Cookie cookies[] = request.getCookies();
     if(cookies!=null){
         for(Cookie c:cookies){
             if(c.getName().equals("nameOfASite")){
                 currentName=c.getValue();
             }
         }
     }
 %>
 <h1 style="text-align: center;"><%=currentName%></h1>

</body>
</html>