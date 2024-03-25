<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page isELIgnored="false" %> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Car Wash Company​, Innovative Car Wash System, 01, 02, 03, 04, About, Automatic Car Wash Service, Premium Hand Car Wash &amp;amp; Detail, Contact Us, INTUITIVE">
    <meta name="description" content="">
    <title>Sign Up</title>
    <link rel="stylesheet" href="../css/policies/policies_style.css" media="screen">
	<link rel="stylesheet" href="../css/policies/policies.css" media="screen">
    <script class="u-script" type="text/javascript" src="../js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="../js/nicepage.js" defer=""></script>
	<script class="u-script" type="text/javascript" src="../js/signup/signup.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.19.3, nicepage.com">
    <meta name="referrer" content="origin">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700">
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"}
	</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Home">
    <meta property="og:type" content="website">
  <meta data-intl-tel-input-cdn-path="intlTelInput/">
</head>
<body data-path-to-root="./" class="u-body u-xl-mode" data-lang="en">
<header class="u-clearfix u-header u-header" id="sec-ccc8">
		<div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
		    <a href="/home" class="u-image u-logo u-image-1">
		      <img src="images/default-logo.jpg" class="u-logo-image u-logo-image-1" id="top">
		    </a>
		    <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
		      <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
		        <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
		          <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
		          <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
					</g></svg>
		        </a>
		      </div>
		      <div class="u-nav-container">
		        <ul class="u-nav u-unstyled u-nav-1">
		            <li class="u-nav-item"><a class="u-button-style u-nav-link  u-text-hover-palette-2-base" href="/home" style="padding: 10px 20px;">Home</a></li>
					<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="/policies" style="padding: 10px 20px;">Polices</a></li>
					<sec:authorize access="!isAuthenticated()">
					  	<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="/login" style="padding: 10px 20px;">Login</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
					  	<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="/logout" style="padding: 10px 20px;">Logout</a></li>
						<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="/userProfile" style="padding: 10px 20px;">User Profile</a></li>
					</sec:authorize>
				
				</ul>
		      </div>
		      <div class="u-nav-container-collapse">
		        <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
		          <div class="u-inner-container-layout u-sidenav-overflow">
		            <div class="u-menu-close">
		            </div>
		            <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
		                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="/home">Home</a></li>
		                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="/policies">Polices</a></li>
						<sec:authorize access="!isAuthenticated()">
						  	<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="/login" style="padding: 10px 20px;">Login</a></li>
						</sec:authorize>
						<sec:authorize access="isAuthenticated()">
						  	<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="/logout" style="padding: 10px 20px;">Logout</a></li>	
							<li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="/userProfile" style="padding: 10px 20px;">User Profile</a></li>
						</sec:authorize>		               
		            </ul>
		          </div>
		        </div>
		        <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
		      </div>
		    </nav>
		</div>
	</header>
    
    <section class="u-clearfix u-palette-5-dark-3 u-section-5" id="carousel_2084">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="data-layout-selected u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-align-right u-container-style u-layout-cell u-left-cell u-palette-5-dark-3 u-size-30 u-layout-cell-1">
                <div class="u-container-layout u-valign-middle-lg u-valign-middle-xl u-container-layout-1">
                  <h2 class="u-text u-text-1">Register Account</h2>
                  <div class="u-border-6 u-border-white u-line u-line-horizontal u-line-1">
                  </div>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-right-cell u-size-30 u-white u-layout-cell-2">
                <div class="u-container-layout u-valign-top u-container-layout-2">
                  <div class="u-form u-form-1">
                    <form id="account" style="display: show;" action="https://forms.nicepagesrv.com/v2/form/process" class="u-clearfix u-form-spacing-30 u-form-vertical u-inner-form" style="padding: 10px" source="email" name="form">
                      <div class="u-form-group u-form-select u-form-group-1">
                        <label for="email" class="u-label">Email</label>
                        <input id="email" type="text" placeholder="" name="email" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
                      </div>
                      <div class="u-form-group u-form-select u-form-group-2">
                        <label for="username" class="u-label">Username</label>
                        <input id="username" type="text" placeholder="" name="username" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
                      </div>
                      <div class="u-form-group u-form-select u-form-group-3">
                        <label for="password" class="u-label">Password</label>
                        <input id="password" type="password" placeholder="" name="password" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
                      </div>
                      <div class="u-form-group u-form-select u-form-group-3">
                        <label for="re-password" class="u-label">Re-enter Password</label>
                        <input id="re-password" type="password" placeholder="" name="re-password" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
                      </div>
                      
                      <form class="u-align-left u-form-group u-form-submit" onsubmit="default(e)">
                        <div class="u-form-group">
                        	<input id="next" type="submit" value="Next" class="u-btn u-button-style u-hover-black u-palette-2-base u-btn-1">
                      	</div>
                      </form>
                      
                      <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                      <input type="hidden" value="" name="recaptchaResponse">
                      <input type="hidden" name="formServices" value="887317a9-aa43-4c77-2a3a-cd3c5b3bf4e6">
                    </form>
                    
                    <form id="userInfo" style="display: none;" action="" class="u-clearfix u-form-spacing-30 u-form-vertical u-inner-form" style="padding: 10px" source="email" name="form">
                      <div class="u-form-group u-form-partition-factor-2">
                        <label for="fname" class="u-label">First Name</label>
                        <input id="fname" type="text" placeholder="" name="fname" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
                      </div>
                      <div class="u-form-group u-form-partition-factor-2">
                        <label for="lname" class="u-label">Last Name</label>
                        <input id="lname" type="text" placeholder="" name="lname" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
                      </div>
                      <div class="u-form-group u-form-select u-form-group-3">
                        <label for="license" class="u-label">License ID</label>
                        <input id="license" type="text" placeholder="" name="license" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
                      </div>
                      <div class="u-form-group u-form-partition-factor-2">
                        <label for="age" class="u-label">Age</label>
                        <input id="age" type="number" placeholder="" name="age" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
                      </div>
                      <div class="u-form-group u-form-partition-factor-2">
                        <label for="exp" class="u-label">Year of Experience</label>
                        <input id="exp" type="number" placeholder="" name="exp" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
                      </div>
                      <div class="u-form-group u-form-select u-form-group-3">
                        <label for="phoneNumber" class="u-label">Phone Number</label>
                        <input id="phoneNumber" type="text" placeholder="" name="phoneNumber" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
                      </div>
                      <div class="u-form-group u-form-select u-form-group-3">
                        <label for="street" class="u-label">Adrress</label>
                        <input id="street" type="text" placeholder="Street" name="address" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
                      </div>
                      <div class="u-form-group u-form-partition-factor-3">
                        <label for="state" class="u-label">State</label>
                        <input id="state" type="text" placeholder="State" name="state" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
                      </div>
                      <div class="u-form-group u-form-partition-factor-3">
                        <label for="city" class="u-label">City</label>
                        <input id="city" type="text" placeholder="City" name="city" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
                      </div>
                      <div class="u-form-group u-form-partition-factor-3">
                        <label for="zipcode" class="u-label">Zip Code</label>
                        <input id="zipcode" type="text" placeholder="Zip Code" name="zipcode" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
                      </div>
                      
					  <form class="u-align-left u-form-group u-form-submit" onsubmit="default(e)">
                      
	                      <div class="u-form-group u-form-partition-factor-2">        
		                        <input id="previous" type="submit" value="Previous" class="u-btn u-button-style u-hover-black u-palette-2-base u-btn-1">
	                      </div>
	                      <div class="u-form-group u-form-partition-factor-2">
                        	<input id="signup" type="submit" value="Sign Up" class="u-btn u-button-style u-hover-black u-palette-2-base u-btn-1">
                      		</div>
                      	<div id="signUpSuccess" class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                      </form>
                      
                        
                      
                      	                                       
                    </form>
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
</body>
<footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-4ac9">
    <div class="u-clearfix u-sheet u-sheet-1">
    	<p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the Text Element.</p>
  	</div>
</footer>
<section class="u-backlink u-clearfix u-grey-80">
  <a class="u-link" href="#" target="_blank">
    <span>Website Templates</span>
  </a>
  <p class="u-text">
    <span>created with</span>
  </p>
  <a class="u-link" href="" target="_blank">
    <span>Website Builder Software</span>
  </a>. 
</section>
</html>