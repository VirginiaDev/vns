<?php
//ini_set('display_errors', 1); ini_set('display_startup_errors', 1); error_reporting(E_ALL);
function get_all_email_content_verify($mailname = '',$link = ''){
  $site_url = "http://test.vnsoftindia.com/vns-new/";
  $link = $site_url.$link;
  $emailcontent ='
    <html lang="en">
      <head>
        <meta charset="UTF-8">
        <title>
        </title>
        <style>
          h1, h4 {
            color: #ff4500;
          }
          .header {
            border-bottom: 2px solid #ff4500;
            background-color: #fff;
            text-align: center;
          }
          .footer {
            border-top: 2px solid #1b6d85;
          }
          .footer > a {
            color: #ff4500;
          }
        </style>
      </head>
      <body>
        <table width="100%">
          <tr>
            <td align="center">
              <table width="600">
                <tr>
                  <td class="header">
                    <h1>Virtuosonetsoft
                    </h1>
                  </td>
                </tr>
                <tr>
                  <td>
                    <br>Hello , 
                    <br>
                    <br>
                  </td>    
                </tr> 
                <tr>
                  <td>
                    <p>Thank you for your interest. We will be updating you with latest news. <br>
                        (we will share our projects timely)
                     <br>
                     Please ignore this email if you have not made the request.    
                      <br/> 
                    </p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <br/>
                    Thanks,
                    <br/>
                    Virtuosonetsoft Support Team
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </body>
    </html>';
    return $emailcontent;
}
function get_all_email_content_subscribe($email=''){
     $emailcontent ='
    <html lang="en">
      <head>
        <meta charset="UTF-8">
        <title>
        </title>
        <style>
          h1, h4 {
            color: #ff4500;
          }
          .header {
            border-bottom: 2px solid #ff4500;
            background-color: #fff;
            text-align: center;
          }
          .footer {
            border-top: 2px solid #1b6d85;
          }
          .footer > a {
            color: #ff4500;
          }
        </style>
      </head>
      <body>
        <table width="100%">
          <tr>
            <td align="center">
              <table width="600">
                <tr>
                  <td class="header">
                    <h1>Virtuosonetsoft
                    </h1>
                  </td>
                </tr>
                <tr>
                  <td>
                    <br>Hello , 
                    <br>
                    <br>
                  </td>    
                </tr> 
                <tr>
                  <td>
                     Email : '.$email.' subsrcibe in vns
                    </p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <br/>
                    Thanks,
                    <br/>
                    Virtuosonetsoft Support Team
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </body>
    </html>';
    return $emailcontent;
}
function get_all_email_content($link='', $name=''){
    $emailcontent ='
    <html lang="en">
      <head>
        <meta charset="UTF-8">
        <title>
        </title>
        <style>
          h1, h4 {
            color: #ff4500;
          }
          .header {
            border-bottom: 2px solid #ff4500;
            background-color: #fff;
            text-align: center;
          }
          .footer {
            border-top: 2px solid #1b6d85;
          }
          .footer > a {
            color: #ff4500;
          }
        </style>
      </head>
      <body>
        <table width="100%">
          <tr>
            <td align="center">
              <table width="600">
                <tr>
                  <td class="header">
                    <h1>Virtuosonetsoft
                    </h1>
                  </td>
                </tr>
                <tr>
                  <td>
                    <br>Hello '.ucwords($name).', 
                    <br>
                    <br>
                  </td>    
                </tr> 
                <tr>
                  <td>

                    <p>Thank you for contacting. We will get back to you. Our representative shall call you.
                      <br>
                      <br>
                     
                      Please ignore this email if you have not made the request.    
                      <br/> 
                    </p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <br/>
                    Thanks,
                    <br/>
                    Virtuosonetsoft Support Team
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </body>
    </html>';
    return $emailcontent;
}
// requestquote

function get_all_email_content_supp($site_url='',$name='',$email='',$phn_number='',$message=''){
     $emailcontent ='
    <html lang="en">
      <head>
        <meta charset="UTF-8">
        <title>
        </title>
        <style>
          h1, h4 {
            color: #ff4500;
          }
          .header {
            border-bottom: 2px solid #ff4500;
            background-color: #fff;
            text-align: center;
          }
          .footer {
            border-top: 2px solid #1b6d85;
          }
          .footer > a {
            color: #ff4500;
          }
        </style>
      </head>
      <body>
        <table width="100%">
          <tr>
            <td align="center">
              <table width="600">
                <tr>
                  <td class="header">
                    <h1>Virtuosonetsoft
                    </h1>
                  </td>
                </tr>
                <tr>
                  <td>
                    <br>Hello , 
                    <br>
                    <br>
                  </td>    
                </tr> 
                <tr>
                  <td>
                      <p> Name = '.$name.'
                      <br>
                      Email = '.$email.'
                      <br>
                      Phone Number = '.$phn_number.'
                      <br>
                      Mesaage = '.$message.'
                      <br>

                      <p>
                    <p>
                      <br>
                      
                    </p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <br/>
                    Thanks,
                    <br/>
                    Virtuosonetsoft Support Team
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </body>
    </html>';
    return $emailcontent;
}

function get_all_email_content_thank(){
  $emailcontent ='
  <html lang="en">
    <head>
      <meta charset="UTF-8">
      <title>
      </title>
      <style>
        h1, h4 {
          color: #ff4500;
        }
        .header {
          border-bottom: 2px solid #ff4500;
          background-color: #fff;
          text-align: center;
        }
        .footer {
          border-top: 2px solid #1b6d85;
        }
        .footer > a {
          color: #ff4500;
        }
      </style>
    </head>
    <body>
      <table width="100%">
        <tr>
          <td align="center">
            <table width="600">
              <tr>
                <td class="header">
                  <h1>Virtuosonetsoft
                  </h1>
                </td>
              </tr>
              <tr>
                <td>
                  <br>Hello , 
                  <br>
                  <br>
                </td>    
              </tr> 
              <tr>
                <td>
                  <p> Thank you for subscribing our newsletter .
                    <br>
                    <br>
                   
                    Please ignore this email if you have not made the request.    
                    <br/> 
                  </p>
                </td>
              </tr>
              <tr>
                <td>
                  <br/>
                  Thanks,
                  <br/>
                  Virtuosonetsoft Support Team
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </body>
  </html>';
  return $emailcontent;
}

function get_all_email_content_contactexp2($namemain = '',$name = '' ,$actualmessage = '',$message=''){
    $emailcontent ='
    <html lang="en">
      <head>
        <meta charset="UTF-8">
        <title>
        </title>
        <style>
          h1, h4 {
            color: #ff4500;
          }
          .header {
            border-bottom: 2px solid #ff4500;
            background-color: #fff;
            text-align: center;
          }
          .footer {
            border-top: 2px solid #1b6d85;
          }
          .footer > a {
            color: #ff4500;
          }
        </style>
      </head>
      <body>
        <table width="100%">
          <tr>
            <td align="center">
              <table width="600">
                <tr>
                  <td class="header">
                    <h1>Virtuosonetsoft
                    </h1>
                  </td>
                </tr>
                <tr>
                  <td>
                  <br>Hello 
                    <br>
                    <br>
                  </td>    
                </tr> 
                <tr>
                  <td>
                    <p> Email : '.$namemain.'
                      <br>
                      <br>Phone number : '.$actualmessage.'
                     <br>Inquery Type : '.$name.'<br>
                       
                      <br/> 
                      User wants to contact
                    </p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <br/>
                    Thanks,
                    <br/>
                    Virtuosonetsoft Support Team
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </body>
    </html>';
    return $emailcontent;
    }
function get_all_email_content_contact2($namemain = '',$name = '' ,$actualmessage = '',$message=''){
    $emailcontent ='
    <html lang="en">
      <head>
        <meta charset="UTF-8">
        <title>
        </title>
        <style>
          h1, h4 {
            color: #ff4500;
          }
          .header {
            border-bottom: 2px solid #ff4500;
            background-color: #fff;
            text-align: center;
          }
          .footer {
            border-top: 2px solid #1b6d85;
          }
          .footer > a {
            color: #ff4500;
          }
        </style>
      </head>
      <body>
        <table width="100%">
          <tr>
            <td align="center">
              <table width="600">
                <tr>
                  <td class="header">
                    <h1>Virtuosonetsoft
                    </h1>
                  </td>
                </tr>
                <tr>
                  <td>
                  <br>Hello 
                    <br>
                    <br>
                  </td>    
                </tr> 
                <tr>
                  <td>
                    <p> Email : '.$namemain.'
                      <br>
                      <br>Phone number : '.$actualmessage.'
                     <br>Inquery Type : '.$name.'<br>
                        Message : '.$message.'
                      <br/> 
                      User wants to contact
                    </p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <br/>
                    Thanks,
                    <br/>
                    Virtuosonetsoft Support Team
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </body>
    </html>';
    return $emailcontent;
    }
function get_all_email_content_contactexp($namemain = '',$name = '' ,$actualmessage = ''){
  $emailcontent ='
  <html lang="en">
    <head>
      <meta charset="UTF-8">
      <title>
      </title>
      <style>
        h1, h4 {
          color: #ff4500;
        }
        .header {
          border-bottom: 2px solid #ff4500;
          background-color: #fff;
          text-align: center;
        }
        .footer {
          border-top: 2px solid #1b6d85;
        }
        .footer > a {
          color: #ff4500;
        }
      </style>
    </head>
    <body>
      <table width="100%">
        <tr>
          <td align="center">
            <table width="600">
              <tr>
                <td class="header">
                  <h1>Virtuosonetsoft
                  </h1>
                </td>
              </tr>
              <tr>
                <td>
                <br>Hello '.ucwords($name).' 
                  <br>
                  <br>
                </td>    
              </tr> 
              <tr>
                <td>
                  <p> Thank you for contacting. We will get back to you. Our representative shall call you in a while.

                    <br>
                    <br>
                   
                    Please ignore this email if you have not made the request.    
                    <br/> 
                  </p>
                </td>
              </tr>
              <tr>
                <td>
                  <br/>
                  Thanks,
                  <br/>
                  Virtuosonetsoft Support Team
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </body>
  </html>';
  return $emailcontent;
  }

function get_all_email_content_contact($namemain = '',$name = '' ,$actualmessage = ''){
  $emailcontent ='
  <html lang="en">
    <head>
      <meta charset="UTF-8">
      <title>
      </title>
      <style>
        h1, h4 {
          color: #ff4500;
        }
        .header {
          border-bottom: 2px solid #ff4500;
          background-color: #fff;
          text-align: center;
        }
        .footer {
          border-top: 2px solid #1b6d85;
        }
        .footer > a {
          color: #ff4500;
        }
      </style>
    </head>
    <body>
      <table width="100%">
        <tr>
          <td align="center">
            <table width="600">
              <tr>
                <td class="header">
                  <h1>Virtuosonetsoft
                  </h1>
                </td>
              </tr>
              <tr>
                <td>
                <br>Hello '.ucwords($name).' 
                  <br>
                  <br>
                </td>    
              </tr> 
              <tr>
                <td>
                  <p> Thank you for contacting.We have received your query. Our representative shall call you in a while.
                    <br>
                    <br>
                   
                    Please ignore this email if you have not made the request.    
                    <br/> 
                  </p>
                </td>
              </tr>
              <tr>
                <td>
                  <br/>
                  Thanks,
                  <br/>
                  Virtuosonetsoft Support Team
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </body>
  </html>';
  return $emailcontent;
  }
  
//career
  function get_all_content_career($career_name = '',$career_number = '' ,$career_services = '',$career_msg='',$career_email='',$inputfile=''){
    $emailcontent ='
    <html lang="en">
      <head>
        <meta charset="UTF-8">
        <title>
        </title>
        <style>
          h1, h4 {
            color: #ff4500;
          }
          .header {
            border-bottom: 2px solid #ff4500;
            background-color: #fff;
            text-align: center;
          }
          .footer {
            border-top: 2px solid #1b6d85;
          }
          .footer > a {
            color: #ff4500;
          }
        </style>
      </head>
      <body>
        <table width="100%">
          <tr>
            <td align="center">
              <table width="600">
                <tr>
                  <td class="header">
                    <h1>Virtuosonetsoft
                    </h1>
                  </td>
                </tr>
                <tr>
                  <td>
                  <br>Hello 
                    <br>
                    <br>
                  </td>    
                </tr> 
                <tr>
                  <td>
                    <p> Email : '.$career_email.'
                      <br>
                      <br>Phone number : '.$career_number.'
                     <br>Name : '.$career_name.'</br>
                          <br>Service : '.$career_services.'</br>
                               
                       <br>  Message : '.$career_msg.'
                      <br/> 
                      User wants to contact
                    </p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <br/>
                    Thanks,
                    <br/>
                    Virtuosonetsoft Support Team
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </body>
    </html>';
    return $emailcontent;
    }

function sendEmail($FromEmail, $Subject, $message,$message2, $FromName, $ToEmail1,$toemail1) {
       
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
  $mail->send();
  $mail->ClearAllRecipients();
    $mail->Body     =$message2;
 

// Add the admin address
$mail->AddAddress($toemail1);
$mail->AddCC('kkharbanda76@gmail.com');
//$mail->AddCC('saurabh@virtuosonetsoft.com');
$mail->Send();
// if(!$mail->Send()) {
//   echo 'Message was not sent.';
//   echo 'Mailer error: ' . $mail->ErrorInfo;
//   } else {
//   echo 'Message has been sent.';
//   }
    //die;

}

function sendEmail_career($FromEmail, $Subject, $message,$message2, $FromName, $ToEmail1,$toemail1,$inputfile) {
       
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
  $mail->send();
  $mail->ClearAllRecipients();
    $mail->Body     =$message2;
 

// Add the admin address
$mail->AddAddress($toemail1);
 //$file_path="../public_html/vnsoft/vns-new/career_files/career_files";
//$mail->AddCC('kkharbanda76@gmail.com');
$mail->AddAttachment("career_files/".$inputfile);
$mail->AddCC('saurabh@virtuosonetsoft.com');
$mail->Send();
  
    

}




//comment post

function get_all_content_post($comment_name='' ,$comment_email ='' ,$comment_site='' ,$comment_area=''){
    $emailcontent ='
    <html lang="en">
      <head>
        <meta charset="UTF-8">
        <title>
        </title>
        <style>
          h1, h4 {
            color: #ff4500;
          }
          .header {
            border-bottom: 2px solid #ff4500;
            background-color: #fff;
            text-align: center;
          }
          .footer {
            border-top: 2px solid #1b6d85;
          }
          .footer > a {
            color: #ff4500;
          }
        </style>
      </head>
      <body>
        <table width="100%">
          <tr>
            <td align="center">
              <table width="600">
                <tr>
                  <td class="header">
                    <h1>Virtuosonetsoft
                    </h1>
                  </td>
                </tr>
                <tr>
                  <td>
                  <br>Hello 
                    <br>
                    <br>
                  </td>    
                </tr> 
                <tr>
                  <td>
                    <p> Email : '.$comment_email.'
                      <br>
                      <br>Website : '.$comment_site.'
                     <br>Name : '.$comment_name.'</br>                  
                               
                       <br>  Comment : '.$comment_area.'
                      <br/> 
                      User wants to contact
                    </p>
                  </td>
                </tr>
                <tr>
                  <td>
                    <br/>
                    Thanks,
                    <br/>
                    Virtuosonetsoft Support Team
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </body>
    </html>';
    return $emailcontent;
    }

function sendEmail_post($FromEmail, $Subject, $message2, $FromName, $ToEmail1) {
       
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

  $mail->Body = $message2;
  $mail->ClearReplyTos();
   //  $mail->AddAddress($ToEmail, $ToEmail);
  $mail->AddAddress($ToEmail1, $ToEmail1);
  $mail->send();
//  $mail->ClearAllRecipients();
//    $mail->Body     =$message2;
// 
//
//// Add the admin address
//$mail->AddAddress($toemail1);
////$mail->AddCC('kkharbanda76@gmail.com');
//$mail->AddCC('saurabh@virtuosonetsoft.com');
//$mail->Send();
  
    //echo "success";

}



?>