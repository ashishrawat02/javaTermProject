/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {

    $('#continueBtn').click(function () {
       // alert("Button Click");

        var student = $('#userName').val();
        
       
        if (student === '') {
            console.log('Student id is required!!!');
            $("#errorMsg").text("Student id is required!!!");
        }
        else if(!(jQuery.isNumeric(student))){
            console.log('User id should be numeric');
            $("#errorMsg").text("User id should be numeric");
        }
        else {
           
            var url = 'rs/student/' + student;
            //console.log(url);
            
            $.getJSON(url, function (data) {
                
            if(data)
            {
                alert("sgs");
                
            }
            else
            {
                alert("sfsjf");
            }
                    
                
                alert(data);
               // console.log(data);
               if(data)
               {
               
                $.each(data, function(index, row){
                  
                 $('#showalldata').fadeIn('slow');
               $('#givehere').append('<tr><td>'+row+'</td></tr>');
               
        
                    
               
                });
                
               }
               
               else
               {
                   alert("zdvhgz");
               }
               // if (!jQuery.isEmptyObject(data)) {
               if(data.length > 0){
                   //console.log('inside data not null'); 
                   //setItem("id",data.id);
                   alert("gdfiugh");
                    window.location.replace = "./addStudentDetails.jsp";
                }
                else {
                    console.log('inside data null'); 
                    $("#errorMsg").text("Student id does not exist");
                    
                }
            });
        }

    });

});
