$(document).ready(function(){
	$.get("http://localhost:8282/getAllBrands", {
	}, function(result) {
		$.each(result, function(key, value) {
			$("#brand").append("<option>"+value.brand+"</option>");
		});
		$.each(result[0].cars, function(key1, value1) {
			$("#model").append("<option>"+value1.carModel+"</option>");
		});
		let yearRelease = parseInt(result[0].cars[0].yearRelease);
		let currentYear = parseInt(new Date().getFullYear());
		for (yearRelease; yearRelease<=currentYear; yearRelease++) {
			$("#years").append("<option>"+yearRelease+"</option>");
		}
		
	});
	
	$("#brand").on('change', function() {
		$.get("http://localhost:8282/getAllCars/" + $("#brand option:selected").val(), {		
		}, function(result) {
			$("#model").html("");
			$.each(result, function(key, value) {
				$("#model").append("<option>"+value.carModel+"</option>");
			});
			$("#years").html("");
			let yearRelease = parseInt(result[0].yearRelease);
			let currentYear = parseInt(new Date().getFullYear());
			for (yearRelease; yearRelease<=currentYear; yearRelease++) {
				$("#years").append("<option>"+yearRelease+"</option>");
			}
		});
	});
	
	$("#model").on('change', function() {
		$.get("http://localhost:8282/getYearRelease/" + $("#model option:selected").val(), {		
		}, function(result) {
			$("#years").html("");
			let yearRelease = parseInt(result);
			let currentYear = parseInt(new Date().getFullYear());
			for (yearRelease; yearRelease<=currentYear; yearRelease++) {
				$("#years").append("<option>"+yearRelease+"</option>");
			}
		});
	});
	
	$("#search").click(function() {
		var carModel = $("#model").val();
		var year = parseInt($("#years").val());
		var miles = parseInt($("#miles").val());
		var discount = 0;
		
		if (year<=2003) {
			discount+=20;
		}else if (year<=2013) {
			discount+=10;
		}
		
		if (miles<=20000) {
			discount+=10;
		} else if (miles<=40000) {
			discount+=20;
		}
		
		if (carModel=="RAV4" || carModel=="CR-V") {
			discount-=5;
		}
		
		$.ajax({
			type: "GET",
			contentType: "application/json",
			url: "http://localhost:8282/getDriverInfo",
			success: function(result) {
				var yearExp = parseInt(result.yearExperience);
				if (yearExp<=2) {
					yearExp=2;
				} else if (yearExp<=5) {
					yearExp=5;
				} else {
					yearExp=8;
				}
				
				localStorage.setItem("email",result.email);
				localStorage.setItem("username",result.userName);
				
				$.ajax({
					type: "GET",
					contentType: "application/json",
					url: "http://localhost:8282/getPlans/"+yearExp,
					success: function(result1) {
						$("#plans").show();
						var counter = 1;
						$.each(result1, function(key, value) {
							$("#span"+counter).html((value.monthlyCharge - value.monthlyCharge*discount/100).toFixed(0));
							$("#policies"+counter).html("");
							
							$.each(value.insurancePolicy, function(key1, value1) {
								$("#policies"+counter).append("<li>"+value1.name+"</li>")
							});
							counter++;
						});
						
					}, error: function(e) {
						alert(e);
					}
				});
				
			}, error: function(e) {
				alert("Please Login First");
			}
		});
		
		localStorage.setItem("brand",$("#brand").val());
		localStorage.setItem("model",$("#model").val());
		localStorage.setItem("year",$("#years").val());
		localStorage.setItem("miles",$("#miles").val());
	});
	
	$("#plan1").click(function() {
		var price = $("#span1").text();
		var plan = $("#name1").text();
		localStorage.setItem("price",price);
		localStorage.setItem("plan",plan);
	});
	
	$("#plan2").click(function() {
		var price = $("#span2").text();
		var plan = $("#name2").text();
		localStorage.setItem("price",price);
		localStorage.setItem("plan",plan);
	});
	
	$("#plan3").click(function() {
		var price = $("#span3").text();
		var plan = $("#name3").text();
		localStorage.setItem("price",price);
		localStorage.setItem("plan",plan);
	});

});