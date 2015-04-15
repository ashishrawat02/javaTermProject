<%-- 
    Document   : login
    Created on : 10-Apr-2015, 5:47:30 PM
    Author     : c0649005
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.sql.*"
        %>

<%
    String studentId = "", password = "";
    if (request.getParameter("studentId") != null) {
        studentId = request.getParameter("StudentId");
    }
    if (request.getParameter("password") != null) {
        password = request.getParameter("password");
    }
%>

<%
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet re = null;
    String url = "jdbc:mysql://localhost/college";
    String Driver = "com.mysql.jdbc.Driver";
    String user = "root";
    String pass = "";

    Class.forName(Driver);
    con = DriverManager.getConnection(url, user, pass);
    String sql = "select * from student where studentId = ? and password = ?";
    try {
        pst = con.prepareStatement(sql);
        pst.setString(1, studentId);
        pst.setString(2, password);
        re = pst.executeQuery();
        if (re.next()) {
            out.println("CONNECTED!!!");
        } else {
            out.println("LOGIN FAILED!!!");
        }
    } catch (Exception e) {

        out.println("ERROR CONNECTING");
    }
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trying</title>
    </head>
    <body>
        <h1>Ashish</h1>
        
        <jsp:useBean id="actualsession" class="Student.StudentDetails" />
        <jsp:setProperty name="actualsession" property="studentId" value="<%=studentId%>"/>
        <jsp:setProperty name="actualsession" property="password" value="<%=password%>"/>
        
         <%--   
        <jsp:getProperty name="actualsession" property="StudentId"/><br/>
        <jsp:getProperty name="actualsession" property="password"/><br/>
         --%>   
      
    </body>

</html>

