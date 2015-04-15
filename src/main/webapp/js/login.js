/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function() {

    $("#loginBtn").click(function() {
        var id = $("#user").val();
        var password = $("#inputPassword").val();
        if (id === '' && password === '') {
            $("#error").text("Please enter the username and password.");
        }
        else {
            var url = './rs/student/' + id + '/' + password;
            $.getJSON(url, function(data) {
              window.location.href = "./welcome.jsp";

            });
        }
    });
});