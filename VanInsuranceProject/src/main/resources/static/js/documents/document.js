$(document).ready(function(){
	
	$("#plan").html(localStorage.getItem("plan"));
	$("#price").html(localStorage.getItem("price"));
	
	$("#brand").html(localStorage.getItem("brand"));
	$("#model").html(localStorage.getItem("model"));
	$("#year").html(localStorage.getItem("year"));
	$("#miles").html(localStorage.getItem("miles"));
	
	$("#confirmCarInfo").click(function() {
		var brand = $("#brand").text();
		var carModel = $("#model").text();
		var year = $("#year").text();
		var miles = parseFloat($("#miles").text());
		
		
		
		var planName = $("#plan").text();
		var price = parseFloat($("#price").text());
		var plan = {
			planName,
			paidAmount: price,
			status: "Unpaid"
		}
		
		var car = {
			brand,
			carModel,
			year,
			miles,
			plan
		}
		
		$.ajax({
			type: "POST",
			contentType: "application/json",
			url: "http://localhost:8282/saveCar",
			data: JSON.stringify(car),
			success: function(result1) {
				
				if (result1==null) {
					alert("Car Exists")
				} else {
					alert("Successfully save Car Information")
					localStorage.setItem("carId",result1.carId)
				}
			}, error: function(e) {
				alert("Fail");
			}
		});
		
	});
	
	$(".upload").click(function() {
		let files  = $(this).parent().find('input').eq(0)[0].files;
		var documentType = $(this).parent().find('label').text();
				
		var formData = new FormData();
		var file = files[0]; 
		formData.append('file', file, file.name);

        var xhr = new XMLHttpRequest();
        xhr.open('POST', "http://localhost:8282/upload/"+documentType, true);
        
        xhr.onload = function () {
          if (xhr.status === 200) {
			  alert("Successful")
            statusDiv.innerHTML = 'Your upload is successful..';
          } else {
            statusDiv.innerHTML = 'An error occurred during the upload. Try again.';
          }
        };

        // Send the data.
        xhr.send(formData);
        
	});

	$("#payment").click(function() {
		card.mount('#cardElement');
		$("#paymentModal").toggle();
	})
	
	$("#paymentModalX, #paymentModalClose").click(function() {
		$("#paymentModal").toggle();
	})
	
	
	
	
	
		
	
	
});