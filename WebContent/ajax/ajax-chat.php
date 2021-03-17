<?php
       
        if (file_exists('../config/config.php')){
        require_once '../config/config.php';
        }else{
        require_once './config/config.php';
        }
        
    
    if(isset($_REQUEST['name'])){
        $name = $_REQUEST['name'];
    }else{
        $name = "";
    }
    if(isset($_REQUEST['email'])){
        $email = $_REQUEST['email'];
    }else{
        $email = "";
    }
    if(isset($_REQUEST['description'])){
        $description= $_REQUEST['description'];
    }else{
        $description= "";
    }
    

    // $chat_query = "INSERT `chat` SET name ='$name',email='$email',description='$description'";
    // $run_query = mysqli_query($conn, $chat_query);
    if(isset($_REQUEST['email'])){
        $mailfrom = "info@virtuosonetsoft.com";
        $ToEmail = $email;
        $site_url_name = "virtuosonetsoft";
        $subject = 'virtuso net soft';
        $message = get_all_email_content($site_url_name,$name); //mail function in config file
   
        $header = "From:".$mailfrom." \r\n";
        $header .= "MIME-Version: 1.0\r\n";
        $header .= "Content-type: text/html\r\n";
        $retval =  sendEmail($mailfrom, $subject, $message, $site_url, $ToEmail);
        //$retval = mail($ToEmail,$subject,$message,$header);
        
        echo "success";
    }else{
        echo "error";
    }
    

?>