/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function() {

    var r = "cargarcombo.jsp";
    //var ruta=parseUri(r);


//make the AJAX request, dataType is set to json
//meaning we are expecting JSON data in response from the server
    $.ajax({
        type: "GET",
        url: r,
//        data: dataString,
//        dataType: "json",
        //if received a response from the server
        success: function(data) {
            //our country code was correct so we have some information to display

            $("#especie").html(data);
        }


    });
});



