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
    if(isset($_REQUEST['lname'])){
        $lname = $_REQUEST['lname'];
    }else{
        $lname = "";
    }
    if(isset($_REQUEST['email'])){
        $email = $_REQUEST['email'];
    }else{
        $email = "";
    }
    if(isset($_REQUEST['message'])){
        $actualmessage = $_REQUEST['message'];
    }else{
        $actualmessage = "";
    }
    if(isset($_REQUEST['subject'])){
        $subject = $_REQUEST['subject'];
    }else{
        $subject = 'virtuso net soft';
    }
    if(isset($_REQUEST['type'])){
        $type = $_REQUEST['type'];
    }else{
        $type = "";
    }
    if(isset($_REQUEST['mobile'])){
        $phn_number = $_REQUEST['mobile'];
    }else{
        $phn_number = "";
    }

    // $contact_query = "INSERT `contact` SET name ='$name',type='$type' ,phn_number='$phn_number',email = '$email',message = '$message'";
    // $run_query = mysqli_query($conn, $contact_query);
    if(isset($_REQUEST['email'])){
            if($type == 'sale'){
                $mailfrom = "sales@virtuosonetsoft.com";
            }else if($type == 'support' || $type == 'inquiries'){
                $mailfrom = "services@virtuosonetsoft.com";
            }
            else{
                $mailfrom = "noreply@virtuosonetsoft.com";
            }
       
        $ToEmail = $email;
        $ToEmail1 = 'contact@virtuosonetsoft.in';
         //$ToEmail1 = 'kkharbanda76@gmail.com';
        $namemain = "virtuosonetsoft";
      
        $message = get_all_email_content_contact($namemain,$name ,$actualmessage); //mail function in config file
          $message2 = get_all_email_content_contact2($email,$type ,$phn_number,$actualmessage); //mail function in config file
        $header = "From:".$mailfrom." \r\n";
        $header .= "MIME-Version: 1.0\r\n";
        $header .= "Content-type: text/html\r\n";
        $retval =  sendEmail($mailfrom, $subject, $message,$message2,$namemain, $ToEmail,$ToEmail1);
            echo "success";
        }else{
            echo "error";
        }
    

?>