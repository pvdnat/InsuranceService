$(document).ready(function(){
	$.get("http://localhost:8282/getCurrentUser", {
	}, function(result) { 
		var fname = result.firstName;
		var lname = result.lastName;
		var license = result.licenseId;
		var age = result.age;
		var exp = result.yearExperience;
		var phoneNumber = result.phoneNumber;
		
		var address = result.address;
		var street = address.street;
		var state = address.state;
		var city = address.city;
		var zipcode = address.zipcode;
		
		$("#fname").val(fname)
		$("#lname").val(lname)
		$("#license").val(license)
		$("#age").val(age)
		$("#exp").val(exp)
		$("#phoneNumber").val(phoneNumber)
		$("#street").val(street)
		$("#state").val(state)
		$("#city").val(city)
		$("#zipcode").val(zipcode)
		
		var count=1;
		$("#carInfo").html('')
		$("#carClaim").html('')
		
		
		$("#docTableBody").html("")
		if (result.documents.length==0) {
			$("#docTableBody").append("<tr><td colspan='3' class='text-center'><input type='button' class='addDocs btn btn-info' value='Add Documents Now'/></td></tr>")
		} else {
			var status;
			$.each(result.documents, function(docKey, docVal)
			 {
				 if (docVal.status=="Verified") {
					 status=("<td class='text-center'><input type='button' class='btn btn-success' value='Verified'</td>");
				 } else if (docVal.status=="Declined") {
					 status=("<td class='text-center'><input type='button' class='docDeclined btn btn-danger' value='Declined'</td>");
				 } else {
					 status=("<td class='text-center'><input type='button' class='docPending btn btn-warning' value='Pending'</td>");
				 }
				 
				$("#docTableBody").append("<tr><td>"+docVal.documentType+"</td><td>"+docVal.name+"</td>"+
				status+"</tr>")
				
				
			})
			
			if (result.documents.length>0 && result.documents.length<(3+ result.cars.length)) {
				$("#docTableBody").append("<tr><td colspan='3' class='text-center'><input type='button' class='addDocs btn btn-info' value='Add Missing Documents Now'/></td></tr>")
			}
		}
		
		$("#subsbody").html("")
		$.each(result.cars, function(key, value) {
			
			if (value.length==0){
				$("#carInfo").append("No Car to Review");
				$("#subsbody").append("<tr><td style='text-align:center;' colspan='5'>No Car</td></tr>")
			} else {
				var id = value.carId;
				var brand = value.brand;
				var carModel = value.carModel;
				var year = value.year;
				var miles = value.miles;
				
				if(value.plan.length==0) {
					$("#subsbody").append("<tr><td style='text-align:center;' colspan='5'>No Plan</td></tr>")
				} else {
					var plan = value.plan;
					var date;
					var status;
					if (plan.status=="Paid") {
						date = "<td>"+plan.startDate+"</td><td>"+plan.endDate+"</td>"
						status = "<input type='button' class='btn btn-success' value='Paid'/>"
					} else {
						date="<td>N/A</td><td>N/A</td>"
						status = "<input type='button' class='btn btn-danger' value='Unpaid'/>"
					}
					
					$("#subsbody").append("<tr><td>"+result.driverId+"</td><td>"+result.userName+"</td><td>"
					+brand+ " " +carModel+' - '+year+' - '+miles+" miles</td><td>"+plan.planName+"</td><td>"+
						status+"</td>"+date+"</tr>")
				}
			

				$("#carInfo").append(
					'<div class="u-form-group u-form-select u-form-group-3"><center>' +
						'<h3 hidden="true">'+id+'</h3>' +
						'<h3>'+brand+ " " +
						carModel+
						' - '+year+
						' - '+miles+' miles </h3>' +
					'</center>')
				
				$("#carInfo").append(
					"<table id='table"+count+"' class='table table-striped' style=' border:1px solid grey;'><thead class='thead-dark' ><tr style='background-color:#caddfa; ' class='text-secondary header'><th>Claim ID</th><th>Claim Date</th><th>Accident Date</th><th>Claim Amount</th><th>Actual Amount</th><th>Accept Amount</th><th>Status</th></tr></thead><tbody id = 'userBody'></tbody>")
				
				if (value.claims.length==0) {
					$("#table"+count).append("<tr><td style='text-align:center;' colspan='7'>No Claims</td></tr></table></div>")
				} else {
					
					
					
					$.each(value.claims, function(key2,value2) {
						if (value2.status=="Pending") {
							$("#table"+count).append("<tr><td>"+value2.claimId+"</td><td>"+value2.claimDate+"</td><td>"
						+value2.accidentDate+"</td><td>"+value2.claimPrice+"</td><td>"+value2.fixingPrice+"</td><td>"+value2.acceptAmount+"</td><td><input type='button' class='btn btn-warning' value='"+value2.status+"'/></td></tr>")
						} else if (value2.status=="Verified") {
							$("#table"+count).append("<tr><td>"+value2.claimId+"</td><td>"+value2.claimDate+"</td><td>"
						+value2.accidentDate+"</td><td>"+value2.claimPrice+"</td><td>"+value2.fixingPrice+"</td><td>"+value2.acceptAmount+"</td><td><input type='button' class='btn btn-success' value='"+value2.status+"'/></td></tr>")
						} else if (value2.status=="Declined") {
							$("#table"+count).append("<tr><td>"+value2.claimId+"</td><td>"+value2.claimDate+"</td><td>"
						+value2.accidentDate+"</td><td>"+value2.claimPrice+"</td><td>"+value2.fixingPrice+"</td><td>"+value2.acceptAmount+"</td><td><input type='button' class='btn btn-danger' value='"+value2.status+"'/></td></tr>")
						}
					})
				}
					
					$("#carClaim").append('<option value="'+id+'">'+brand+ " " + carModel+ ' - '+year+' - '+miles+' miles </option>')
					
		
					count++;
				}

		})
		

		
		
		}
	);
	
	$("#docTableBody").on('click','.addDocs',function() {
		$("#docUpload").toggle();
	});
	
	$("#upload").click(function() {
		var documentType = $("#docType").val();
		
		let files  = $('#docFile')[0].files;
		var formData = new FormData();
		var file = files[0]; 
		formData.append('file', file, file.name);
		
		var xhr = new XMLHttpRequest();
        xhr.open('POST', "http://localhost:8282/upload/"+documentType, true);
        
        xhr.onload = function () {
          if (xhr.status === 200) {
			  alert("Successful")
			  location.reload(true);
          } else {
			  alert("Fail")
          }
        };

        xhr.send(formData);
		
	})
	
	$("#docUploadX, #docUploadClose").click(function() {
		$("#docUpload").toggle();
	})
	
	$("#edit").click(function() {
		$("#edit").hide();
		$("#fname, #lname, #license, #age, #exp, #phoneNumber, #street, #state, #city, #zipcode").prop("readonly", false); 
		$("#confirm").show();
	})
	
	$("#confirm").click(function() {
		var firstName = $("#fname").val()
		var lastName = $("#lname").val()
		var licenseId = $("#license").val()
		var age = $("#age").val()
		var yearExperience = $("#exp").val()
		var phoneNumber = $("#phoneNumber").val()
		
		var street = $("#street").val()
		var state = $("#state").val()
		var city = $("#city").val()
		var zipcode = $("#zipcode").val()
		
		var address = {
			street,
			state,
			city,
			zipcode
		}
		
		var driver = {
			firstName,
			lastName,
			licenseId,
			age,
			yearExperience,
			phoneNumber,
			address
		}
		
		$.ajax({
			type: "POST",
			contentType: "application/json",
			url: "http://localhost:8282/updateDriver",
			data: JSON.stringify(driver),
			success: function(result1) {
				alert("Successfully update Driver")
				$("#edit").show();
				$("#confirm").hide();
				$("#fname, #lname, #license, #age, #exp, #phoneNumber, #street, #state, #city, #zipcode").prop("readonly", true); 
			}, error: function(e) {
				alert(e);
			}
		});
		
	})
	
	$("#info").click(function() {
		if ($("#userInfo").is(":hidden")) {
	 		$("#userInfo").show();
 		} else {
			$("#userInfo").hide();
		}
	})
	
	$("#car").click(function() {
		if ($("#carForm").is(":hidden")) {
	 		$("#carForm").show();
 		} else {
			$("#carForm").hide();
		}
	})
	
	$("#doc").click(function() {
		if ($("#docForm").is(":hidden")) {
	 		$("#docForm").show();
 		} else {
			$("#docForm").hide();
		}
	})
	
	$("#claimBtn").click(function() {
		$("#claim").toggle()
	})
	
	$("#claimX").click(function() {
		$("#claim").toggle()
	})
	
	$("#confirmClaim").click(function() {
		var carId = $('#carClaim').val();
		var accidentDate = $('#accidentDate').val();
		var issuedParts = $('#partsDamage').val();
		var fixingPrice = parseFloat($('#fixingPrice').val());
		var claimPrice = parseFloat($('#claimAmount').val());
		
		let files  = $('#claimRecord')[0].files;
		var formData = new FormData();
		var file = files[0]; 
		formData.append('file', file, file.name);
		
		claim={
			accidentDate,
			issuedParts,
			fixingPrice,
			claimPrice
		}
		
		$.ajax({
			type: "POST",
			contentType: "application/json",
			url: "http://localhost:8282/saveClaim/"+carId,
			data: JSON.stringify(claim),
			success: function(result1) {
				var claimId = result1.claimId;
				var xhr = new XMLHttpRequest();
		        xhr.open('POST', "http://localhost:8282/uploadClaim/"+claimId, true);
		        
		        xhr.onload = function () {
		          if (xhr.status === 200) {
					alert("Successful")
		          	location.reload(true);
		          } else {
					alert("Fail to upload Proof/Evidence")		          }
		        };
		        xhr.send(formData);
		        
		        
		        
			}, error: function(e) {
				alert(e);
			}
		});
		
	})
	
	//Subscription
	$("#subs").click(function() {
		if ($("#subsForm").is(":hidden")) {
	 		$("#subsForm").show();
 		} else {
			$("#subsForm").hide();
		}
	})
	
	
	
});