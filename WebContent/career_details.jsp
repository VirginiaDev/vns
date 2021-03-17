<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<?php

require_once 'config/config.php';
$career_name =$_POST['career_name'];
$career_email =$_POST['career_email'];
$career_number =$_POST['career_number'];
$career_services =$_POST['career_services'];
$career_msg =$_POST['career_msg'];

 // get the temporary file name of the file on the server 

   $inputfile = $_FILES['file']['name'];  // get the name of the file 
   $tmp_name    = $_FILES['file']['tmp_name'];
   
    $size        = $_FILES['file']['size'];  // get size of the file for size validation 
    $type        = $_FILES['file']['type'];  // get type of the file 
    $error       = $_FILES['file']['error']; // get the error (if any) 
  $to = $career_email;

move_uploaded_file($tmp_name,"career_files/".$inputfile);
    
//sender
 $subject = 'virtuso net soft';
   $mailfrom = "noreply@virtuosonetsoft.com";
   $ToEmail = $career_email;
        //$ToEmail1 = 'careers@virtuosonetsoft.in';
         $ToEmail1 = 'careers@virtuosonetsoft.in';
        $namemain = "virtuosonetsoft";
      
        $message = get_all_email_content_contact($namemain,$career_name ,$career_msg); //mail function in config file
          $message2 =  get_all_content_career($career_name ,$career_number  ,$career_services ,$career_msg,$career_email,$encoded_content); //mail function in config file
          
        $header = "From:".$mailfrom." \r\n";
        $header .= "MIME-Version: 1.0\r\n";
        $header .= "Content-type: text/html\r\n";
        $retval =  sendEmail_career($mailfrom, $subject, $message,$message2,$namemain, $ToEmail,$ToEmail1,$inputfile);
    
    echo "success";


?>