/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function() {
    
    $('.deletethis').on("click", "")

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
                        $('#givehere').append('<tr><td>Name: ' + row.firstName + row.lastName +'</td></tr>');
                        $('#givehere').append('<tr><td>D.O.B: ' + row.birthDate + '</td></tr>');
                        $('#givehere').append('<tr><td>Cource: ' + row.course + '</td></tr>');
                        $('#givehere').append('<tr><td>Duration: ' + row.duration + '</td></tr>');
                        $('#givehere').append('<tr><td>Address: ' + row.address + '</td></tr>');
                        $('#givehere').append('<tr><td>Phone Number: ' + row.phoneNumber + '</td></tr>');
                        $('#givehere').append('<input type="button" value= "delete" id="'+row.studentId+'" class="deletethis"/>');
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

});
