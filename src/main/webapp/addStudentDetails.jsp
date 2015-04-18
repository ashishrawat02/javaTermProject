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

        <script >


            $(document).ready(function() {
                var url = window.location.href;
                var res = url.split("=");
                //alert(url);
                if (res && res[1]) {
                    var recId = res[1];
                    alert(recId);
                    $('#saveDiv').hide();
                    var url = 'rs/student/' + recId;
                    $.getJSON(url, function(data) {
                        if (data.length > 0)
                        {
                            $.each(data, function(index, row) {
                                $('#studentId').val(row.studentId);
                            });

                        }

                    });
                }else{
                    $('#updateDiv').hide();
                }
                
                $('#updateBtn').click(function() {
                    alert("write put");
                    
                });

                $('#saveBtn').click(function() {
                    alert("button");
                    $.ajax({
                        url: 'rs/student/',
                        type: 'POST',
                        contentType: 'application/json',
                        dataType: 'json',
                        data: JSON.stringify({
                            "studentId": $('#studentId').val(),
                            "firstName": $('#firstName').val(),
                            "lastName": $('#lastName').val(),
                            "course": $('#course').val(),
                            "duration": $("#duration").val(),
                            "address": $('#address').val(),
                            "birthDate": $('#birthdate').val(),
                            "phoneNumber": $('#phoneNumber').val()
                        }),
                        success: function(data) {
                            alert(data);
                            window.location.replace('welcome.jsp');
                        }
                    });

                });
            });
        </script> 
    </head>
    <body>
        <div class="bs-example">
            <div class="container">

                <form class="form-horizontal">
                    <div class="form-group">
                        <label for="id" class="control-label col-xs-2">Student ID:</label>
                        <div class="col-xs-10"> 
                            <input type="text" class="form-control" id="studentId" name="studentId">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="fName" class="control-label col-xs-2">First Name</label>
                        <div class="col-xs-10">
                            <input type="text" class="form-control" id="firstName" name="fName">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="lName" class="control-label col-xs-2">Last Name</label>
                        <div class="col-xs-10">
                            <input type="text" class="form-control" id="lastName" name="lname">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="course" class="control-label col-xs-2">Course</label>
                        <div class="col-xs-10">
                            <input type="text" class="form-control" id="course" name="course">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="duration" class="control-label col-xs-2">Duration</label>
                        <div class="col-xs-10">
                            <input type="text" class="form-control" id="duration" name="duration">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="address" class="control-label col-xs-2">Address</label>
                        <div class="col-xs-10">
                            <input type="text" class="form-control" id="address" name="address">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="dob" class="control-label col-xs-2">date of Birth</label>
                        <div class="col-xs-10">
                            <input type="text" class="form-control" id="birthdate" name="dob">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="number" class="control-label col-xs-2">Phone Number</label>
                        <div class="col-xs-10">
                            <input type="text" class="form-control" id="phoneNumber" name="number">
                        </div>
                    </div>
                    <span style="color:red;" id="error"></span>

                    <div class="form-group">
                        <div class="col-xs-offset-2 col-xs-10" id="saveDiv">
                            <input type="button" id="saveBtn" class="btn btn-primary" value="Save">
                        </div>
                        <div class="col-xs-offset-2 col-xs-10" id="updateDiv">
                            <input type="button" id="updateBtn" class="btn btn-primary" value="Create">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-xs-offset-2 col-xs-10">
                            <input type="button" id="deleteBtn" class="btn btn-primary" value="Clear">
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </body>  
</html>  