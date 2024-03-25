$(document).ready(function(){
	
	
	
	$.get("http://localhost:8282/getAllDriver", {
	}, function(result) {
		$("table tr").not(".header").remove();
		$.each(result, function(key, value) {
			var docsStatus="Verified";
			if (value.cars.length!=0) {
				$.each(value.cars, function(key2, carVal) {
					var plan = carVal.plan;
					var status = "";
					if (plan.status=="Paid") {
						status = "<input type='button' class='btn btn-success' value='Paid'/>";
					} else if (plan.status=="Pending") {
						status = "<input type='button' class='btn btn-warning' value='Pending'/>";
					} else {
						status = "<input type='button' class='btn btn-danger' value='Unpaid'/>";
					}
					
					$("#paymentbody").append("<tr><td>"+value.driverId+"</td><td>"+value.userName+"</td><td>"+
					carVal.brand+ " " + carVal.carModel+ ' - '+carVal.year+' - '+carVal.miles+" miles </td><td>"+
					plan.planName+"</td><td>"+status+"</td></tr>")
				})
			}
			
			
			$.each(value.documents, function(key1, value1){
				if (value1.status=="Pending") {
					docsStatus="Pending";
				} else if (value1.status=="Declined") {
					docsStatus="Declined";
				}
			});
			
			if (value.documents.length<(3+value.cars.length)) {
				docsStatus="Missing";
			}
			
			if (docsStatus=="Verified") {
				$("#userBody").append("<tr><td>"+value.userName+"</td><td>"+value.firstName+" "+value.lastName+"</td><td>"+
			value.email+"</td><td><input id='docStatus' type='button' class='docs btn btn-success' value='"+docsStatus+"'/></td><td>"+value.cars.length+"</td></tr>");
			} else if (docsStatus=="Pending") {
				$("#userBody").append("<tr><td>"+value.userName+"</td><td>"+value.firstName+" "+value.lastName+"</td><td>"+
			value.email+"</td><td><input id='docStatus' type='button' class='docs btn btn-warning' value='"+docsStatus+"'/></td><td>"+value.cars.length+"</td></tr>");
			} else if (docsStatus=="Declined"){
				$("#userBody").append("<tr><td>"+value.userName+"</td><td>"+value.firstName+" "+value.lastName+"</td><td>"+
			value.email+"</td><td><input id='docStatus' type='button' class='docs btn btn-danger' value='"+docsStatus+"'/></td><td>"+value.cars.length+"</td></tr>");
			} else {
				$("#userBody").append("<tr><td>"+value.userName+"</td><td>"+value.firstName+" "+value.lastName+"</td><td>"+
			value.email+"</td><td><input id='docStatus' type='button' class='docs btn btn-info' value='"+docsStatus+"'/></td><td>"+value.cars.length+"</td></tr>");
			}
		});
	});
	
	

	$("#claimTable").on('click', '.proofs', function() {
		var name = $(this).text()
	
		$.get("http://localhost:8282/download/" + name, {
			}, function(result) {
				alert("Successfully Download Document")
				window.location.href = "http://localhost:8282/download/"+ name
			});
	});
	
	$("#claimTable").on('click', '.status', function() {
		var status = $(this).val();
		var claimId = $(this).closest("tr").find("td:eq(0)").text();
		if (status=="Pending") {
			$("#ClaimStatus").toggle();
			$("#modalClaimId").val(claimId);
		}
	});
	
	$("#ClaimStatusX, #ClaimStatusClose").click(function() {
		$("#ClaimStatus").toggle();
	})

	$("#userTable").on('click', '.docs', function() {
		var driver = $(this).closest("tr").find("td:eq(0)").text();
		$("#DocumentStatus").toggle();
		
		$("#DocumentStatusBody").html("")
		$.get("http://localhost:8282/getDriverInfo/" + driver, {
			}, function(result) {
				var statusBtn;
				var status;
				if (result.documents.length==0) {
					$("#DocumentStatusBody").append("<div class='h-25 text-center'>"+
					"No Documents"+
					"</div>")
				} else {
					$.each(result.documents, function(key, value) {
						if (value.status=="Verified") {
							statusBtn="<input type='button' class='download btn btn-warning' value='Download'/>"+
									"<input type='button' class='declined btn btn-danger' value='Decline'/>";
							status="<h6 style='color:green;'>Verified</h6>"
						} else if (value.status=="Pending") {
							statusBtn="<input type='button' class='download btn btn-warning' value='Download'/>"+
									"<input type='button' class='verified btn btn-success' value='Verify'/>"+
									"<input type='button' class='declined btn btn-danger' value='Decline'/>";
							status="<h6 style='color:yellow;'>Pending</h6>"
	
						} else {
							statusBtn="<input type='button' class='download btn btn-warning' value='Download'/>"+
									"<input type='button' class='verified btn btn-success' value='Verify'/>"
							status="<h6 style='color:red;'>Declined</h6>"
	
						}
						
						$("#DocumentStatusBody").append("<div class='h-25 text-center'>"+
						"<h4>"+value.documentType+"</h4>"+
						"<h5>"+value.name+"</h5>"+
						status+
						statusBtn+
						"</div>")
					});
				}
				
				
				
				
				
				
		});
		
	})
	
	function statusCheck(status,num) {
		if (status=="Verified") {
			$("#verf"+num).hide();
			return "&#9989;";
		} else if (status=="Declined") {
			$("#verf"+num).show();
			return "<b><font color=red>&#10008;</b>";
		}
	}

	$("#DocumentStatusX, #DocumentStatusClose").click(function() {
		$("#DocumentStatus").toggle();
	})

	$("#verifiedClaim").click(function() {
		var acceptAmount = parseFloat($("#actAmount").val());
		var claimId = $("#modalClaimId").val();
		if ($("#actAmount").val()!="") {
			$.post("http://localhost:8282/updateClaim/" + claimId+"/Verified"+"/"+acceptAmount, {
			}, function(result) {
				alert("Successfully Verified")
				location.reload(true);
			});	
		} else {
			alert("Enter Acceptable Amount")
		}
	})
	
	$("#declinedClaim").click(function() {
		var claimId = $("#modalClaimId").val();
		$.post("http://localhost:8282/updateClaim/" + claimId+"/Declined"+"/"+0, {
			}, function(result) {
				alert("Successfully Declined")
				location.reload(true);
		});
	})
	
	$("#DocumentStatusBody").on('click','.download',function() {
		var name = $(this).parent().find('h5').text();
		if (name!="Missing Documents") {
			$.get("http://localhost:8282/download/" + name, {
			}, function(result) {
				alert("Successfully Download Document")
				window.location.href = "http://localhost:8282/download/"+ name
			});			
		}
		
	})
	
	
	$("#DocumentStatusBody").on('click','.verified',function() {
		var name = $(this).parent().find('h5').text();		
		$.post("http://localhost:8282/docUpdate/" + name+"/Verified", {
		}, function(result) {
			alert("Successfully Verified")
			location.reload(true);
		});	
		
	})
	
	$("#DocumentStatusBody").on('click','.declined',function() {
		var name = $(this).parent().find('h5').text();
		$.post("http://localhost:8282/docUpdate/" + name+"/Declined", {
		}, function(result) {
			alert("Declined Document")
			location.reload(true);
		});	
		
	})
	
	
	
	$("#driverInfo").click(function() {
		if ($("#userTable").is(":hidden")) {
	 		$("#userTable").show();
 		} else {
			$("#userTable").hide();
		}
	})
	
	$("#claim").click(function() {
		
		if ($("#claimTable").is(":hidden")) {
			$("#claimTbody").html("")
				$.get("http://localhost:8282/getAllCar", {
					}, function(result) {
						$.each(result, function(key1, value1) {
							$.each(value1.claims, function(key2, value2) {
								var status = value2.status;
								$.each(value2.documents, function(key3, value3) {
									if (status=="Pending") {
										statusTable="<input type='button' class='status btn btn-warning' value='Pending'/>";
									} else if (status=="Verified") {
										statusTable="<input type='button' class='status btn btn-success' value='Verified'/>";
									} else {
										statusTable="<input type='button' class='status btn btn-danger' value='Declined'/>";
									} 
									
									
									
									$("#claimTbody").append("<tr><td>"+value2.claimId+"</td><td>"+value1.brand+ " " + value1.carModel+ ' - '+value1.year+' - '+value1.miles+"</td><td>"
									+value2.claimDate+"</td><td>"+value2.accidentDate+"</td><td>"+value2.claimPrice+"</td><td>"+value2.fixingPrice+"</td><td id='actFee'>"+value2.acceptAmount+"</td><td>"+
									"<a class='proofs'>"+value3.name+"</a></td><td>"+statusTable+"</td></tr>")
								})
							})
							
						})
						
					});
	 		$("#claimTable").show();
	 		
 		} else {
			$("#claimTable").hide();
		}
	})
	
	
	
	$("#payment").click(function() {
		if ($("#paymentTable").is(":hidden")) {
	 		$("#paymentTable").show();
 		} else {
			$("#paymentTable").hide();
		}
	})
	
	
	
	
	
});