<form id="newsletter-form" name="newsletter-form" method="POST">
					<div class="row">
				<div class="col-md-8">
					<input class="form-control" type="email" id="emailL" name="email" placeholder=" Enter Your Email" required/>
					<span id ="emailErrL"  style="color:red" ></span>
					</div>
					
				<div class="col-md-4">
					<button class="btn btn-primary submit" type="button" id="submitL" onclick="subscribeUs()">Subscribe Now</button>
					<img src = "images/giphy.gif" id="loaderL" class="img loader-img" id="news-loader" style ="display:none;" alt="Image-Giphy-2">
					
					</div>
					 <div id="thankyouL" style="display:none">
  				<label style="color:#1000ff">Thank you please check your email..we have sent a confirmation email</label>
			 </div>
			</div>
			<div id="dbResultsL" style="display:none"></div>
				</form>
<script>
function subscribeUs(){
	var email = document.getElementById('emailL').value;
	var letters_email = /\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	
	  if (email == "") {
	        document.getElementById('emailErrL').innerHTML = "Enter  Email";
	        return true;
	    }

	    else if (!email.match(letters_email)) {
	        document.getElementById('emailErrL').innerHTML = "Enter Valid Email";
	        return true;
	    }
	    else
	    {
	        var email1 = document.getElementById('emailL').value;
	        document.getElementById('emailErrL').innerHTML = "";
	    }
	  
	  $.ajax({
	        type: "POST",
	        url: "NewsLetter_db.jsp",
	        data: {
	            email1: email1
	        },
	        success: function (data) {
	        	 document.getElementById("submitL").style.display='none';
	        	 document.getElementById("loaderL").style.display='block';
	        	 
	        	document.getElementById('dbResultsL').innerHTML=data;
	        	var status=document.getElementById('status').value;
	        	
	          if (status == 'Already_exists') {
	        	  document.getElementById("submitL").style.display='block';
	         	 document.getElementById("loaderL").style.display='none';
	                document.getElementById("emailErrL").innerHTML = "";
	                document.getElementById("emailErrL").innerHTML = "Email or Mobile Number already exists.Try with different one.";
	                
	            }
	            if (status == 'success') { 
	            	 document.getElementById('emailL').value="";
	                //alert(document.getElementById("sigup_mail").innerHTML);
	                //document.getElementById("resend").style.display = "block";
	                 setTimeout(getLoaderL, 3000);
	                 setTimeout(thankyouL, 6000);
	            }
	            
	        }
	    });
	  
}

function getLoaderL(){
	 document.getElementById("loaderL").style.display='none';
	 document.getElementById("submitL").style.display='block';
	 document.getElementById("thankyouL").style.display='block';
 /*  document.getElementById("userForm").style.display='block';
  document.getElementById("thankyou").style.display='block'; */
}
function thankyouL(){
	  //show ThankYou Msg here
	$("#thankyouL").fadeOut();
}
</script>