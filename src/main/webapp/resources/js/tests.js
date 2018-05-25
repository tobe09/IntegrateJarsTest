/**
 * @author
 */

function nameEnquiry(){
	const sessionId = $('#nameEnqSessionID').val();
	const destinationInstitutionCode = $('#nameEnqDestinationInstitutionCode').val();
	const channelCode = $('#nameEnqChannelCode').val();
	const accountNumber = $('#nameEnqAccountNumber').val();
		debugger
	displayResponse('nameInquirySubmit', 
			{sessionId, destinationInstitutionCode, channelCode, accountNumber},
			'#nameEnqComment');
}

function displayResponse(url, params, txtAreaId){
	$.getJSON(url, params, function(result){
			debugger
			let responseHtml = "";
			if(result.length !== 2) {
				responseHtml = "Error communicating with server";
			}
			
			responseHtml = result[0];
			responseHtml += "&#10;&#13;&#10;&#13;"; //line feed and carriage return * 2
			responseHtml += result[1];

			$(txtAreaId).html(responseHtml);
		});	
}




function dataApi(type, url, data){
	return new Promise((resolve, reject) =>{
		$.ajax({
			type,
			url,
			data,
			success: data => resolve(data),  
			error: err => reject(err)
		})
	})
}