<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page isELIgnored="false" %> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html style="font-size: 16px;" lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Car Wash Company​, Innovative Car Wash System, 01, 02, 03, 04, About, Automatic Car Wash Service, Premium Hand Car Wash &amp;amp; Detail, Contact Us, INTUITIVE">
    <meta name="description" content="">
    <title>Policies</title>
    <link rel="stylesheet" href="../css/policies/policies_style.css" media="screen">
	<link rel="stylesheet" href="../css/policies/policies.css" media="screen">
    <script class="u-script" type="text/javascript" src="../js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="../js/nicepage.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="../js/policies/policies.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.19.3, nicepage.com">
    <meta name="referrer" content="origin">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700">
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
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
    <section class="u-align-center u-clearfix u-valign-top u-section-1" id="carousel_5db3">
      <div class="u-align-left u-expanded-width u-palette-2-base u-shape u-shape-1"></div>
      <div class="data-layout-selected u-clearfix u-gutter-0 u-layout-wrap u-layout-wrap-1">
        <div class="u-gutter-0 u-layout">
          <div class="u-layout-row">
            <div class="u-size-30 u-size-60-md">
              <div class="u-layout-col">
                <div class="u-container-style u-layout-cell u-left-cell u-palette-2-base u-size-20 u-layout-cell-1">
                  <div class="u-container-layout u-container-layout-1">
                    <h1 class="u-custom-font u-font-oswald u-text u-text-1">Our Policies</h1>
                    <p class="u-text u-text-body-alt-color u-text-2">Insert Text</p>
                  </div>
                </div>
                <div class="u-container-style u-hidden-md u-hidden-sm u-hidden-xs u-layout-cell u-left-cell u-size-40 u-layout-cell-2">
                  <div class="u-container-layout"></div>
                </div>
              </div>
            </div>
            <div class="u-size-30 u-size-60-md">
              <div class="u-layout-row">
                <div class="u-container-style u-layout-cell u-right-cell u-size-60 u-layout-cell-3">
                  <div class="u-container-layout u-container-layout-3">
                    <div class="u-border-16 u-border-white u-image u-image-circle u-image-1"></div>
                    <div class="u-palette-2-base u-shape u-shape-circle u-shape-2"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-expanded-width u-section-2" id="sec-c193">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="data-layout-selected u-clearfix u-expanded-width u-gutter-30 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-left-cell u-size-20 u-size-20-md u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <h3 class="u-text u-text-1"> Comprehensive coverage</h3>
                  <img src="images/b5e94a25741dca619aa54b1f08ab425d.png" alt="" class="u-image u-image-default u-image-1" data-image-width="275" data-image-height="200">
                  <h6 class="u-text u-text-2"> Collision insurance can help protect you if:</h6>
                  <ul class="u-text u-text-3">
                    <li> You hit another car</li>
                    <li>You hit a stationary object</li>
                    <li>Someone or something hits your parked car</li>
                  </ul>
                  <a href="#" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-2-base u-btn-1">learn more</a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-20 u-size-20-md u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2">
                  <h3 class="u-text u-text-4"> Liability coverage</h3>
                  <img src="images/975255a895e0efd3c75c073d5e0e89f3.png" alt="" class="u-expanded-width u-image u-image-default u-image-2">
                  <h6 class="u-text u-text-5"> Bodily injury liability insurance can help protect you if you're found at fault for injuring someone in an accident and can help cover:</h6>
                  <ul class="u-text u-text-6">
                    <li> Emergency aid at the scene</li>
                    <li>Medical expenses for bodily injury</li>
                    <li>Compensation for lost wages</li>
                    <li>Funeral expenses</li>
                    <li>Legal defense fees for policy members</li>
                  </ul>
                  <a href="#" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-2-base u-btn-2">learn more</a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-right-cell u-size-20 u-size-20-md u-layout-cell-3">
                <div class="u-container-layout u-valign-bottom u-container-layout-3">
                  <h3 class="u-text u-text-7"> Insurance for teen drivers</h3>
                  <img src="images/69ab11c48df6f674467cc0f1db1a99fc.png" alt="" class="u-expanded-width u-image u-image-default u-image-3">
                  <h6 class="u-text u-text-8"> Whether they're just starting out or a little more seasoned, teen drivers can earn discounts:</h6>
                  <ul class="u-text u-text-9">
                    <li> If your teen gets teenSMART certified</li>
                    <li>If your student driver younger than 25 meets grade requirements</li>
                    <li>If your student driver under 21 keeps their car at school 100+ miles from home</li>
                  </ul>
                  <a href="#" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-2-base u-btn-3">learn more</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-expanded-width u-section-3" id="sec-baa9">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="data-layout-selected u-clearfix u-expanded-width u-gutter-30 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-left-cell u-size-20 u-size-20-md u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <h3 class="u-text u-text-1"> Rideshare insurance</h3>
                  <img src="images/b5e94a25741dca619aa54b1f08ab425d.png" alt="" class="u-image u-image-default u-image-1" data-image-width="275" data-image-height="200">
                  <h6 class="u-text u-text-2"> Stay protected for as little as pennies a day. Enjoy the reliability of one of the most affordable TNC auto coverage options on the market.</h6>
                  <ul class="u-text u-text-3">
                    <li> OfflinePersonal Use</li>
                    <li>App onWaiting for passenger assignment<br>
                    </li>
                    <li>Accepted trip or passengerEn route or on trip<br>
                    </li>
                  </ul>
                  <a href="#" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-2-base u-btn-1">learn more</a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-20 u-size-20-md u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2">
                  <h3 class="u-text u-text-4"> Roadside coverage</h3>
                  <img src="images/975255a895e0efd3c75c073d5e0e89f3.png" alt="" class="u-expanded-width u-image u-image-default u-image-2">
                  <h6 class="u-text u-text-5"> You could be covered for:</h6>
                  <ul class="u-text u-text-6">
                    <li> Towing</li>
                    <li>Tire changes</li>
                    <li>Jump-starts</li>
                    <li>Lockouts</li>
                    <li>Fuel delivery</li>
                  </ul>
                  <a href="#" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-2-base u-btn-2">learn more</a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-right-cell u-size-20 u-size-20-md u-layout-cell-3">
                <div class="u-container-layout u-valign-top u-container-layout-3">
                  <h3 class="u-text u-text-7"> Classic car insurance</h3>
                  <img src="images/69ab11c48df6f674467cc0f1db1a99fc.png" alt="" class="u-expanded-width u-image u-image-default u-image-3">
                  <h6 class="u-text u-text-8"> Classic car policy can help protect your car's unique needs:</h6>
                  <ul class="u-text u-text-9">
                    <li>Protect the value of your car: In the event of an accident, you should be covered for the value of your car.</li>
                    <li>Flexible claim service: Choose where your car gets repaired.<br>
                    </li>
                  </ul>
                  <a href="#" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-2-base u-btn-3">learn more</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-expanded-width u-section-4" id="carousel_0e6e">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="data-layout-selected u-clearfix u-expanded-width u-gutter-30 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-left-cell u-size-20 u-size-20-md u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <h3 class="u-text u-text-1"> Personal injury protection</h3>
                  <img src="images/b5e94a25741dca619aa54b1f08ab425d.png" alt="" class="u-image u-image-default u-image-1" data-image-width="275" data-image-height="200">
                  <h6 class="u-text u-text-2"> Protections can include:</h6>
                  <ul class="u-text u-text-3">
                    <li> Income continuation</li>
                    <li>Loss of services</li>
                    <li>Funeral expenses</li>
                    <li>Child-care expenses</li>
                  </ul>
                  <a href="#" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-2-base u-btn-1">learn more</a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-20 u-size-20-md u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2">
                  <h3 class="u-text u-text-4"> Personal umberlla policy</h3>
                  <img src="images/975255a895e0efd3c75c073d5e0e89f3.png" alt="" class="u-expanded-width u-image u-image-default u-image-2">
                  <h6 class="u-text u-text-5">For budget travelers</h6>
                  <ul class="u-text u-text-6">
                    <li> Bodily Injury</li>
                    <li>Personal Injury</li>
                    <li>Property Damage</li>
                  </ul>
                  <a href="#" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-2-base u-btn-2">learn more</a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-right-cell u-size-20 u-size-20-md u-layout-cell-3">
                <div class="u-container-layout u-container-layout-3"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-palette-5-dark-3 u-section-5" id="carousel_2084">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="data-layout-selected u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-align-right u-container-style u-layout-cell u-left-cell u-palette-5-dark-3 u-size-30 u-layout-cell-1">
                <div class="u-container-layout u-valign-middle-lg u-valign-middle-xl u-container-layout-1">
                  <h2 class="u-text u-text-1">Your Car</h2>
                  <div class="u-border-6 u-border-white u-line u-line-horizontal u-line-1"></div>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-right-cell u-size-30 u-white u-layout-cell-2">
                <div class="u-container-layout u-valign-top u-container-layout-2">
                  <div class="u-form u-form-1">
                    <form action="https://forms.nicepagesrv.com/v2/form/process" class="u-clearfix u-form-spacing-30 u-form-vertical u-inner-form" style="padding: 10px" source="email" name="form">
                      <div class="u-form-group u-form-select u-form-group-1">
                        <label for="brand" class="u-label">Brand</label>
                        <div class="u-form-select-wrapper">
                          <select id="brand" name="select" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle">
                            
                          </select>
                          <svg class="u-caret u-caret-svg" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" style="fill:currentColor;" xml:space="preserve"><polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
                        </div>
                      </div>
                      <div class="u-form-group u-form-select u-form-group-2">
                        <label for="model" class="u-label">Model</label>
                        <div class="u-form-select-wrapper">
                          <select id="model" name="select-1" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle">
                            
                          </select>
                          <svg class="u-caret u-caret-svg" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" style="fill:currentColor;" xml:space="preserve"><polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
                        </div>
                      </div>
                      <div class="u-form-group u-form-select u-form-group-3">
                        <label for="years" class="u-label">Year</label>
                        <div class="u-form-select-wrapper">
                          <select id="years" name="select-2" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle">
                            
                          </select>
                          <svg class="u-caret u-caret-svg" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="16px" height="16px" viewBox="0 0 16 16" style="fill:currentColor;" xml:space="preserve"><polygon class="st0" points="8,12 2,4 14,4 "></polygon></svg>
                        </div>
                      </div>
                      <div class="u-form-group u-form-select u-form-group-4">
                        <label for="miles" class="u-label">Miles</label>
                        <input id="miles" type="text" placeholder="" id="text-2084" name="text" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle">
                      </div>
                      <div class="u-align-left u-form-group u-form-submit">
                        <a id="search" href="#" class="u-btn u-btn-submit u-button-style u-hover-black u-palette-2-base u-btn-1">SEarch</a>
                        <input type="submit" value="submit" class="u-form-control-hidden">
                      </div>
                      
                      
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <section class="u-clearfix u-palette-5-dark-2 u-section-5" id="plans" style="display: none;">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="data-layout-selected u-clearfix u-expanded-width u-gutter-30 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-left-cell u-size-20 u-size-20-md u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <h3 id="name1" class="u-text u-text-2">Basic Plan</h3>
                  <h2 class="u-text u-text-2">$<span id="span1"></span> Monthly</h2>
                  <h6 class="u-text u-text-5">Includes:</h6>
                  <ul id="policies1" class="u-text u-text-3">
                    
                  </ul>
                  <a id="plan1" href="/document" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-2-base u-btn-1">Get Plan</a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-20 u-size-20-md u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2">
                  <h3 id="name2" class="u-text u-text-2">Enchanced Plan</h3>
                  <h2 class="u-text u-text-2">$<span id="span2"></span> Monthly</h2>
                  <h6 class="u-text u-text-5">Includes:</h6>
                  <ul id="policies2" class="u-text u-text-6">
        
                  </ul>
                  <a id="plan2" href="/document" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-2-base u-btn-1">Get Plan</a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-right-cell u-size-20 u-size-20-md u-layout-cell-3">
                <div class="u-container-layout u-container-layout-1">
                  <h3 id="name3" class="u-text u-text-2">Premium Plan</h3>
                  <h2 class="u-text u-text-2">$<span id="span3"></span> Monthly</h2>
                  <h6 class="u-text u-text-5">Includes:</h6>
                  <ul id="policies3" class="u-text u-text-3">
                    
                  </ul>
                  <a id="plan3" href="/document" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-2-base u-btn-1">Get Plan</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-4ac9"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">Sample text. Click to select the Text Element.</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="" target="_blank">
        <span>Website Builder Software</span>
      </a>. 
    </section>
  	<div class="scroll-container">
		<a href="#top"><p>&#10148</p></a>
	</div>
</body></html>