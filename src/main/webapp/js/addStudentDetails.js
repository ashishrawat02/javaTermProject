/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function() {

    $('#updateBtn').click(function() {
       alert("button");
      
       
            $.ajax({
                url: '/rs/student/',
                type: 'POST',
                contentType: 'application/json',
                dataType: 'json',
                data: JSON.stringify({
                    "studentId": $('#studentId').val(),
                    "firstName": $('#firstName').val(),
                    "lastName": $('#lastName').val(),
                    "course": $('#course').val(),
                    "duration":$( "duration").val(),
                    "address": $('#address').val(),
                    "birthDate": $('#dob').val(),
                    "phoneNumber": $('#number').val()
                }),
                success: function(data) {
                   alert("hello");
                   
                }
            });
        
    });
});