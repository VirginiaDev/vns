<?php
if (file_exists('../config/config.php')){
    require_once '../config/config.php';
    }else{
    require_once './config/config.php';
    }

  $hidden_post_comment = $_REQUEST['hidden_post_comment'];
  $blog_id= $_REQUEST['blog_id'];
  if(isset($_REQUEST['comment_id'])){
        $comment_id = $_REQUEST['comment_id'];
    }else{
        $comment_id = "0";
    }
     if(isset($_REQUEST['comment_name'])){
        $comment_name = $_REQUEST['comment_name'];
    }else{
        $comment_name = "";
    }
      if(isset($_REQUEST['comment_email'])){
        $comment_email = $_REQUEST['comment_email'];
    }else{
        $comment_email = "";
    }
      if(isset($_REQUEST['comment_site'])){
        $comment_site = $_REQUEST['comment_site'];
    }else{
        $comment_site = "";
    }
      if(isset($_REQUEST['comment_area'])){
        $comment_area = $_REQUEST['comment_area'];
    }else{
        $comment_area = "";
    }
   // echo $hidden_post_comment.$comment_name.$comment_email.$comment_site.$comment_area;

    $conn=  mysqli_connect('localhost','root','','virtuoso_site');
    $qry="insert into blog_post_comment(name,email,website,comment,post_or_reply,parent_comment_id,blog_id,status) values('$comment_name','$comment_email','$comment_site','$comment_area','$hidden_post_comment','$comment_id','$blog_id','0')";
    $sql=  mysqli_query($conn, $qry);
   
     $subject = 'virtuso net soft';
   $mailfrom = $comment_email;
   $ToEmail = 'saurabh@virtuosonetsoft.com';
        //$ToEmail1 = 'careers@virtuosonetsoft.in';
         //$ToEmail1 = $comment_email;
        $namemain = "virtuosonetsoft";
      
        //$message = get_all_content_post($namemain,$career_name ,$career_msg); //mail function in config file
          $message2 =  get_all_content_post($comment_name ,$comment_email  ,$comment_site ,$comment_area); //mail function in config file
          //echo $message2;
        $header = "From:".$mailfrom." \r\n";
        $header .= "MIME-Version: 1.0\r\n";
        $header .= "Content-type: text/html\r\n";
        $retval =  sendEmail_post($mailfrom, $subject,$message2,$namemain, $ToEmail);
    
    echo "success";
    ?>