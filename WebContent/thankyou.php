<?php
 if (file_exists('../config/config.php')){
    require_once '../config/config.php';
    }else{
    require_once 'config/config.php';
    }
if(isset($_GET['email'])){
    $email = $_GET['email'];
    $mailfrom = "noreply@virtuosonetsoft.com";
       
        $ToEmail = $email;
        $namesup = "virtuosonetsoft";
        $subject = 'virtuso net soft';
        $message = get_all_email_content_thank(); //mail function in config file
   
        $header = "From:".$mailfrom." \r\n";
        $header .= "MIME-Version: 1.0\r\n";
        $header .= "Content-type: text/html\r\n";
        //$retval =  sendEmail($mailfrom, $subject, $message, $namesup, $ToEmail);
        $retval = mail($ToEmail,$subject,$message,$header);
}


?>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Virtuoso Netsoft</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
</head>

<body>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> 
<script src="js/bootstrap.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> 
<script src="js/main.js"></script> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script> 
<script type="text/javascript" src="js/function.js"></script>
<script>
   swal({ title: "",
            text: "Thank You for your interset",
              icon: "success"})

              . then((isConfirm) => {
                  window.location.href = "index";
              });
            
</script>