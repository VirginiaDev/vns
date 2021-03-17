<html>
	<head>
	    <title>Sending Email</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	</head>
	<body>
<!--	      <button type="button" class="btn btn-primary">Send Email</button>-->
<?php //include('contactus.html'); ?>
	</body>
</html>


<?php

      $email = $_GET['email'];
     //  echo $email;
    
       
		$FromEmail = 'komal@virtuosonetsoft.in';
                 $Subject = 'SMS24Hours';
        
		$ToEmail1 =  'komal@virtuosonetsoft.in';
		//$headers .= "CC: susan@example.com\r\n";
		$headers = "MIME-Version: 1.0\r\n";
		$headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";
		$message ="<!DOCTYPE html>";
        $message .= "<html lang='en'><head><meta charset='utf-8'><meta http-equiv='X-UA-Compatible' content='IE=edge'>";
        $message .= "<meta name='viewport' content='width=device-width, initial-scale=1'>";
        $message .= "<title>WORLDKART</title>";
        $message .= "<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>";
        $message .= "<style>";
        $message .= "body{margin:0px;padding:0px;background-color: #f2f2f2;}.container-fluid{padding-left:0px;padding-right:0px;margin:auto;width:100%;}";
        $message  .= ".container{ padding-left:0px;padding-right:0px;max-width:600px;margin:auto;width:100%;}.row{margin-left:0px;margin-right:0px;}img{width:100%;}";
        $message  .= ".main-area{float:left;width: 100%;background-color:#fff;margin-top: 2em;}.caption_head {float:left;width:100%;background: #dd550d;color: #fff;border-bottom:1px solid #eee;}";
        $message .= ".caption_head img {margin-top: 5px;margin-left: 5px;max-width: 100px;width:100%;background-color:#fff;border: 1px solid #dd550d;}.caption_head span{float: right;margin-top: 17px;font-size: 1.5em;font-weight: bold;padding: 10px;}";
        $message .= "table{float:left;width:100%;padding: 10px;text-align:left;border: 1px solid #cecccc;}";
        $message .=  "th,td{padding: 10px;border: none;}";
        $message .=  ".footer{float:left;width:100%;padding: 10px;border-top:1px solid #eee;text-align: center;}</style>";
        $message .= "</head><body><section class='container'><section class='main-area'><section class='row'><section class='caption_head'><img src='https://www.worldkart.in/assets/images/logo.png'/>";
        $message .= "<span>Contact Details</span></section>";
        $message .= "<table border='0' width='100%' cellspacing='0' cellpadding='0'><tr><th>Hello</th></tr><tr><td  class='m_1708323044176212233m_-8534007928013060005textContent' valign='top'>User </h3> </td></tr></table>";
        //$message .= "<section class='footer'>© WorldKart 2018. All Rights Reserved.</section></section> </section></section>";
        $message .= "</body></html>";
	    	sendEmail($FromEmail, $Subject, $message, 'SMS24Hours',$ToEmail1);
	function sendEmail($FromEmail, $Subject, $message, $FromName, $ToEmail1) {
       
        require ("class.phpmailer.php");

      

        $mail = new PHPMailer();

        $mail->From = $FromEmail;
        $mail->FromName = $FromName;

        $mail->IsSMTP();

        $mail->SMTPAuth = true;     // turn of SMTP authentication
		$mail->Port = 25;
		$mail->SMTPSecure = 'tls';



       $mail->Host = "smtpout.asia.secureserver.net"; // sets the SMTP server
     //   $mail->Host = "smtpout.asia.secureserver.net"; // sets the SMTP server

        $mail->Username = "support@sms24hours.com"; // SMTP account useraltmish.danish
        $mail->Password = "Sms24@support";        // SMTP account password
       

        $mail->SMTPDebug = 2; 

        $mail->Sender = $FromEmail; // $bounce_email;
        $mail->ConfirmReadingTo = $FromEmail;

        $mail->AddReplyTo($FromEmail);
        $mail->IsHTML(true); //turn on to send html email
        $mail->Subject = $Subject;

        $mail->Body = $message;
        $mail->ClearReplyTos();
         //  $mail->AddAddress($ToEmail, $ToEmail);
        $mail->AddAddress($ToEmail1, $ToEmail1);
   
          if(!$mail->send()) {
        echo "Mailer Error: " . $mail->ErrorInfo;
    } 
    else {
        echo "Message has been sent successfully";
    }
    }


?>

