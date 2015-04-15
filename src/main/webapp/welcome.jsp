<%-- 
    Document   : welcome
    Created on : 14-Apr-2015, 4:55:32 PM
    Author     : c0649005
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <%--     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  --%>
    
       <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Welcome <%=session.getAttribute("firstName")%></title>  
</head>  
<body>  
    <h3>Login successful!!!</h3>  
    <h4>  
        Hello,  
        <%=session.getAttribute("firstName")%></h4>  
</body>  
</html>
