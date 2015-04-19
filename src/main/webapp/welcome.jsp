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
        <script>
            
            
$(document).ready(function() {

$('#resetBtn').click(function() {
    location.href = "http://localhost:8080/studentfeemodule/welcome.jsp";
});
    $('#continueBtn').click(function() {
        // alert("Button Click");

        var student = $('#userName').val();


        if (student === '') {
            console.log('Student id is required!!!');
            $("#errorMsg").text("Student id is required!!!");
        }
        else if (!(jQuery.isNumeric(student))) {
            console.log('User id should be numeric');
            $("#errorMsg").text("User id should be numeric");
        }
        else {

            var url = 'rs/student/' + student;
            //console.log(url);

            $.getJSON(url, function(data) {

                // console.log(data);
                if (data.length > 0)
                {
                    $.each(data, function(index, row) {

                        $('#showalldata').fadeIn('slow');
                        $('#givehere').append('<tr><td> Student ID: ' + row.studentId + '</td></tr>');
                        $('#givehere').append('<tr><td>Name: ' + row.firstName+'  ' + row.lastName + '</td></tr>');
                        $('#givehere').append('<tr><td>D.O.B: ' + row.birthDate + '</td></tr>');
                        $('#givehere').append('<tr><td>Cource: ' + row.course + '</td></tr>');
                        $('#givehere').append('<tr><td>Duration: ' + row.duration + '</td></tr>');
                        $('#givehere').append('<tr><td>Address: ' + row.address + '</td></tr>');
                        $('#givehere').append('<tr><td>Phone Number: ' + row.phoneNumber + '</td></tr>');
                        $('#givehere').append('<input type="button" value= "delete" id="' + row.studentId + '" class="deletethis btn btn-primary"/>');
                        $('#givehere').append('<a href=\'addStudentDetails.jsp?id='+row.studentId+'\'><input type="button" value= "update" id="' + row.studentId + '" class="updatethis btn btn-primary"/></a>');
                        $('#continueDiv').hide();
                    });

                }

                else
                {
                    $('#showalldata').fadeIn('slow');
                    $('#givehere').append("NO DATA FOUND");
                }

            });
        }

    });

    $('#showalldata').on("click", '.deletethis', function() {
        alert('oky');
        var id = $(this).attr('Id');
        alert(id);
        $.ajax({
            url: 'rs/student/' + id + '',
            type: 'delete',
            contentType: 'application/json',
            dataType: 'json',
            success: function(data) {
                alert("deleted");
                location.href = "http://localhost:8080/studentfeemodule/welcome.jsp";
               
            }
        });

    });

});

            
            
            
            
            
        </script> 
        
    </head>
    <body>
        <div class="bs-example">
          <div class="container">
              <h1>PLEASE ENTER STUDENT ID</h1>
              <form class="form-horizontal" >
                <div class="form-group">
                    <label for="userName" class="control-label col-xs-2">Student ID</label>
                    <div class="col-xs-10"> 
                        <input type="text" class="form-control" id="userName" placeholder="User id">
                    </div>
                </div>
                <span style="color:red;" id="error"></span>

                <div class="form-group">
                    <div class="col-xs-offset-2 col-xs-10" id="continueDiv">
                      <input type="button" id="continueBtn" class="btn btn-primary" value="Continue" />
                    </div>
                    <br><br>
                    <div class="col-xs-offset-2 col-xs-10" id="">
                      <input type="button" id="resetBtn" class="btn btn-primary" value="Reset" />
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
