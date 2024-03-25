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
    <title>User Profile</title>
    <link rel="stylesheet" href="../css/policies/policies_style.css" media="screen">
	<link rel="stylesheet" href="../css/policies/policies.css" media="screen">
    <script class="u-script" type="text/javascript" src="../js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="../js/nicepage.js" defer=""></script>
	<script class="u-script" type="text/javascript" src="../js/profile/profile.js" defer=""></script>
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

	<section class="u-align-center u-clearfix u-valign-top u-section-1" id="carousel_5db3">
      <div class="u-align-left u-expanded-width u-palette-2-base u-shape u-shape-1">
      </div>
      <div class="data-layout-selected u-clearfix u-gutter-0 u-layout-wrap u-layout-wrap-1">
        <div class="u-gutter-0 u-layout">
          <div class="u-layout-row">
            <div class="u-size-30 u-size-60-md">
              <div class="u-layout-col">
                <div class="u-container-style u-layout-cell u-left-cell u-palette-2-base u-size-20 u-layout-cell-1">
                  <div class="u-container-layout u-container-layout-1">
                    <h1 class="u-custom-font u-font-oswald u-text u-text-1">User Profile</h1>
                    <p class="u-text u-text-body-alt-color u-text-2">User Information</p>
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
    
  <div class="u-clearfix u-sheet u-sheet-1">
    <div class="data-layout-selected u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
      <div class="u-layout">
		<h2 id="info">Driver Information</h2>
		<form id="userInfo" style="display: none;" class="u-clearfix u-form-spacing-30 u-form-vertical u-inner-form" style="padding: 10px" source="email" name="form">
          <div class="u-form-group u-form-partition-factor-2">
            <label for="fname" class="u-label">First Name</label>
            <input readonly id="fname" type="text" placeholder="" name="fname" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
          </div>
          <div class="u-form-group u-form-partition-factor-2">
            <label for="lname" class="u-label">Last Name</label>
            <input readonly id="lname" type="text" placeholder="" name="lname" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
          </div>
          <div class="u-form-group u-form-select u-form-group-3">
            <label for="license" class="u-label">License ID</label>
            <input readonly id="license" type="text" placeholder="" name="license" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
          </div>
          <div class="u-form-group u-form-partition-factor-2">
            <label for="age" class="u-label">Age</label>
            <input readonly id="age" type="number" placeholder="" name="age" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
          </div>
          <div class="u-form-group u-form-partition-factor-2">
            <label for="exp" class="u-label">Year of Experience</label>
            <input readonly id="exp" type="number" placeholder="" name="exp" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
          </div>
          <div class="u-form-group u-form-select u-form-group-3">
            <label for="phoneNumber" class="u-label">Phone Number</label>
            <input readonly id="phoneNumber" type="text" placeholder="" name="phoneNumber" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
          </div>
          <div class="u-form-group u-form-select u-form-group-3">
            <label for="street" class="u-label">Adrress</label>
            <input readonly id="street" type="text" placeholder="Street" name="address" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
          </div>
          <div class="u-form-group u-form-partition-factor-3">
            <label for="state" class="u-label">State</label>
            <input readonly id="state" type="text" placeholder="State" name="state" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
          </div>
          <div class="u-form-group u-form-partition-factor-3">
            <label for="city" class="u-label">City</label>
            <input readonly id="city" type="text" placeholder="City" name="city" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
          </div>
          <div class="u-form-group u-form-partition-factor-3">
            <label for="zipcode" class="u-label">Zip Code</label>
            <input readonly id="zipcode" type="text" placeholder="Zip Code" name="zipcode" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
          </div>
          
		  <form class="u-align-left u-form-group u-form-submit" onsubmit="default(e)">
		  
              <div class="u-form-group u-form-partition-factor-2">        
                    <input id="edit" type="button" value="Edit" class="u-btn u-button-style u-hover-black u-palette-2-base u-btn-1">
              	    <input id="confirm" style="display: none;" type="button" value="Confirm" class="u-btn u-button-style u-hover-black u-palette-2-base u-btn-1">
              </div>
         </form>
       </div>
       
     </div>
   </div>
     
     
   <div class="u-clearfix u-sheet u-sheet-1">
    <div class="data-layout-selected u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
      <div class="u-layout">
		<h2 id="doc">Driver Documents</h2>
		<div id="docForm" style="display: none;">
		<form id="docInfo" class="u-clearfix u-form-spacing-30 u-form-vertical u-inner-form" style="padding: 10px" source="email" name="form">
			<table id='docTable' class='table table-striped' style=' border:1px solid grey;'>
				<thead class="thead-dark" >
    					<tr style="background-color:#caddfa; " class="text-secondary header">
    						<th>Document Type</th>
    						<th>Document Name</th>
    						<th style="color: red; text-align: center;">Document Status</th>
    					</tr>
    				</thead>
    				<tbody id = "docTableBody">
    				
    				</tbody>
			</table>
        </form>
        </div>
   	   </div>
     </div>
   </div>
     

  
  
  <div class="u-clearfix u-sheet u-sheet-1">
    <div class="data-layout-selected u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
      <div class="u-layout">
		<h2 id="car">Cars & Claims</h2>
		<div id="carForm" style="display: none;">
		<form id="carInfo" class="u-clearfix u-form-spacing-30 u-form-vertical u-inner-form" style="padding: 10px" source="email" name="form">
			
        </form>
          <input id="claimBtn" type="button" value="File a Claim" class="u-btn u-button-style u-hover-black u-palette-2-base u-btn-1">
        </div>
   	   </div>
     </div>
   </div>
     
    <div class="u-clearfix u-sheet u-sheet-1">
    <div class="data-layout-selected u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
      <div class="u-layout">
		<h2 id="subs">Subscription</h2>
		<div id="subsForm" style="display: none;">
		<table class='table table-striped' style=" border:1px solid grey;">
			<thead class="thead-dark" >
				<tr style="background-color:#caddfa; " class="text-secondary header">
					<th>Driver ID</th>
					<th>User Name</th>
					<th>Car</th>
					<th>Plan</th>
					<th style="color: red; text-align: center;">Payment Status</th>
					<th>Start Date</th>
					<th>End Date</th>
				</tr>
			</thead>
			<tbody id = "subsbody">
			
			</tbody>
		</table>
        </div>
   	   </div>
     </div>
   </div>   
	
	
	
<div class="modal" id="claim">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Claim Request</h4>
        <button type="button" class="close" data-dismiss="modal" id="claimX">&times;</button>
      </div>

		<div class="modal-body" id="DocumentStatusBody">        
	      <div id="claimBody" style="" class="w-100 d-flex flex-column">
		      	<div class="h-25">
		      		<h4>Car</h4>
		      		<div>
		      			<select id="carClaim" name="select" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle">
		      			
                        </select>
		      		</div>
		      	</div>
		      	<br>
		      	<div class="h-25">
		      		<h4>Accident Date</h4>
		      		<div>
		      			<input id="accidentDate" type="date" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle"/>
		      		</div>
		      	</div>
		      	<br>
		      	<div class="h-25">
		      		<h4>Claim Amount</h4>
		      		<div class="text-center">
		      			<input id="claimAmount" type="number" placeholder="" name="claimAmount" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
		      		</div>
		      	</div>
		      	<br>
		      	<div class="h-25">
		      		<h4>Issue Parts/Damage</h4>
		      		<div class="text-center">
		      			<input id="partsDamage" type="text" placeholder="" name="parts" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
		      		</div>
		      	</div>
		      	<div class="h-25">
		      		<h4>Fixing Fee</h4>
		      		<div class="text-center">
		      			<input id="fixingPrice" type="number" placeholder="" name="fixing" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle" required="">
		      		</div>
		      	</div>
		      	<div class="h-25">
			      	<form enctype="multipart/form-data">
		                <h4>Reciept/Proof Uploading</h4>
		                <input id="claimRecord" type="file" placeholder="" name="record" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle">
		                <input id="uploadClaim" type="button" value="Upload" class="upload u-btn u-button-style u-hover-black u-palette-2-base u-btn-1">
		            <form>
	            </div>
		</div> 
	  	
	</div>
        

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal" id="confirmClaim">Confirm</button>
      </div>

    </div>
  </div>
</div>
	
<div class="modal" id="docUpload">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Document Uploading</h4>
        <button type="button" class="close" data-dismiss="modal" id="docUploadX">&times;</button>
      </div>

		<div class="modal-body" id="docUploadBody">        
	      <div id="docBody" style="" class="w-100 d-flex flex-column">
		      	<div class="h-25">
		      		
		      		<form enctype="multipart/form-data">
		      			<div class="u-form-group u-form-select u-form-group-3">
				      		<h4>Document Type</h4>
				      		<select id="docType" name="select" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle">
				      			<option>License ID</option>
				      			<option>Driving Record</option>
				      			<option>Vehicle Registration</option>
				      			<option>Proof of Residency</option>
				      		</select>
				      		<br>
				      		<h4>Choose File to Upload</h4>
				      		<input id="docFile" type="file" placeholder="" name="docFile" class="u-border-2 u-border-palette-5-dark-2 u-input u-input-rectangle">
	                        <br>
	                        <input id="upload" type="button" value="Upload" class="upload u-btn u-button-style u-hover-black u-palette-2-base u-btn-1">
                      	 </div>
		      		</form>
		      	</div>
		</div> 
	  	
	</div>
        

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal" id="docUploadClose">Close</button>
      </div>

    </div>
  </div>
</div>
	
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
  </a>
</section>
<div class="scroll-container">
		<a href="#top"><p>&#10148</p></a>
	</div>
</html>

