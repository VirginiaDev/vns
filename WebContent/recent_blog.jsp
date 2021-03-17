<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

        
          <h2>Recent Blog</h2>
          <div class="card my-4">
          <h5 class="card-header">Categories</h5>
          <div class="card-body">
            <div class="content-widget-sidebar">
                    <ul>
                        <?php
                            $sql = "select * from virtuoso_category order by datetime desc limit 4";
                $qry = mysqli_query($conn, $sql);

                while ($row = mysqli_fetch_array($qry)) {
                    $image = $row['image'];

                                $simple_string = $row['id']; 

                                // Display the original string 
                                

                                // Store the cipher method 
                                $ciphering = "AES-128-CTR"; 

                                // Use OpenSSl Encryption method 
                                $iv_length = openssl_cipher_iv_length($ciphering); 
                                $options = 0; 

                                // Non-NULL Initialization Vector for encryption 
                                $encryption_iv = '1234567891011121'; 

                                // Store the encryption key 
                                $encryption_key = "GeeksforGeeks"; 

                                // Use openssl_encrypt() function to encrypt the data 
                                $encryption = openssl_encrypt($simple_string, $ciphering, 
                                            $encryption_key, $options, $encryption_iv); 



                        ?>
                     <li class="recent-post">
                        <div class="post-img">
                         <img src="<?php echo $image_path . $image; ?>" class="img-responsive">
                         </div>
                         <a href="blog_detail_dev.php?token=<?php echo $encryption ?>"><h5><?php  echo substr(strip_tags($row['title']), 0, 33); ?></h5></a>
                         <p><small><i class="fa fa-calendar" data-original-title="" title=""></i> <?php echo substr($row['datetime'],0,10); ?></small></p>
                        </li>
                        <hr>
                        
                       
                        
                       
                       <?php }?>
                        
                        
                    </ul>
                   </div>
          </div>
          </div>
</html>