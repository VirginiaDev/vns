<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<footer class="footer-bs">
<div class="container">
<div class="row">
<div class="col-md-3">
  <h4>About</h4>
	<hr>
  <p>Duis dapibus aliquam mi, eget euismod sem scelerisque ut. Vivamus at elit quis urna adipiscing iaculis.</p>
  <p> <i class="fa fa-map-marker"></i> &nbsp; Netsmartz House, Chandigarh</p>
  <p><i class="fa fa-phone" aria-hidden="true"></i> &nbsp; 0172 4688015</p>
  <p><i class="fa fa-envelope" aria-hidden="true"></i>  &nbsp; 7oroof@7oroof.com</p>
</div>

 
  <div class="col-md-2">
	   <h4>COMPANY</h4><hr>
	 
    <ul>
      <li><a href="#">ABOUT US</a></li>
      <li><a href="#">OFFICE</a></li>
      <li><a href="#">STEAM</a></li>
      <li><a href="#">CAREERS</a></li>
      <li><a href="#">PRESS ROOM</a></li>
      <li><a href="#">REPORTS</a></li>
      <li><a href="#">BLOGS</a></li>
    </ul>
  </div>
		  		  
	
	<div class="col-md-4">
		<h4>Latest Posts</h4><hr>
		<div class="blog">
		<div class="row">
	
			<div class="col-md-3 col-sm-12 col-xs-12"><img src="images/user.png"></div>
			<div class="col-md-9 col-sm-12 col-xs-12"> <h1>Alice in Wonderland, part dos</h1>
    <p>'You ought to be ashamed of yourself for asking such a simple question.</p>
				<p> Author &#58; <span style="color: #00c3ff"> Begha</span></p>
			</div>
			</div><hr>
				<div class="row">
	
			<div class="col-md-3 col-sm-12 col-xs-12"><img src="images/user.png"></div>
			<div class="col-md-9 col-sm-12 col-xs-12"> <h1>Alice in Wonderland, part dos</h1>
    <p>'You ought to be ashamed of yourself for asking such a simple question.</p>
				<p> Author &#58; <span style="color: #00c3ff"> Begha</span></p>
		 
			</div>
			</div>
		</div>
	</div>

<div class="col-md-3">
  <h4>Quick Chat</h4>
	<hr>
  <form id="frm_chat" name="frm_chat" action="ajax/ajax-chat.php" method="POST" class="form-area">
    
    <!--Grid row-->
    <div class="row"> 
      
      <!--Grid column-->
      <div class="col-md-12">
        <div class="md-form">
			  <label for="exampleFormControlTextarea1">Your Name</label>
          <input type="text" id="" name="name" class="form-control" required >
        </div>
      </div>
     
    </div>
	  
	   <div class="row"> 
	   <div class="col-md-12">
        <div class="md-form">
			  <label for="exampleFormControlTextarea1">Your Email</label>
          <input type="email" id="email" name="email" class="form-control" placehoder="Your Email" required>
        </div>
		   </div></div>
	  
	  
    <div class="row"> 
      
      <!--Grid column-->
      <div class="col-md-12">
        <div class="form-group">
          <label for="exampleFormControlTextarea1">Description</label>
          <textarea class="form-control" id="exampleFormControlTextarea1" name = "description" rows="3" required></textarea>
        </div>
      </div>
    </div>
    <button type="submit" class="btn btn-primary submit">Submit </button><img src = "images/giphy.gif" class="img loader-img" style ="display:none;">
  </form>
	</div></div></div>
</footer>
	
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script> 
<script src="js/bootstrap.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> 
<script src="js/main.js"></script> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script> 
<script type="text/javascript" src="js/function.js"></script>
<script>
  
			  // Counter 
            jQuery('.statistic-counter').counterUp({
                delay: 10,
                time: 2000
			});
	
	
// vars
'use strict'
var	testim = document.getElementById("testim"),
		testimDots = Array.prototype.slice.call(document.getElementById("testim-dots").children),
    testimContent = Array.prototype.slice.call(document.getElementById("testim-content").children),
    testimLeftArrow = document.getElementById("left-arrow"),
    testimRightArrow = document.getElementById("right-arrow"),
    testimSpeed = 4500,
    currentSlide = 0,
    currentActive = 0,
    testimTimer,
		touchStartPos,
		touchEndPos,
		touchPosDiff,
		ignoreTouch = 30;
;

window.onload = function() {

     // Testim Script
    function playSlide(slide) {
        for (var k = 0; k < testimDots.length; k++) {
            testimContent[k].classList.remove("active");
            testimContent[k].classList.remove("inactive");
            testimDots[k].classList.remove("active");
        }

        if (slide < 0) {
            slide = currentSlide = testimContent.length-1;
        }

        if (slide > testimContent.length - 1) {
            slide = currentSlide = 0;
        }

        if (currentActive != currentSlide) {
            testimContent[currentActive].classList.add("inactive");            
        }
        testimContent[slide].classList.add("active");
        testimDots[slide].classList.add("active");

        currentActive = currentSlide;
    
        clearTimeout(testimTimer);
        testimTimer = setTimeout(function() {
            playSlide(currentSlide += 1);
        }, testimSpeed)
    }

    testimLeftArrow.addEventListener("click", function() {
        playSlide(currentSlide -= 1);
    })

    testimRightArrow.addEventListener("click", function() {
        playSlide(currentSlide += 1);
    })    

    for (var l = 0; l < testimDots.length; l++) {
        testimDots[l].addEventListener("click", function() {
            playSlide(currentSlide = testimDots.indexOf(this));
        })
    }

    playSlide(currentSlide);

    // keyboard shortcuts
    document.addEventListener("keyup", function(e) {
        switch (e.keyCode) {
            case 37:
                testimLeftArrow.click();
                break;
                
            case 39:
                testimRightArrow.click();
                break;

            case 39:
                testimRightArrow.click();
                break;

            default:
                break;
        }
    })
		
		testim.addEventListener("touchstart", function(e) {
				touchStartPos = e.changedTouches[0].clientX;
		})
	
		testim.addEventListener("touchend", function(e) {
				touchEndPos = e.changedTouches[0].clientX;
			
				touchPosDiff = touchStartPos - touchEndPos;
			
				console.log(touchPosDiff);
				console.log(touchStartPos);	
				console.log(touchEndPos);	

			
				if (touchPosDiff > 0 + ignoreTouch) {
						testimLeftArrow.click();
				} else if (touchPosDiff < 0 - ignoreTouch) {
						testimRightArrow.click();
				} else {
					return;
				}
			
		})
}


$(document).ready(function() {
    // Configure/customize these variables.
    var showChar = 100;  // How many characters are shown by default
    var ellipsestext = "...";
    var moretext = "Learn More >";
    var lesstext = "Show less";
    

    $('.more').each(function() {
        var content = $(this).html();
 
        if(content.length > showChar) {
 
            var c = content.substr(0, showChar);
            var h = content.substr(showChar, content.length - showChar);
 
            var html = c + '<span class="moreellipses">' + ellipsestext+ '&nbsp;</span><span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">' + moretext + '</a></span>';
 
            $(this).html(html);
        }
 
    });
 
    $(".morelink").click(function(){
        if($(this).hasClass("less")) {
            $(this).removeClass("less");
            $(this).html(moretext);
        } else {
            $(this).addClass("less");
            $(this).html(lesstext);
        }
        $(this).parent().prev().toggle();
        $(this).prev().toggle();
        return false;
    });
});
	
	
$(document).ready(function() {

var next = $("#next")
var previous =$("#previous")

$(document).ready(function() {

  $(next).click(function () {
    $("ul").css({
      'margin-top' : '-303px' , 
      'transition' : 'all 1.5s ease-in-out'
    });

  });		
  
  $(previous).click(function () {
    $("ul").css("margin-top", "0");

  });

});
});
jQuery(function($) {
    // Asynchronously Load the map API 
    var script = document.createElement('script');
    script.src = "https://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
    document.body.appendChild(script);
});
function initialize() {
    var map;
    var bounds = new google.maps.LatLngBounds();
    var mapOptions = {
        mapTypeId: 'hybrid'
     // mapTypeId: 'satellite'
        // mapTypeId: 'roadmap'
      // mapTypeId: 'terrain'
    };
                    
    // Display a map on the page
    map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
    map.setTilt(45);
        
    // Multiple Markers
    var markers = [
        ['India', 23.4503101,53.6555362],
        ['Africa, UAE ', 25.075677,54.9489376],
      ['United Kingdom ', 25.3993862,55.4603624],
      
    ];
                        
    // Info Window Content
    var infoWindowContent = [
        ['<div class="info_content">' +
        '<h3>India</h3>' +
        '<p>Plot No.10, Netsmartz House, IT Park, Chandigarh, Punjab </p>' +
         '<p>LYMO Users: 24</p>' + '<p>LYMO Drivers: 33</p>' +'</div>'],
       ['<div class="info_content">' +
        '<h3>Dubai, UAE </h3>' +
        '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>' +
         '<p>LYMO Users: 24</p>' + '<p>LYMO Drivers: 33</p>' +'</div>'],
      ['<div class="info_content">' +
        '<h3>Ajman, UAE</h3>' +
        '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>' +
         '<p>LYMO Users: 24</p>' + '<p>LYMO Drivers: 33</p>' +'</div>'],
      ['<div class="info_content">' +
        '<h3>Fujairah, UAE</h3>' +
        '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>' +
         '<p>LYMO Users: 24</p>' + '<p>LYMO Drivers: 33</p>' +'</div>'],
      ['<div class="info_content">' +
        '<h3>Sharjah</h3>' +
        '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>' +
         '<p>LYMO Users: 24</p>' + '<p>LYMO Drivers: 33</p>' +'</div>'],
      ['<div class="info_content">' +
        '<h3>Ras al-Khaimah</h3>' +
        '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>' +
         '<p>LYMO Users: 24</p>' + '<p>LYMO Drivers: 33</p>' +'</div>'],
      ['<div class="info_content">' +
        '<h3>Umm al-Qaiwain</h3>' +
        '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>' +
         '<p>LYMO Users: 24</p>' + '<p>LYMO Drivers: 33</p>' +'</div>']
    ];
        
    // Display multiple markers on a map
    var infoWindow = new google.maps.InfoWindow(), marker, i;
    
    // Loop through our array of markers & place each one on the map  
    for( i = 0; i < markers.length; i++ ) {
        var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
        bounds.extend(position);
        marker = new google.maps.Marker({
            position: position,
            map: map,
            title: markers[i][0]
        });
        
        // Allow each marker to have an info window    
        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infoWindow.setContent(infoWindowContent[i][0]);
                infoWindow.open(map, marker);
            }
        })(marker, i));

        // Automatically center the map fitting all markers on the screen
        map.fitBounds(bounds);
    }

    // Override our map zoom level once our fitBounds function runs (Make sure it only runs once)
    var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
        this.setZoom(7);
        google.maps.event.removeListener(boundsListener);
    });
    
}
</script> 
</body>
</html>