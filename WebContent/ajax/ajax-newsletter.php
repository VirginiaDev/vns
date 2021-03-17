<?php
       
        if (file_exists('../config/config.php')){
        require_once '../config/config.php';
        }else{
        require_once './config/config.php';
        }
        
    
   
    if(isset($_REQUEST['email'])){
        $email = $_REQUEST['email'];
    }else{
        $email = "";
    }
    
    

    // $chat_query = "INSERT `chat` SET name ='$name',email='$email',description='$description'";
    // $run_query = mysqli_query($conn, $chat_query);
    if(isset($_REQUEST['email'])){
        $mailfrom = "noreply@virtuosonetsoft.com";
        $token = md5($email);
        $link = "thankyou.php?email=$email&token=$token";
        $ToEmail = $email;
         $ToEmail1 = 'query@virtuosonetsoft.in';
        $namesup = "virtuosonetsoft";
        $subject = 'Subscribe';
        $message = get_all_email_content_verify($namesup,$link); //mail function in config file
          $message2 = get_all_email_content_subscribe($email);
        $header = "From:".$mailfrom." \r\n";
        $header .= "MIME-Version: 1.0\r\n";
        $header .= "Content-type: text/html\r\n";
        $retval =  sendEmail($mailfrom, $subject, $message,$message2, $namesup, $ToEmail, $ToEmail1);
        echo "success";
    }else{
        echo "error";
    }
    

?>