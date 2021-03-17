<a href="https://wa.me/918288815694" class="float" target="_blank">
<i class="fab fa-whatsapp my-float"></i>

</a>

<a href="#" id="scroll" style="display: none;"><span></span></a>
<footer class="footer-bs">
<div class="container">
	<h2 class="section-ftitle">Our Presence </h2>
	 <div class="section-title-divider"></div>
<div class="row">

<div class="col-md-5">
	<h2>India Office </h2><hr>

<div class="address">
	<h3 class="fheading">Chandigarh</h3>
  <p> Plot No-10,
Netsmartz House,
IT-Park, Chandigarh,
	  Post Code:-160101</p></div>

	<div class="address">
	<h3 class="fheading">Mohali</h3>
  <p> Plot No.I-52, Sector- 83 Alpha,
IT City , SAS Nagar.</p>
 
</div>
			<div class="address">
	<h3 class="fheading">Bangalore</h3>
  <p> Regus Eversun Business Centre PVT Manyata Embassy Business Park,
Ground Floor, E1 Block, Beech Building,
Outer Ring Road, Bangalore- 560045</p>

</div>
			<div class="address">
	<h3 class="fheading">Noida</h3>
  <p>  Level 16th, World Trade Tower,
Noida Sector 16,
Near Metro Station,
Noida – 201301, UP</p>
  
</div>
	</div>

	<div class="col-md-4">
<!--		<h2>Overseas Office</h2><hr>-->
		<div class="address">
	<h3 class="fheading">Africa</h3><hr>
  <p> Ngara Road, Opposite Chandarana Supermarket, Next to Sangyug Centre</p>
 
</div>
			<div class="address">
	<h3 class="fheading">United Kingdom</h3><hr>
  <p>27 parkfield row, Beeston LS117LT, Leeds, Beeston, Parkfield row, Post Code:- LS117LT</p>
  
</div>
	

	</div>
	<div class="col-md-3">
		<h2>Contact</h2>
		<div class="footer-logo">
		
			<p><a href="mailto:info@virtuosonetsoft.com"> Info@virtuosonetsoft.com</a></p>
			<p><a href="tel:+91 1724074040">+91 1724074040</a></p>
			<p><a href="tel:+91-1724074020">+91-1724074020</a></p>
			<p><a href="tel:+91-8288815694">+91-8288815694</a></p>
			<div><a href="index.php"><img src="images/footer-logo.png" alt="Image-Footer"></a></div>
		</div>
		<hr>
	</div>
	</div>
	<hr>

	<div class="fmenu">
	<ul>
      <li><a href="about.php">ABOUT US</a></li>
		<li>|</li>
      <li><a href="career.php">CAREERS</a></li>
		<li>|</li>
      <li><a href="http://blog.virtuosonetsoft.com/" target="_blank">BLOG</a></li>
		<li>|</li>
		<li><a href="contact.php">CONTACT</a></li>
		<li>|</li>
		<li><a href="sitemap.php">SITEMAP</a></li>
		<li>|</li>
		<li><a href="terms_conditions.php">TERMS AND CONDITIONS</a></li>
    </ul>
	</div>
	
	<div class="privacy-policy">
		<p>©2011-2019 All Rights Reserved. Virtuoso Netsoft  </p></div>
	</div>
	<div> <div class="social-links1"> 
		  <a href="https://twitter.com/VNS_Virtuoso" class="twitter" target="_blank"><i class="fab fa-twitter"></i></a> 
		  <a href="https://www.facebook.com/VirtuosoNetsoft.VNS" class="facebook" target="_blank"><i class="fab fa-facebook-f"></i></a> 
		  <a href="https://www.instagram.com/virtuosonetsoft/" class="instagram" target="_blank"><i class="fab fa-instagram"></i></a> 
		  <a href="https://www.linkedin.com/company/virtuoso-netsoft-pvt-ltd/" class="linkedin" target="_blank"><i class="fab fa-linkedin-in"></i></a> </div>
		</div>
</footer>
	
<!--	<a href="#" style="color: #fff">Privacy & Terms</a>-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script> 
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
<script src="js/function.js"></script>
 <script src="js/jquery.animateNumber.min.js"></script>
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


	

	</script> 

<script>
	$(function() {

    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.js"></script>
<script>
$(document).ready(function(){

if($('.brands_slider').length)
{
var brandsSlider = $('.brands_slider');

brandsSlider.owlCarousel(
{
loop:true,
autoplay:true,
autoplayTimeout:5000,
nav:false,
dots:false,
autoWidth:true,
items:8,
margin:42
});

if($('.brands_prev').length)
{
var prev = $('.brands_prev');
prev.on('click', function()
{
brandsSlider.trigger('prev.owl.carousel');
});
}

if($('.brands_next').length)
{
var next = $('.brands_next');
next.on('click', function()
{
brandsSlider.trigger('next.owl.carousel');
});
}
}


});
</script>
	
	<script>

$(document).ready(function(){ 
    $(window).scroll(function(){ 
        if ($(this).scrollTop() > 100) { 
            $('#scroll').fadeIn(); 
        } else { 
            $('#scroll').fadeOut(); 
        } 
    }); 
    $('#scroll').click(function(){ 
        $("html, body").animate({ scrollTop: 0 }, 600); 
        return false; 
    }); 
});
		</script>


	<script>
		(function() {

  // VARIABLES
  const timeline = document.querySelector(".timeline ol"),
    elH = document.querySelectorAll(".timeline li > div"),
    arrows = document.querySelectorAll(".timeline .arrows .arrow"),
    arrowPrev = document.querySelector(".timeline .arrows .arrow__prev"),
    arrowNext = document.querySelector(".timeline .arrows .arrow__next"),
    firstItem = document.querySelector(".timeline li:first-child"),
    lastItem = document.querySelector(".timeline li:last-child"),
    xScrolling = 280,
    disabledClass = "disabled";

  // START
  window.addEventListener("load", init);

  function init() {
    setEqualHeights(elH);
    animateTl(xScrolling, arrows, timeline);
    setSwipeFn(timeline, arrowPrev, arrowNext);
    setKeyboardFn(arrowPrev, arrowNext);
  }

  // SET EQUAL HEIGHTS
  function setEqualHeights(el) {
    let counter = 0;
    for (let i = 0; i < el.length; i++) {
      const singleHeight = el[i].offsetHeight;

      if (counter < singleHeight) {
        counter = singleHeight;
      }
    }

    for (let i = 0; i < el.length; i++) {
      el[i].style.height = `${counter}px`;
    }
  }

  // CHECK IF AN ELEMENT IS IN VIEWPORT
  // http://stackoverflow.com/questions/123999/how-to-tell-if-a-dom-element-is-visible-in-the-current-viewport
  function isElementInViewport(el) {
    const rect = el.getBoundingClientRect();
    return (
      rect.top >= 0 &&
      rect.left >= 0 &&
      rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
      rect.right <= (window.innerWidth || document.documentElement.clientWidth)
    );
  }

  // SET STATE OF PREV/NEXT ARROWS
  function setBtnState(el, flag = true) {
    if (flag) {
      el.classList.add(disabledClass);
    } else {
      if (el.classList.contains(disabledClass)) {
        el.classList.remove(disabledClass);
      }
      el.disabled = false;
    }
  }

  // ANIMATE TIMELINE
  function animateTl(scrolling, el, tl) {
    let counter = 0;
    for (let i = 0; i < el.length; i++) {
      el[i].addEventListener("click", function() {
        if (!arrowPrev.disabled) {
          arrowPrev.disabled = true;
        }
        if (!arrowNext.disabled) {
          arrowNext.disabled = true;
        }
        const sign = (this.classList.contains("arrow__prev")) ? "" : "-";
        if (counter === 0) {
          tl.style.transform = `translateX(-${scrolling}px)`;
        } else {
          const tlStyle = getComputedStyle(tl);
          // add more browser prefixes if needed here
          const tlTransform = tlStyle.getPropertyValue("-webkit-transform") || tlStyle.getPropertyValue("transform");
          const values = parseInt(tlTransform.split(",")[4]) + parseInt(`${sign}${scrolling}`);
          tl.style.transform = `translateX(${values}px)`;
        }

        setTimeout(() => {
          isElementInViewport(firstItem) ? setBtnState(arrowPrev) : setBtnState(arrowPrev, false);
          isElementInViewport(lastItem) ? setBtnState(arrowNext) : setBtnState(arrowNext, false);
        }, 1100);

        counter++;
      });
    }
  }

  // ADD SWIPE SUPPORT FOR TOUCH DEVICES
  function setSwipeFn(tl, prev, next) {
    const hammer = new Hammer(tl);
    hammer.on("swipeleft", () => next.click());
    hammer.on("swiperight", () => prev.click());
  }

  // ADD BASIC KEYBOARD FUNCTIONALITY
  function setKeyboardFn(prev, next) {
    document.addEventListener("keydown", (e) => {
      if ((e.which === 37) || (e.which === 39)) {
        const timelineOfTop = timeline.offsetTop;
        const y = window.pageYOffset;
        if (timelineOfTop !== y) {
          window.scrollTo(0, timelineOfTop);
        }
        if (e.which === 37) {
          prev.click();
        } else if (e.which === 39) {
          next.click();
        }
      }
    });
  }

})();
	</script>
	
	 <script type="text/javascript">
	 	$(".input").focus(function() {
	 		$(this).parent().addClass("focus");
	 	})
	 </script>
	
	<script>
	$(function() {
    $('#basicExampleModal').modal('show');
});
	</script>
	
	<script>

    $(document).ready(function(){
        $("#OpenForm").click(function(){
            $(".feedback_form_area").animate({
                width: "toggle"
            });
        });
    });

</script>
	


<script src="js/acmeticker.js"></script>
<script>
  jQuery(document).ready(function ($) {
        $('.my-news-ticker-1').AcmeTicker({
            type:'horizontal',/*horizontal/horizontal/Marquee/type*/
            direction: 'right',/*up/down/left/right*/
            controls: {
                prev: $('.acme-news-ticker-prev'),/*Can be used for horizontal/horizontal/typewriter*//*not work for marquee*/
                toggle: $('.acme-news-ticker-pause'),/*Can be used for horizontal/horizontal/typewriter*//*not work for marquee*/
                next: $('.acme-news-ticker-next')/*Can be used for horizontal/horizontal/marquee/typewriter*/
            }
        });
        $('.my-news-ticker-2').AcmeTicker({
            type:'marquee',/*horizontal/horizontal/Marquee/type*/
            direction: 'left',/*up/down/left/right*/
            speed: 0.05,/*true/false/number*/ /*For vertical/horizontal 600*//*For marquee 0.05*//*For typewriter 50*/
            controls: {
                toggle: $('.acme-news-ticker-pause'),/*Can be used for horizontal/horizontal/typewriter*//*not work for marquee*/
            }
        });
        $('.my-news-ticker-3').AcmeTicker({
            type:'typewriter',/*horizontal/horizontal/Marquee/type*/
            direction: 'right',/*up/down/left/right*/
            speed:50,/*true/false/number*/ /*For vertical/horizontal 600*//*For marquee 0.05*//*For typewriter 50*/
            controls: {
                prev: $('.acme-news-ticker-prev'),/*Can be used for horizontal/horizontal/typewriter*//*not work for marquee*/
                toggle: $('.acme-news-ticker-pause'),/*Can be used for horizontal/horizontal/typewriter*//*not work for marquee*/
                next: $('.acme-news-ticker-next')/*Can be used for horizontal/horizontal/marquee/typewriter*/
            }
        });
        $('.my-news-ticker-4').AcmeTicker({
            type:'vertical',/*vertical/horizontal/Marquee/type*/
            direction: 'right',/*up/down/left/right*/
            controls: {
                prev: $('.acme-news-ticker-prev'),/*Can be used for vertical/horizontal/typewriter*//*not work for marquee*/
                next: $('.acme-news-ticker-next'),/*Can be used for vertical/horizontal/typewriter*//*not work for marquee*/
                toggle: $('.acme-news-ticker-pause')/*Can be used for vertical/horizontal/marquee/typewriter*/
            }
        });
    })
  </script>
  <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<script>
try {
  fetch(new Request("https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js", { method: 'HEAD', mode: 'no-cors' })).then(function(response) {
    return true;
  }).catch(function(e) {
    var carbonScript = document.createElement("script");
    carbonScript.src = "//cdn.carbonads.com/carbon.js?serve=CK7DKKQU&placement=wwwjqueryscriptnet";
    carbonScript.id = "_carbonads_js";
    document.getElementById("carbon-block").appendChild(carbonScript);
  });
} catch (error) {
  console.log(error);
}
</script>
	
	<script>// Gallery image hover
$( ".img-wrapper" ).hover(
  function() {
    $(this).find(".img-overlay").animate({opacity: 1}, 600);
  }, function() {
    $(this).find(".img-overlay").animate({opacity: 0}, 600);
  }
);

// Lightbox
var $overlay = $('<div id="overlay"></div>');
var $image = $("<img>");
var $prevButton = $('<div id="prevButton"><i class="fa fa-chevron-left"></i></div>');
var $nextButton = $('<div id="nextButton"><i class="fa fa-chevron-right"></i></div>');
var $exitButton = $('<div id="exitButton"><i class="fa fa-times"></i></div>');

// Add overlay
$overlay.append($image).prepend($prevButton).append($nextButton).append($exitButton);
$("#gallery").append($overlay);

// Hide overlay on default
$overlay.hide();

// When an image is clicked
$(".img-overlay").click(function(event) {
  // Prevents default behavior
  event.preventDefault();
  // Adds href attribute to variable
  var imageLocation = $(this).prev().attr("href");
  // Add the image src to $image
  $image.attr("src", imageLocation);
  // Fade in the overlay
  $overlay.fadeIn("slow");
});

// When the overlay is clicked
$overlay.click(function() {
  // Fade out the overlay
  $(this).fadeOut("slow");
});

// When next button is clicked
$nextButton.click(function(event) {
  // Hide the current image
  $("#overlay img").hide();
  // Overlay image location
  var $currentImgSrc = $("#overlay img").attr("src");
  // Image with matching location of the overlay image
  var $currentImg = $('#image-gallery img[src="' + $currentImgSrc + '"]');
  // Finds the next image
  var $nextImg = $($currentImg.closest(".image").next().find("img"));
  // All of the images in the gallery
  var $images = $("#image-gallery img");
  // If there is a next image
  if ($nextImg.length > 0) { 
    // Fade in the next image
    $("#overlay img").attr("src", $nextImg.attr("src")).fadeIn(800);
  } else {
    // Otherwise fade in the first image
    $("#overlay img").attr("src", $($images[0]).attr("src")).fadeIn(800);
  }
  // Prevents overlay from being hidden
  event.stopPropagation();
});

// When previous button is clicked
$prevButton.click(function(event) {
  // Hide the current image
  $("#overlay img").hide();
  // Overlay image location
  var $currentImgSrc = $("#overlay img").attr("src");
  // Image with matching location of the overlay image
  var $currentImg = $('#image-gallery img[src="' + $currentImgSrc + '"]');
  // Finds the next image
  var $nextImg = $($currentImg.closest(".image").prev().find("img"));
  // Fade in the next image
  $("#overlay img").attr("src", $nextImg.attr("src")).fadeIn(800);
  // Prevents overlay from being hidden
  event.stopPropagation();
});

// When the exit button is clicked
$exitButton.click(function() {
  // Fade out the overlay
  $("#overlay").fadeOut("slow");
});</script>
	
<script>
$(document).ready(function(){
  $("#myBtn").click(function(){
    $("#myModal").modal();
  });
});
</script>
	
	<script>
$(document).ready(function(){
  $("#myBtn1").click(function(){
    $("#myModal1").modal();
  });
});
</script>

	<script>
function myFunction() {
  document.getElementById("demo").innerHTML = "https://www.virtuosonetsoft.com/gallery.php";
}
</script>
</body>
</html>