<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<section id="subscribe">
  <div class="container">
    <div class="row">
      <div class="col-md-6">
        <div class="request_text">
			
          <p>Get Your Grip on The Worldclass Digital Solutions Today! </p>
			<h2 class="subscribe-title">Contact The Experts</h2>
        </div>
      </div>
      <div class="col-md-6">
       <form id="contact-form-ac" name="contact-form-ac" method="POST">
          
          <!--Grid row-->
			<div class="expert_form">
          <div class="row"> 
            
            <!--Grid column-->
            <div class="col-md-6">
              <div class="md-form">
                <input type="email" id="emailContact" name="email" class="form-control" placeholder="Your Email">
              	<span id ="emailErr"  style="color:red" ></span>
              </div>
            </div>
            <!--Grid column--> 
            
            <!--Grid column-->
            <div class="col-md-6">
              <div class="md-form">
                <select class="form-control" id="typeContact" name="type" required>
                  <option value="">Select type</option>
                  <option value="Sales">Sales</option>
                  <option value="Services">Services</option>
                  <option value="Business Consulting">Business Consulting</option>
                  <option value="others">others</option>
                </select>
             	<span id ="typeErr"  style="color:red" ></span>
              </div>
            </div>
            <!--Grid column--> 
            
          </div>
          <div class="row"> 
            
            <!--Grid column-->
            <div class="col-md-6">
              <div class="md-form">
                <input type="text" id="mobileContact" name="" class="form-control" placeholder="Phone Number">
             	<span id ="mobileErr"  style="color:red" ></span>
              </div>
            </div>
            <!--Grid column--> 
            
            <!--Grid column-->
            <div class="col-md-6">
              <button type="button" id="submitContact" onclick="saveContactSection()" class="btn btn-primary submit">Submit </button>
              <img src = "images/giphy.gif" id="loaderContact" class="img loader-img" id="expert-loader" style ="display:none;" alt="Image-Giphy-3">
             <div id="thankyouContact" style="display:none">
  				<label style="color:#1000ff">Thank you please check your email..we have sent a confirmation email</label>
			 </div>
            </div>
            <!--Grid column--> 
            
				</div></div>
         <div id="dbResultsContact" style="display:none">

		</div>
        </form>
      </div>
    </div>
  </div>
</section>

<script>
function saveContactSection(){

    var email = document.getElementById('emailContact').value;
    var type = document.getElementById('typeContact').value;
    var mobile_no = document.getElementById('mobileContact').value;
    var letters_name = /[a-zA-Z ]+$/;
    var letters_email = /\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
    var number = /^\d{10}$/;
    
    if (email == "") {
        document.getElementById('emailErr').innerHTML = "Enter  Email";
        return true;
    }

    else if (!email.match(letters_email)) {
        document.getElementById('emailErr').innerHTML = "Enter Valid Email";
        return true;
    }
    else
    {
        var email1 = document.getElementById('emailContact').value;
        document.getElementById('emailErr').innerHTML = "";
    }
    
    if (type == "")
    {
        document.getElementById('typeErr').innerHTML = "Type is Required";
        return true;
    }
   
    else
    {
        var type1 = document.getElementById('typeContact').value;
        document.getElementById('typeErr').innerHTML = "";
    }
    
    if (mobile_no === "")
    {
        document.getElementById('mobileErr').innerHTML = "Contact Is Required";
        return true;
    }
    else {
        if (!mobile_no.match(number)) {
            document.getElementById('mobileErr').innerHTML = "Enter Number without 91";
            return true;

        } else
        {
            var mobile_no1 = document.getElementById('mobileContact').value;
            document.getElementById('mobileErr').innerHTML = "";
        }

    }
    
    $.ajax({
        type: "POST",
        url: "ContactSection_db.jsp",
        data: {
            email1: email1,
            type1: type1,
            mobile_no1: mobile_no1

        },
        success: function (data) {
        	 document.getElementById("submitContact").style.display='none';
        	 document.getElementById("loaderContact").style.display='block';
        	 
        	document.getElementById('dbResultsContact').innerHTML=data;
        	var status=document.getElementById('status').value;
        	
          if (status == 'Already_exists') {
        	  document.getElementById("submitContact").style.display='block';
         	 document.getElementById("loaderContact").style.display='none';
                document.getElementById("emailErr").innerHTML = "";
                document.getElementById("emailErr").innerHTML = "Email or Mobile Number already exists.Try with different one.";
                
            }
            if (status == 'success') { 
            	 document.getElementById('emailContact').value="";
                 document.getElementById('typeContact').value="";
                 document.getElementById('mobileContact').value="";
                //alert(document.getElementById("sigup_mail").innerHTML);
                //document.getElementById("resend").style.display = "block";
                 setTimeout(getLoader, 3000);
                 setTimeout(thankyouContact, 6000);
            }
            
        }
    });
}

function getLoader(){
	 document.getElementById("loaderContact").style.display='none';
	 document.getElementById("submitContact").style.display='block';
	 document.getElementById("thankyouContact").style.display='block';
  /*  document.getElementById("userForm").style.display='block';
   document.getElementById("thankyou").style.display='block'; */
}
function thankyouContact(){
	  //show ThankYou Msg here
	$("#thankyouContact").fadeOut();
}
</script>