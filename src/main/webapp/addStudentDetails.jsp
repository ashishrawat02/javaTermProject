<%-- 
    Document   : login
    Created on : 10-Apr-2015, 5:47:30 PM
    Author     : c0649005
--%>

<!DOCTYPE html>
<html lang="en">
        <head>
        <meta charset="UTF-8">
        <title>Student Registration</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script> 
        <style type="text/css">
            .bs-example{
                margin: 20px;
            }
            /* Fix alignment issue of label on extra small devices in Bootstrap 3.2 */
            .form-horizontal .control-label{
                padding-top: 7px;
            }
        </style>
        <script src="js/addStudentDetails.js"></script> 
    </head>
    <body>
        <div class="bs-example">
            <div class="container">
 <jsp:useBean id="login" scope="request" class="beans.loginAdmin"></jsp:useBean>
            <form class="form-horizontal" action="LServlet" method="POST">
                <div class="form-group">
                    <label for="id" class="control-label col-xs-2">Student ID:</label>
                    <div class="col-xs-10"> 
                        <input type="text" class="form-control" id="studentId" name="studentId">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="control-label col-xs-2">First Name</label>
                    <div class="col-xs-10">
                        <input type="password" class="form-control" id="fName" name="fName">
                    </div>
                </div>
                
                  <div class="form-group">
                    <label for="inputPassword" class="control-label col-xs-2">Last Name</label>
                    <div class="col-xs-10">
                        <input type="password" class="form-control" id="lName" name="lname">
                    </div>
                </div>
                
                  <div class="form-group">
                    <label for="inputPassword" class="control-label col-xs-2">Course</label>
                    <div class="col-xs-10">
                        <input type="password" class="form-control" id="course" name="course">
                    </div>
                </div>
                
                  <div class="form-group">
                    <label for="inputPassword" class="control-label col-xs-2">Duration</label>
                    <div class="col-xs-10">
                        <input type="password" class="form-control" id="duration" name="duration">
                    </div>
                </div>
                
                  <div class="form-group">
                    <label for="inputPassword" class="control-label col-xs-2">Address</label>
                    <div class="col-xs-10">
                        <input type="password" class="form-control" id="address" name="address">
                    </div>
                </div>
                
                  <div class="form-group">
                    <label for="inputPassword" class="control-label col-xs-2">date of Birth</label>
                    <div class="col-xs-10">
                        <input type="password" class="form-control" id="dob" name="dob">
                    </div>
                </div>
                
                  <div class="form-group">
                    <label for="inputPassword" class="control-label col-xs-2">Phone Number</label>
                    <div class="col-xs-10">
                        <input type="password" class="form-control" id="number" name="number">
                    </div>
                </div>
                <span style="color:red;" id="error"></span>

                <div class="form-group">
                    <div class="col-xs-offset-2 col-xs-10">
                        <input type="submit" id="updateBtn" class="btn btn-primary" value="Save">
                    </div>
                </div>
                 <div class="form-group">
                    <div class="col-xs-offset-2 col-xs-10">
                        <input type="submit" id="deleteBtn" class="btn btn-primary" value="Clear">
                    </div>
                </div>
                
                </form>
        </div>
        </div>
</body>  
</html>  