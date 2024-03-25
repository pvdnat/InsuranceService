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
    <title>Home</title>
    <link rel="stylesheet" href="../css/Home.css" media="screen">
	<link rel="stylesheet" href="../css/style.css" media="screen">
    <script class="u-script" type="text/javascript" src="../js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="../js/nicepage.js" defer=""></script>
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
					<sec:authorize access="!hasRole('ROLE_ADMIN')">
		                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="/policies">Polices</a></li>
					</sec:authorize>					
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
		                <sec:authorize access="!hasAnyRole('ADMIN')">
			                <li class="u-nav-item"><a class="u-button-style u-nav-link" href="/policies">Polices</a></li>
						</sec:authorize>
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
      <div class="u-clearfix u-gutter-0 u-layout-wrap u-layout-wrap-1">
        <div class="u-gutter-0 u-layout">
          <div class="u-layout-row">
            <div class="u-size-30 u-size-60-md">
              <div class="u-layout-col">
                <div class="u-container-style u-layout-cell u-left-cell u-palette-2-base u-size-20 u-layout-cell-1">
                  <div class="u-container-layout u-valign-top u-container-layout-1">
                    <h1 class="u-custom-font u-font-oswald u-text u-text-1">Auto Authority Insurance </h1>
                    <p class="u-text u-text-body-alt-color u-text-2">The road to affordable car insurance. Find coverage that fits your lifestyle.</p>
                    </p>
                    <a href="#" class="u-border-2 u-border-white u-btn u-button-style u-btn-2">learn more</a>
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
    <section class="u-clearfix u-section-2" id="carousel_a0e6">
      <div class="u-clearfix u-sheet u-valign-middle-lg u-valign-middle-sm u-valign-middle-xl u-valign-middle-xs u-sheet-1">
        <div class="u-clearfix u-expanded-width u-gutter-0 u-layout-spacing-top u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-align-left u-container-style u-layout-cell u-left-cell u-size-40 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1" src="">
                  <div class="u-image u-image-circle u-image-1"></div>
                  <div class="u-border-10 u-border-white u-image u-image-circle u-image-2"></div>
                  <div class="u-align-left u-border-18 u-border-palette-2-base u-image u-image-circle u-image-3" data-image-width="626" data-image-height="417"></div>
                  <div class="u-palette-2-base u-shape u-shape-circle u-shape-1"></div>
                  <div class="u-shape u-shape-svg u-text-palette-2-base u-shape-2">
                    <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 160 160" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-9dc1"></use></svg>
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 160 160" x="0px" y="0px" id="svg-9dc1" style="enable-background:new 0 0 160 160;"><path d="M80,30c27.6,0,50,22.4,50,50s-22.4,50-50,50s-50-22.4-50-50S52.4,30,80,30 M80,0C35.8,0,0,35.8,0,80s35.8,80,80,80
	s80-35.8,80-80S124.2,0,80,0L80,0z"></path></svg>
                  </div>
                </div>
              </div>
              <div class="u-align-left u-container-style u-layout-cell u-right-cell u-size-20 u-white u-layout-cell-2">
                <div class="u-container-layout u-valign-middle-lg u-valign-middle-xl u-valign-top-md u-container-layout-2">
                  <h2 class="u-text u-text-1">The Last <span class="u-text-palette-2-base">Car Insurance</span> Ever Need
                  </h2>
                  <p class="u-text u-text-grey-50 u-text-2">Polices include:</p>
                  <ul class="u-custom-list u-text u-text-3">
                    <li style="">
                      <div class="u-list-icon u-text-palette-2-base">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 -46 417.81333 417" id="svg-cd3c"><path d="m159.988281 318.582031c-3.988281 4.011719-9.429687 6.25-15.082031 6.25s-11.09375-2.238281-15.082031-6.25l-120.449219-120.46875c-12.5-12.5-12.5-32.769531 0-45.246093l15.082031-15.085938c12.503907-12.5 32.75-12.5 45.25 0l75.199219 75.203125 203.199219-203.203125c12.503906-12.5 32.769531-12.5 45.25 0l15.082031 15.085938c12.5 12.5 12.5 32.765624 0 45.246093zm0 0"></path></svg>
                      </div>Comprehensive coverage
                    </li>
                    <li style="">
                      <div class="u-list-icon u-text-palette-2-base">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 -46 417.81333 417" id="svg-cd3c"><path d="m159.988281 318.582031c-3.988281 4.011719-9.429687 6.25-15.082031 6.25s-11.09375-2.238281-15.082031-6.25l-120.449219-120.46875c-12.5-12.5-12.5-32.769531 0-45.246093l15.082031-15.085938c12.503907-12.5 32.75-12.5 45.25 0l75.199219 75.203125 203.199219-203.203125c12.503906-12.5 32.769531-12.5 45.25 0l15.082031 15.085938c12.5 12.5 12.5 32.765624 0 45.246093zm0 0"></path></svg>
                      </div>Liability coverage
                    </li>
                    <li style="">
                      <div class="u-list-icon u-text-palette-2-base">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 -46 417.81333 417" id="svg-cd3c"><path d="m159.988281 318.582031c-3.988281 4.011719-9.429687 6.25-15.082031 6.25s-11.09375-2.238281-15.082031-6.25l-120.449219-120.46875c-12.5-12.5-12.5-32.769531 0-45.246093l15.082031-15.085938c12.503907-12.5 32.75-12.5 45.25 0l75.199219 75.203125 203.199219-203.203125c12.503906-12.5 32.769531-12.5 45.25 0l15.082031 15.085938c12.5 12.5 12.5 32.765624 0 45.246093zm0 0"></path></svg>
                      </div>Insurance for teen drivers
                    </li>
                    <li style="">
                      <div class="u-list-icon u-text-palette-2-base">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 -46 417.81333 417" id="svg-cd3c"><path d="m159.988281 318.582031c-3.988281 4.011719-9.429687 6.25-15.082031 6.25s-11.09375-2.238281-15.082031-6.25l-120.449219-120.46875c-12.5-12.5-12.5-32.769531 0-45.246093l15.082031-15.085938c12.503907-12.5 32.75-12.5 45.25 0l75.199219 75.203125 203.199219-203.203125c12.503906-12.5 32.769531-12.5 45.25 0l15.082031 15.085938c12.5 12.5 12.5 32.765624 0 45.246093zm0 0"></path></svg>
                      </div>Rideshare insurance
                    </li>
                    <li style="">
                      <div class="u-list-icon u-text-palette-2-base">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 -46 417.81333 417" id="svg-cd3c"><path d="m159.988281 318.582031c-3.988281 4.011719-9.429687 6.25-15.082031 6.25s-11.09375-2.238281-15.082031-6.25l-120.449219-120.46875c-12.5-12.5-12.5-32.769531 0-45.246093l15.082031-15.085938c12.503907-12.5 32.75-12.5 45.25 0l75.199219 75.203125 203.199219-203.203125c12.503906-12.5 32.769531-12.5 45.25 0l15.082031 15.085938c12.5 12.5 12.5 32.765624 0 45.246093zm0 0"></path></svg>
                      </div>Classic car insurance
                    </li>
                    <li style="">
                      <div class="u-list-icon u-text-palette-2-base">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 -46 417.81333 417" id="svg-cd3c"><path d="m159.988281 318.582031c-3.988281 4.011719-9.429687 6.25-15.082031 6.25s-11.09375-2.238281-15.082031-6.25l-120.449219-120.46875c-12.5-12.5-12.5-32.769531 0-45.246093l15.082031-15.085938c12.503907-12.5 32.75-12.5 45.25 0l75.199219 75.203125 203.199219-203.203125c12.503906-12.5 32.769531-12.5 45.25 0l15.082031 15.085938c12.5 12.5 12.5 32.765624 0 45.246093zm0 0"></path></svg>
                      </div>Roadside coverage
                    </li>
                    <li style="">
                      <div class="u-list-icon u-text-palette-2-base">
                        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 -46 417.81333 417" id="svg-cd3c"><path d="m159.988281 318.582031c-3.988281 4.011719-9.429687 6.25-15.082031 6.25s-11.09375-2.238281-15.082031-6.25l-120.449219-120.46875c-12.5-12.5-12.5-32.769531 0-45.246093l15.082031-15.085938c12.503907-12.5 32.75-12.5 45.25 0l75.199219 75.203125 203.199219-203.203125c12.503906-12.5 32.769531-12.5 45.25 0l15.082031 15.085938c12.5 12.5 12.5 32.765624 0 45.246093zm0 0"></path></svg>
                      </div>Personal injury protection
                    </li>
                  </ul>

                  <a href="/policies" class="u-black u-btn u-button-style u-btn-2">View More</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-palette-5-dark-3 u-section-3" id="carousel_8a32">
      <div class="u-clearfix u-sheet u-valign-middle-md u-valign-middle-sm u-valign-middle-xl u-valign-middle-xs u-sheet-1">
        <div class="u-expanded-width-md u-shape u-shape-svg u-text-palette-2-base u-shape-1">
          <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 160 150" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-7553"></use></svg>
          <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 160 150" x="0px" y="0px" id="svg-7553"><path d="M43.2,126.9c14.2,1.3,27.6,7,39.1,15.6c8.3,6.1,19.4,10.3,32.7,5.3c11.7-4.4,18.6-17.4,21-30.2c2.6-13.3,8.1-25.9,15.7-37.1
	c8.3-12.1,10.8-27.9,5.3-42.7C150.5,20.3,134.6,9,117,7.6C107.9,6.9,98.8,5,90.1,1.9C83-0.6,75-0.7,67.4,2.1
	c-9.9,3.7-17,11.6-20.1,21c-3.3,10.1-10.9,18-20.6,22.2c-0.1,0-0.1,0.1-0.2,0.1c-20.3,8.9-31,32-24.6,53.2
	C6.9,115.6,25.2,125.2,43.2,126.9z"></path></svg>
        </div>
        <div class="u-list u-list-1">
          <div class="u-repeater u-repeater-1">
            <div class="u-align-center u-container-style u-list-item u-repeater-item u-white u-list-item-1">
              <div class="u-container-layout u-similar-container u-valign-top-xs u-container-layout-1">
                <h2 class="u-custom-font u-font-montserrat u-text u-text-default u-text-1">01</h2>
                <p class="u-text u-text-2">Sample text. Click to select the text box. Click again or double click to start editing the text.</p>
                <a href="#" class="u-active-none u-border-2 u-border-active-black u-border-hover-black u-border-no-left u-border-no-right u-border-no-top u-border-palette-2-base u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-palette-2-base u-btn-1">more</a>
              </div>
            </div>
            <div class="u-align-center u-container-style u-list-item u-repeater-item u-white u-list-item-2">
              <div class="u-container-layout u-similar-container u-valign-top-xs u-container-layout-2">
                <h2 class="u-custom-font u-font-montserrat u-text u-text-default u-text-3">02</h2>
                <p class="u-text u-text-4">Sample text. Click to select the text box. Click again or double click to start editing the text.</p>
                <a href="#" class="u-active-none u-border-2 u-border-active-black u-border-hover-black u-border-no-left u-border-no-right u-border-no-top u-border-palette-2-base u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-palette-2-base u-btn-2">more</a>
              </div>
            </div>
            <div class="u-align-center u-container-style u-list-item u-repeater-item u-white u-list-item-3">
              <div class="u-container-layout u-similar-container u-valign-top-xs u-container-layout-3">
                <h2 class="u-custom-font u-font-montserrat u-text u-text-default u-text-5">03</h2>
                <p class="u-text u-text-6">Sample text. Click to select the text box. Click again or double click to start editing the text.</p>
                <a href="#" class="u-active-none u-border-2 u-border-active-black u-border-hover-black u-border-no-left u-border-no-right u-border-no-top u-border-palette-2-base u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-palette-2-base u-btn-3">more</a>
              </div>
            </div>
            <div class="u-align-center u-container-style u-list-item u-repeater-item u-white u-list-item-4">
              <div class="u-container-layout u-similar-container u-valign-top-xs u-container-layout-4">
                <h2 class="u-custom-font u-font-montserrat u-text u-text-default u-text-7">04</h2>
                <p class="u-text u-text-8">Sample text. Click to select the text box. Click again or double click to start editing the text.</p>
                <a href="#" class="u-active-none u-border-2 u-border-active-black u-border-hover-black u-border-no-left u-border-no-right u-border-no-top u-border-palette-2-base u-btn u-button-style u-hover-none u-none u-text-body-color u-text-hover-palette-2-base u-btn-4">more</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-palette-2-base u-section-4" id="carousel_703b">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <h1 class="u-custom-font u-font-oswald u-text u-text-default u-text-1" id="about">About</h1>
        <p class="u-text u-text-2">Our Shared Purpose highlights Auto Authority's values: integrity, Inclusive Diversity & Equity and collective success. These values are woven into our business culture, defining who we are and what matters most. As a purpose-driven company, we stay true to our values to help customers, communities and each other.<br>
        </p>
        <a href="#" class="u-btn u-button-style u-text-palette-2-base u-white u-btn-1">contact us</a>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-palette-1-dark-3 u-section-5" id="carousel_af53">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-clearfix u-expanded-width u-gutter-30 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-size-25 u-size-60-md">
                <div class="u-layout-col">
                  <div class="u-container-style u-layout-cell u-left-cell u-size-40 u-layout-cell-1">
                    <div class="u-container-layout u-container-layout-1">
                      <div class="u-palette-2-base u-shape u-shape-circle u-shape-1"></div>
                      <div class="u-image u-image-circle u-image-1"></div>
                    </div>
                  </div>
                  <div class="u-container-style u-layout-cell u-left-cell u-size-20 u-layout-cell-2">
                    <div class="u-container-layout u-container-layout-2">
                      <p class="u-text u-text-1">Providing protection to help people achieve their hopes and dreams has always been Allstate's purpose. 
                      It's the why behind everything we do. The world is unpredictable. When the unexpected happens, we'll be there to face it with you 
                      and provide protection to keep your life moving forward.</p>
                      <a href="#" class="u-btn u-btn-rectangle u-button-style u-palette-2-base u-radius-0 u-btn-1">learn more</a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="u-size-35 u-size-60-md">
                <div class="u-layout-col">
                  <div class="u-container-style u-layout-cell u-right-cell u-size-20 u-layout-cell-3">
                    <div class="u-container-layout u-container-layout-3">
                      <h2 class="u-text u-text-2">Our Purpose</h2>
                     
                    </div>
                  </div>
                  <div class="u-align-center u-container-style u-layout-cell u-right-cell u-shape-rectangle u-size-40 u-layout-cell-4">
                    <div class="u-container-layout u-valign-top u-container-layout-4">
                      <div class="u-border-11 u-border-palette-2-base u-image u-image-circle u-image-2"></div>
                      <div class="u-palette-2-base u-shape u-shape-circle u-shape-2"></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-align-center u-clearfix u-section-6" id="carousel_bcb0">
      <div class="u-clearfix u-sheet u-valign-middle-md u-valign-middle-sm u-valign-middle-xl u-valign-middle-xs u-sheet-1">
        <div class="u-clearfix u-expanded-width u-gutter-0 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-align-left u-container-style u-layout-cell u-right-cell u-size-30 u-layout-cell-1">
                <div class="u-container-layout u-valign-middle u-container-layout-1">
                  <h5 class="u-text u-text-1">about company</h5>
                  <h2 class="u-text u-text-2">
                    Our <span class="u-text-palette-2-base">Legacy</span><br>
                  </h2>
                  <p class="u-text u-text-3">For over 90 years, Americans have trusted Allstate to protect their families and belongings. Today, as our product offerings keep expanding, we provide an even bigger circle of protection.</p>
                  </p>
                  <a href="#" class="u-border-6 u-border-no-left u-border-no-right u-border-no-top u-border-palette-2-base u-btn u-btn-rectangle u-button-style u-none u-text-body-color u-text-hover-palette-2-base u-btn-2">learn more</a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-left-cell u-size-30 u-layout-cell-2">
                <div class="u-container-layout u-valign-middle-xl u-container-layout-2">
                  <div class="u-shape u-shape-svg u-text-palette-2-base u-shape-1">
                    <svg class="u-svg-link" preserveAspectRatio="none" viewBox="0 0 160 160" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-a0bf"></use></svg>
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 160 160" x="0px" y="0px" id="svg-a0bf" style="enable-background:new 0 0 160 160;"><path d="M80,30c27.6,0,50,22.4,50,50s-22.4,50-50,50s-50-22.4-50-50S52.4,30,80,30 M80,0C35.8,0,0,35.8,0,80s35.8,80,80,80
	s80-35.8,80-80S124.2,0,80,0L80,0z"></path></svg>
                  </div>
                  <div class="u-image u-image-circle u-image-1"></div>
                  <div alt="" class="u-align-left u-border-18 u-border-palette-2-base u-image u-image-circle u-image-2"></div>
                  <div class="u-palette-2-base u-shape u-shape-circle u-shape-2"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="u-clearfix u-palette-5-dark-3 u-section-7" id="carousel_2084">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-palette-2-base u-shape u-shape-circle u-shape-1"></div>
        <div class="data-layout-selected u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-left-cell u-size-30 u-white u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1">
                  <div class="u-form u-form-1">
                    <form action="https://forms.nicepagesrv.com/v2/form/process" class="u-clearfix u-form-spacing-30 u-form-vertical u-inner-form" style="padding: 10px" source="email" name="form">
                      <div class="u-form-email u-form-group u-form-partition-factor-2">
                        <label for="email-8268" class="u-form-control-hidden u-label">Email</label>
                        <input type="email" placeholder="Enter a valid email address" id="email-8268" name="email" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
                      </div>
                      <div class="u-form-group u-form-name u-form-partition-factor-2">
                        <label for="name-8268" class="u-form-control-hidden u-label">Name</label>
                        <input type="text" placeholder="Enter your Name" id="name-8268" name="name" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
                      </div>
                      <div class="u-form-date u-form-group u-form-group-3">
                        <label for="date-be9f" class="u-form-control-hidden u-label">Date</label>
                        <input type="text" placeholder="MM/DD/YYYY" id="date-be9f" name="date" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="" data-date-format="mm/dd/yyyy">
                      </div>
                      <div class="u-form-group u-form-message">
                        <label for="message-8268" class="u-form-control-hidden u-label">Message</label>
                        <textarea placeholder="Enter your message" rows="4" cols="50" id="message-8268" name="message" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required=""></textarea>
                      </div>
                      <div class="u-align-left u-form-group u-form-submit">
                        <a href="#" class="u-btn u-btn-submit u-button-style u-hover-black u-palette-2-base u-btn-1">Submit</a>
                        <input type="submit" value="submit" class="u-form-control-hidden">
                      </div>
                      <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
                      <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
                      <input type="hidden" value="" name="recaptchaResponse">
                      <input type="hidden" name="formServices" value="887317a9-aa43-4c77-2a3a-cd3c5b3bf4e6">
                    </form>
                  </div>
                </div>
              </div>
              <div class="u-align-right u-container-style u-layout-cell u-palette-5-dark-3 u-right-cell u-size-30 u-layout-cell-2">
                <div class="u-container-layout u-valign-middle-lg u-valign-middle-xl u-container-layout-2">
                  <h2 class="u-text u-text-1" id="contact">Contact Us</h2>
                  <div class="u-border-6 u-border-white u-line u-line-horizontal u-line-1"></div>
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
	  <div class="scroll-container">
	  	
	    		<a href="#top"><p>&#10148</p></a>
	    	
		</div>
</body></html>