$("#ajax_post_comment").on("submit",function (e) {
 e.preventDefault();
 var form = e.target;
 var data = new FormData(form);
 $.ajax({
     
     url: form.action,
     method: form.method,
     processData: false,
     contentType: false,
     data: data,
     processData: false,
     beforeSend:function(){
           $('#showmsg').css('color','light blue');
         $('#showmsg').html('    Please Wait......');
     },
        success: function (data) {
             //console.log(data);
      
            if(data=='success'){
                $('#showmsg').css('color','green');
                $('#showmsg').html('Thanks For Post Your Comment.');
                listComment();
            }
          //  console.log(data);
        }
    });
return false;

});