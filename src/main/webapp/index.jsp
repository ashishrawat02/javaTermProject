<%-- 
    Document   : login
    Created on : 10-Apr-2015, 4:24:19 PM
    Author     : c0649005
--%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Example of Bootstrap 3 Horizontal Form Layout</title>
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
        <script src="js/login.js"></script> 
    </head>
    <body>
        <div class="bs-example">

            <form class="form-horizontal" >
                <div class="form-group">
                    <label for="id" class="control-label col-xs-2">Student ID</label>
                    <div class="col-xs-10">
                        <input type="text" class="form-control" id="id" placeholder="Student id">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="control-label col-xs-2">Password</label>
                    <div class="col-xs-10">
                        <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                    </div>
                </div>
                <span style="color:red;" id="error"></span>

                <div class="form-group">
                    <div class="col-xs-offset-2 col-xs-10">
                        <button type="button" id="loginBtn" class="btn btn-primary">Login</button>
                    </div>
                </div>
        </div>
    </form>
</body>  
</html>  