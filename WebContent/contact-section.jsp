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
       <form id="contact-form-ac" name="contact-form-ac" method="POST" action="ajax/ajax-expert.php">
          
          <!--Grid row-->
			<div class="expert_form">
          <div class="row"> 
            
            <!--Grid column-->
            <div class="col-md-6">
              <div class="md-form">
                <input type="email" id="email" name="email" class="form-control" placeholder="Your Email">
              </div>
            </div>
            <!--Grid column--> 
            
            <!--Grid column-->
            <div class="col-md-6">
              <div class="md-form">
                <select class="form-control" name="type" required>
                  <option selected="">Select type</option>
                  <option value="Sales">Sales</option>
                  <option value="Services">Services</option>
                  <option value="Business Consulting">Business Consulting</option>
                  <option value="others">others</option>
                </select>
              </div>
            </div>
            <!--Grid column--> 
            
          </div>
          <div class="row"> 
            
            <!--Grid column-->
            <div class="col-md-6">
              <div class="md-form">
                <input type="text" id="mob" name="mobile" class="form-control" placeholder="Phone Number">
              </div>
            </div>
            <!--Grid column--> 
            
            <!--Grid column-->
            <div class="col-md-6">
              <button type="submit" class="btn btn-primary submit">Submit </button><img src = "images/giphy.gif" class="img loader-img" id="expert-loader" style ="display:none;" alt="Image-Giphy-3">
            </div>
            <!--Grid column--> 
            
				</div></div>
        </form>
      </div>
    </div>
  </div>
</section>