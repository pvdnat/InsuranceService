$(document).ready(function(){
	$("#total").html(localStorage.getItem("price"));
	var carId = parseInt(localStorage.getItem("carId"));
	
	var username = localStorage.getItem("username");
	var email = localStorage.getItem("email");
	var stripe = Stripe('pk_test_51O6fWICBdegC1TuDFxUdSHgcKr3TPGDaxCmTFbwIbGCylxC2FX5mLYukmrNIed78M1T6S78JI70ErE8IVw7mQ06C00fefPDihs')
	var elements = stripe.elements();
	
	var cardNumber = elements.create('cardNumber');
	cardNumber.mount("#cardnumber");
	
	var cardExpire = elements.create('cardExpiry');
	cardExpire.mount('#expirationdate');
	
	var cardCvc = elements.create('cardCvc');
	cardCvc.mount('#securitycode');
	
	
	$("#pay").click(function() {
		stripe.createPaymentMethod({
			type:'card',
			card: cardNumber,
			
		}).then(function(result) {
			if (result.error) {
				alert("Error")
			} else {
				var tokenId = result.paymentMethod.id;
				var amount = parseFloat($("#total").text());
				var request = {
					tokenId,
					username,
					email,
					carId,
					amount
				}
				
				
				$.ajax({
					url: 'http://localhost:8282/makePayment',
					method: 'POST',
					contentType: "application/json",
					data: JSON.stringify(request), 
					success: function(response) {
						alert("Payment Successful")
						
						$.ajax({
							url: 'http://localhost:8282/updatePlanStatus/'+carId+'/Paid',
							method: 'POST',
							contentType: "application/json",
							success: function(result) {
								alert("Plan Status Updated")
							}, error: function(e) {
								alert("Fail to Update Plan Status")
							}
						
						})
						
					}, error: function(e) {
						alert("Fail to make Payment")
					}
				})
			}
		});
	});
});