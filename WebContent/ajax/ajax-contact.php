<?php
//    if (file_exists('../includes/connection.php')){
//     require_once '../includes/connection.php';
//     }else{
//     require_once './includes/connection.php';
//     }
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
    if(isset($_REQUEST['message'])){
        $text = $_REQUEST['message'];
    }else{
        $text = "";
    }
    if(isset($_REQUEST['subject'])){
        $subject = $_REQUEST['subject'];
    }else{
        $subject = "Request";
    }
    if(isset($_REQUEST['phn_number'])){
        $phn_number = $_REQUEST['phn_number'];
    }else{
        $phn_number = "";
    }
    // $mailfrom = "info@virtuosonetsoft.com";
    //         $ToEmail = $email;
    //         $site_url = "virtuosonetsoft";
    //        $message = get_all_email_content($site_url,$name); //mail function in config file
    //     //   $header = "From:".$mailfrom." \r\n";
    //     // $header .= "MIME-Version: 1.0\r\n";
    //     // $header .= "Content-type: text/html\r\n";
    //    
          
   
    if(isset($_REQUEST['email']) || isset($_REQUEST['name'])){
            $mailfrom = "noreply@virtuosonetsoft.com";
            $ToEmail = $email;
             $toemail1 = 'query@virtuosonetsoft.in';
         
            $site_url = "virtuosonetsoft";
            $message_user = get_all_email_content($site_url,$name);
             $message2 = get_all_email_content_supp($site_url,$name,$email,$phn_number,$text);
            sendEmail($mailfrom, $subject, $message_user,$message2, $site_url, $ToEmail,$toemail1);
        echo "success";
    }else{
        echo "error";
    }
    

?>