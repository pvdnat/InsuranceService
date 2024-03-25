$(document).ready(function(){
	$("#next").click(function () {
		var username = $("#username").val();
		var email = $("#email").val();
		var password = $("#password").val();
		var re_password = $("#re-password").val();
		
		if (email!="" && username!="" && password!="" && re_password!="") {
			$.ajax({
				type: "GET",
				contentType: "application/json",
				url: "http://localhost:8282/signup/" + username +"/" + email,
				success: function(result) {
					if (result=="" && password==re_password) {
						$("#account").hide();
						$("#userInfo").show();
					} else if (result!=""){
						alert("Email or Username Exist!!")
					} else {
						alert("Passwords are not the same!!")
					}
				}
			});
		}
	}); 
	
	$("#previous").click(function () {
		$("#account").show();
		$("#userInfo").hide();
	});
	
	$("#signup").click(function () {
		var userName = $("#username").val();
		var email = $("#email").val();
		var userPassword = $("#password").val();
		
		var firstName = $("#fname").val();
		var lastName = $("#lname").val();
		var licenseId = $("#license").val();
		var age = parseInt($("#age").val());
		var yearExperience = parseInt($("#exp").val());
		var phoneNumber = $("#phoneNumber").val();
		var street = $("#street").val();
		var state = $("#state").val();
		var city = $("#city").val();
		var zipcode = $("#zipcode").val();
		
		let newUser = {
			userName,
			email,
			userPassword
		}
		
		let address = {
			street,
			city,
			state,
			zipcode
		}

		let userInfo = {
			firstName,
			lastName,
			licenseId,
			age,
			yearExperience,
			phoneNumber,
			userName,
			email,
			address
		}
		

		
		$.ajax({
			type: "POST",
			contentType: "application/json",
			url: "http://localhost:8282/saveNewUser",
			data: JSON.stringify(newUser),
			success: function(result) {
				$.ajax({
					type: "POST",
					contentType: "application/json",
					url: "http://localhost:8282/saveUserInfo",
					data: JSON.stringify(userInfo),
					success: function(result1) {
						alert("Successfully Sign Up!!!")
						window.location.replace("http://localhost:8282/login");
					}, error: function(e) {
						alert(e);
					}
				});
			}, error: function(e) {
				alert(e);
			}
		});
	})
	
});