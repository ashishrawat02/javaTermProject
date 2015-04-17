/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function() {

    $('#savebtn').click(function() {
        var studentId = $('#studentId').val();
        var fName = $('#fName').val();
        var lName = $('#lName').val();
        var course = $('#course').val();
        var duration = $('#duration').val();
        var address = $('#address').val();
        var dob = $('#dob').val();
        var number = $('#number').val();
        var data = {
            studentId: $('#studentId').val(),
            firstName: $('#fName').val(),
            lastName: $('#lName').val(),
            course: $('#course').val(),
            duration:$( "duration").val(),
            address: $('#address').val(),
            birthDate: $('#dob').val(),
            phoneNumber: $('#number').val()
        };
        alert(hello);
        if (studentId === '' && fName === '' && lName === '' && course === '' && duration === '' && address === ''
                && dob === '' && number === '') {
            $("#errorMsg").text("All fields are mendatory.");
        } else {
            $.ajax({
                url: './rs/student/',
                type: 'POST',
                data: JSON.stringify(hello),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json', 
                success: function(data) {
                    $('#studentId').val(studentId);
                    $('#fName').val(fName);
                    $('#lName').val(lName);
                    $('#course').val(course);
                    $('#duration').val(duration);
                    $('#address').val(address);
                    $('#dob').val(dob);
                    $('#number').val(number);
                    window.location.href = "./secondpage.jsp";
                }
            });
        }
    });
});