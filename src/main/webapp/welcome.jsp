<%-- 
    Document   : welcome
    Created on : 14-Apr-2015, 4:55:32 PM
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
            
            #showalldata{
                display: none;
            }
        </style>
        <script src="js/studentId.js"></script> 
        
    </head>
    <body>
        <div class="bs-example">
          <div class="container">
              <form class="form-horizontal" >
                <div class="form-group">
                    <label for="userName" class="control-label col-xs-2">Student ID</label>
                    <div class="col-xs-10"> 
                        <input type="text" class="form-control" id="userName" placeholder="User id">
                    </div>
                </div>
                <span style="color:red;" id="error"></span>

                <div class="form-group">
                    <div class="col-xs-offset-2 col-xs-10">
                        <!--<button type="submit" id="continueBtn" class="btn btn-primary">Continue</button> -->
                        <input type="button" id="continueBtn" class="btn btn-primary" value="Continue" />
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-xs-offset-2 col-xs-10">
                        <a href="addStudentDetails.jsp" <button type="button" id="addBtn" class="btn btn-primary">Add</button></a>
                    </div>
                </div>
                <div id="showalldata">
                    <table id="givehere"></table>
                </div>
        
    </form>
              </div>
          </div>
</body>  
</html>  
