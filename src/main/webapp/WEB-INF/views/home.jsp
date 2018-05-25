<!-- @author: Chineke Tobenna 2nd May, 2018 -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>


<html lang="en">
<head>
<title>Integration API</title>
<!-- <meta charset="ISO-8859-1">-->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  -->
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css" />">
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
body {
	font-family: "Lato", sans-serif;
}

.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) 
.row.content {
	text-align: left;
	height: auto;
}*/

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #2c2c2d; /*#f1f1f1*/
	height: 100%;
	color: white;
}

.sidemenu {
	height: 100%;
	width: 250px;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #111;
	overflow-x: hidden;
	padding-top: 20px;
	margin-top: 3%;
	height: 100%;
	background-color: white;
}

.main {
	margin-left: 236px; /* Same as the width of the sidemenu */
	padding-left: 20px;
	background-color: white;
	color: #111;
}

/* Set black background color, white text and some padding */
.footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

.extraSpace {
	font-weight: bold;
	margin: 40px 0px 20px 0px;
	padding-top: 60px;
}

a {
	color: white;
	text-decoration: none;
}

.Methods {
	padding: 5px;
	Margin: 6px;
	font-size: 15px;
	font-weight: bold;
	color: white;
	background-color: #2c2c2d;
	border-radius: 5px;
}

.Methods a:hover {
	background-color: #FFFFFF;
	color: #2c2c2d;
	text-decoration: none;
}

.active {
	background-color: #ff0000;
	color: #FFFFFF;
}

#ResponseBox {
	border: 1px solid black;
	border-radius: 5px;
}

.addmore {
	position: fixed;
	height: 100%;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	
	.sidemenu {
		height: auto;
		width: 100%;
		position: none;
		text-align: center;
	}
	
	.main {
		margin-left: 0px;
	}
}

/* On medium screens,  
@media screen and ( min-width: 767px) and (max-width: 1335px) {
	.sidenav {
		height: auto;
		width: 100%;
		padding: 15px;
	}
	
	.sidemenu {
		position: fixed;
	}
		
	.main {
		margin-left: 236px;
		padding-left: 20px;
	}
	
	.text-left {
		width: 100%;
	}
}
*/
</style>
</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myDIV" onclick="w3_open()">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Integration API</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">

				</ul>
				<ul class="nav navbar-nav navbar-right">

				</ul>
			</div>
		</div>
	</nav>
	<!-- This is the end of NavBar -->
			
	<div id="myDIV" class="sidemenu collapse navbar-collapse">
	
		<p class="Methods active" onclick="w3_open()">
			<a class="" href="#nameEnquiry">Name Enquiry</a>
		</p>
		<p class="Methods" onclick="w3_open()">
			<a href="#fundTransferDC">Fund Transfer (Direct Credit) </a>
		</p>
		<p class="Methods" onclick="w3_open()">
			<a href="#fundTransferDD">Fund Transfer (Direct Debit) </a>
		</p>
		<p class="Methods" onclick="w3_open()">
			<a href="#tsQUERY">Transaction Status Query</a>
		</p>
		<p class="Methods" onclick="w3_open()">
			<a href="#balanceEnquiry">Balance Enquiry</a>
		</p>
		<p class="Methods" onclick="w3_open()">
			<a href="#FundTransAdvDC" title="Fund Transfer Advice (DIRECT CREDIT">Fund
				Transfer Advice (DC) </a>
		</p>
		<p class="Methods" onclick="w3_open()">
			<a href="#FundTransAdvDD" title="Fund Transfer Advice (DIRECT DEBIT)">Fund
				Transfer Advice (DD) </a>
		</p>
		<p class="Methods" onclick="w3_open()">
			<a href="#amountBlock">Amount Block</a>
		</p>
		<p class="Methods" onclick="w3_open()">
			<a href="#amountUnblock">Amount Unblock</a>
		</p>
		<p class="Methods" onclick="w3_open()">
			<a href="#accountBlock">Account Block</a>
		</p>
		<p class="Methods" onclick="w3_open()">
			<a href="#accountUnblock">Account Unblock</a>
		</p>
		<p class="Methods" onclick="w3_open()">
			<a href="#finInstList">Financial Institution List</a>
		</p>
		<p class="Methods" onclick="w3_open()">
			<a href="#mandateAdvice">Mandate Advice</a>
		</p>
		<p class="Methods" onclick="w3_open()">
			<a href="#responseCode">Response Codes</a>
		</p>
		<p class="Methods" onclick="w3_open()">
			<a href="#reasonCode">Reason Codes</a>
		</p>
		<p class="Methods" onclick="w3_open()">
			<a href="#channelCode">Channel Codes</a>
		</p>
		<p class="Methods" onclick="w3_open()">
			<a href="#category">Category</a>
		</p>
	</div>

	<div class="container-fluid">
		<div class="main sidenav">
			<div class="row">
				<section id="nameEnquiry">
					<div class="col-sm-7 col-md-7  text-left">
						<h3 class="extraSpace">Name Enquiry Documentation</h3>
						<h4>Description</h4>
						<p>This method is used to fetch the corresponding account name
							to the account number supplied.</p>
						<p>
							Method URL:
							<code>https://slack.com/api/bots.info</code>
						</p>
						<hr>
						<h4>Argument</h4>
						<div class="table-responsive">
							<table class="table table-condensed table-striped">
								<tbody>
									<tr>
										<th>Argument</th>
										<th>Example</th>
										<th>Required</th>
										<th>Description</th>
									</tr>
									<tr>
										<td><code>SessionID</code></td>
										<td><code>000001100913103301000000000001</code></td>
										<td>Mandatory</td>
										<td><p>A unique number of 30 length, that identifies
												the transaction.</p></td>
									</tr>
									<tr>
										<td><code>DestinationInstitutionCode</code></td>
										<td><code>000002</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying destination Institution.</p></td>
									</tr>
									<tr>
										<td><code>ChannelCode</code></td>
										<td><code>1</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying the source channel of the
												transaction.</p></td>
									</tr>
									<tr>
										<td><code>AccountNumber</code></td>
										<td><code>2222000000012345</code></td>
										<td>Mandatory</td>
										<td><p>Customer's Account Number.</p></td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr>
						<h4>Response</h4>
						<pre>
&lsaquo;NESingleResponse&rsaquo;
	&lsaquo;SessionID&rsaquo;000001100913103301000000000001&lsaquo;/SessionID&rsaquo;
	&lsaquo;DestinationInstitutionCode>000002&lsaquo;/DestinationInstitutionCode&rsaquo;
	&lsaquo;ChannelCode&rsaquo;1&lsaquo;/ChannelCode&rsaquo;
	&lsaquo;AccountNumber&rsaquo;2222000000012345&lsaquo;/AccountNumber&rsaquo;
	&lsaquo;AccountName&rsaquo;Ajibade Oluwasegun&lsaquo;/AccountName&rsaquo;
	&lsaquo;BankVerificationNumber&rsaquo;1033000441&lsaquo;/BankVerificationNumber&rsaquo;
	&lsaquo;KYCLevel&rsaquo;1&lsaquo;/KYCLevel&rsaquo;
	&lsaquo;ResponseCode&rsaquo;00&lsaquo;/ResponseCode&rsaquo;
&lsaquo;/NESingleResponse&rsaquo;
					</pre>
					</div>

					<!-- /***************NameEnQuiry Form**********************/-->
					<div class="col-sm-5 col-md-5  sidenav">
						<div class="form-group">
							<h3 class="extraSpace">Name Enquiry Tester</h3>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<th>Argument</th>
											<th></th>
											<th>Value</th>
											<th></th>
										</tr>
										<tr>
											<td><code>SessionID</code></td>
											<td>Required</td>
											<td><input type="text" id="nameEnqSessionID" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DestinationinstitutionCode</code></td>
											<td>Required</td>
											<td><input type="text" id="nameEnqDestinationInstitutionCode" value=""
												class="form-control"></td>
											
										</tr>

										<tr>
											<td><code>Channel Code</code></td>
											<td>Required</td>
											<td><input type="text" id="nameEnqChannelCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>Account Number</code></td>
											<td>Required</td>
											<td><input type="text" id="nameEnqAccountNumber" value=""
												class="form-control"></td>
											
										</tr>

										<tr>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td><input type="submit" class="btn btn-success"
												value="Test Method" onclick="nameEnquiry();"></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="form-group">
								<label for="Response">Response:</label><br>
								<textarea class="form-control" rows="28" id="nameEnqComment" readonly></textarea>
							</div>
						</div>
					</div>
				</section>
			</div>
			<div class="row">
				<section id="fundTransferDC">
					<div class="col-sm-7 col-md-7  text-left">
						<h3 class="extraSpace">Fund Transfer (DIRECT CREDIT)
							Documentation</h3>
						<h4>Description</h4>
						<p>This method is used to move funds from a sender's account
							into the account of the beneficiary.</p>
						<p>
							Method URL:
							<code>https://nepune.com/api/fundtransferDC</code>
						</p>
						<hr>
						<h4>Argument</h4>
						<div class="table-responsive">
							<table class="table table-condensed table-striped">
								<tbody>
									<tr>
										<th>Argument</th>
										<th>Example</th>
										<th>Required</th>
										<th>Description</th>
									</tr>
									<tr>
										<td><code>SessionID</code></td>
										<td><code>
												00000110091310<br>3301000000000002
											</code></td>
										<td>Mandatory</td>
										<td><p>A unique number of 30 length, that identifies
												the transaction.</p></td>
									</tr>
									<tr>
										<td><code>NameEnquiryRef</code></td>
										<td><code>
												0000011009131<br>03301000000000001
											</code></td>
										<td>Optional</td>
										<td><p>Session ID of the name enquiry done prior to a
												fund transfer.</p></td>
									</tr>
									<tr>
										<td><code>DestinationInstitutionCode</code></td>
										<td><code>000002</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying destination Institution.</p></td>
									</tr>
									<tr>
										<td><code>ChannelCode</code></td>
										<td><code>1</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying the source channel of the
												transaction.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryAccountName</code></td>
										<td><code>Ajibade Oluwasegun</code></td>
										<td>Mandatory</td>
										<td><p>Beneficiary Account Name.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryAccountNumber</code></td>
										<td><code>2222002345</code></td>
										<td>Mandatory</td>
										<td><p>Beneficiary Account Number.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryBankVerificationNumber</code></td>
										<td><code>1033000442</code></td>
										<td>Mandatory</td>
										<td><p>Beneficiary Bank Verification Number.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryKYCLevel</code></td>
										<td><code>1</code></td>
										<td>Optional</td>
										<td><p>Know Your Customer Level of customer's account
												that is to receive credit.</p></td>
									</tr>
									<tr>
										<td><code>OriginatorAccountName</code></td>
										<td><code>Adewale Hassan</code></td>
										<td>Mandatory</td>
										<td><p>Originator's Customer Account Name.</p></td>
									</tr>
									<tr>
										<td><code>OriginatorAccountNumber</code></td>
										<td><code>3333002345</code></td>
										<td>Mandatory</td>
										<td><p>Originator's Customer Account Number.</p></td>
									</tr>
									<tr>
										<td><code>OriginatorBankVerificationNumber</code></td>
										<td><code>1033000441</code></td>
										<td>Mandatory</td>
										<td><p>Originator's Customer Bank Verification
												Number.</p></td>
									</tr>
									<tr>
										<td><code>OriginatorKYCLevel</code></td>
										<td><code>1</code></td>
										<td>Mandatory</td>
										<td><p>Originator's Know Your Customer Level.</p></td>
									</tr>
									<tr>
										<td><code>TransactionLocation</code></td>
										<td><code>6.4300747,3.4110715</code></td>
										<td>Optional</td>
										<td><p>GPS location of channel of transaction.</p></td>
									</tr>
									<tr>
										<td><code>Narration</code></td>
										<td><code>Transfer from me to you</code></td>
										<td>Optional</td>
										<td><p>Description of transaction.</p></td>
									</tr>
									<tr>
										<td><code>PaymentReference</code></td>
										<td><code>12345678901234</code></td>
										<td>Optional</td>
										<td><p>Reference of Payment.</p></td>
									</tr>
									<tr>
										<td><code>Amount</code></td>
										<td><code>1</code></td>
										<td>Mandatory</td>
										<td><p>Value of fund in naira .</p></td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr>
						<h4>Response</h4>
						<pre>
&lsaquo;FTSingleCreditResponse&rsaquo;
	&lsaquo;SessionID&rsaquo;000001100913103301000000000001&lsaquo;/SessionID&rsaquo;
	&lsaquo;NameEnquiryRef>000001100913103301000000000001&lsaquo;/NameEnquiryRef&rsaquo;
	&lsaquo;DestinationInstitutionCode>000002&lsaquo;/DestinationInstitutionCode&rsaquo;
	&lsaquo;ChannelCode&rsaquo;1&lsaquo;/ChannelCode&rsaquo;
	&lsaquo;BeneficiaryAccountName&rsaquo;Ajibade Oluwasegun&lsaquo;/BeneficiaryAccountName&rsaquo;
	&lsaquo;BeneficiaryAccountNumber&rsaquo;2222002345&lsaquo;/BeneficiaryAccountNumber&rsaquo;
	&lsaquo;BeneficiaryBankVerificationNumber&rsaquo;1033000442&lsaquo;/BeneficiaryBankVerificationNumber&rsaquo;
	&lsaquo;BeneficiaryKYCLevel&rsaquo;1&lsaquo;/BeneficiaryKYCLevel&rsaquo;
	&lsaquo;OriginatorAccountName&rsaquo;Adewale Hassan&lsaquo;/OriginatorAccountName&rsaquo;
	&lsaquo;OriginatorAccountNumber&rsaquo;3333002345&lsaquo;/OriginatorAccountNumber&rsaquo;
	&lsaquo;OriginatorBankVerificationNumber&rsaquo;1033000441&lsaquo;/OriginatorBankVerificationNumber&rsaquo;
	&lsaquo;OriginatorKYCLevel&rsaquo;1&lsaquo;/OriginatorKYCLevel&rsaquo;
	&lsaquo;TransactionLocation&rsaquo;6.4300747,3.4110715&lsaquo;/TransactionLocation&rsaquo;
	&lsaquo;Narration&rsaquo;Transfer from me to you&lsaquo;/Narration&rsaquo;
	&lsaquo;PaymentReference&rsaquo;12345678901234&lsaquo;/PaymentReference&rsaquo;
	&lsaquo;Amount&rsaquo;1000.00&lsaquo;/Amount&rsaquo;
	&lsaquo;ResponseCode&rsaquo;00&lsaquo;/ResponseCode&rsaquo;
&lsaquo;/FTSingleCreditResponse&rsaquo;
					</pre>

					</div>

					<!-- /*****************Fund Transfer Direct Credit********************/-->
					<div class="col-sm-5 col-md-5  sidenav">
						<div class="form-group">
							<h3 class="extraSpace">Fund Transfer (DIRECT CREDIT) Tester</h3>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<th>Argument</th>
											<th></th>
											<th>Value</th>
										</tr>
										<tr>
											<td><code>SessionID</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDCSessionID"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>NameEnquiryRef</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDCNameEnquiryRef" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DestinationinstitutionCode</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDCDesInsCode" value=""
												class="form-control"></td>
											
										</tr>

										<tr>
											<td><code>ChannelCode</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDCChannelCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryAccountName</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDCBenAccountName" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryAccountNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDCBenAccountNumber" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryBVN</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDCBeneficiaryBVN" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryKYCLevel</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDCBenKYCLevel" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>OriginatorAccountName</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDCOriAcctName" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>OriginatorAccountNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDCOriAcctNumber" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>OriginatorBVN</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDCOriBVN" value=""
												class="form-control"></td>
											
										</tr>

										<tr>
											<td><code>OriginatorKYCLevel</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDCOriKYCLevel" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TransactionLocation</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDCTranLoc" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>Narration</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDCNar" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>PaymentReference</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDCPmtRef" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>Amount</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDCAmt" value="" 
												class="form-control"></td>
											
										</tr>

										<tr>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
												
												<td><input type="button" class="btn btn-success" value="Test Method"
											onclick="fundTransferDC();"></td>
											
										</tr>
									</tbody>
								</table>
							</div>
							<div class="form-group">
								<label for="Response">Response:</label><br>
								<textarea class="form-control" rows="28" id="fundTransferDCcomment" readonly></textarea>
							</div>
						</div>
					</div>
				</section>
			</div>

			<div class="row">
				<section id="fundTransferDD">
					<div class="col-sm-7 col-md-7  text-left">
						<h3 class="extraSpace">Fund Transfer (DIRECT DEBIT)
							Documentation</h3>
						<h4>Description</h4>
						<p>This method is used by the bank to forward a direct debit
							payment instruction to recover payments based on prearranged
							debit mandate.</p>
						<p>
							Method URL:
							<code>https://nepune.com/api/fundtransferDD</code>
						</p>
						<hr>
						<h4>Argument</h4>
						<div class="table-responsive">
							<table class="table table-condensed table-striped">
								<tbody>
									<tr>
										<th>Argument</th>
										<th>Example</th>
										<th>Required</th>
										<th>Description</th>
									</tr>
									<tr>
										<td><code>SessionID</code></td>
										<td><code>
												00000110091310<br>3301000000000002
											</code></td>
										<td>Mandatory</td>
										<td><p>A unique number of 30 length, that identifies
												the transaction.</p></td>
									</tr>
									<tr>
										<td><code>NameEnquiryRef</code></td>
										<td><code>
												0000011009131<br>03301000000000001
											</code></td>
										<td>Optional</td>
										<td><p>Session ID of the name enquiry done prior to a
												fund transfer.</p></td>
									</tr>
									<tr>
										<td><code>DestinationInstitutionCode</code></td>
										<td><code>000002</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying destination Institution.</p></td>
									</tr>
									<tr>
										<td><code>ChannelCode</code></td>
										<td><code>1</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying the source channel of the
												transaction.</p></td>
									</tr>
									<tr>
										<td><code>DebitAccountName</code></td>
										<td><code>Ajibade Oluwasegun</code></td>
										<td>Mandatory</td>
										<td><p>Account Name of Customer to receive debit.</p></td>
									</tr>
									<tr>
										<td><code>DebitAccountNumber</code></td>
										<td><code>2222000000012345</code></td>
										<td>Mandatory</td>
										<td><p>Account Number of Customer to receive debit.</p></td>
									</tr>
									<tr>
										<td><code>DebitBankVerificationNumber</code></td>
										<td><code>1033000442</code></td>
										<td>Mandatory</td>
										<td><p>Bank Verification Number of Customer to
												receive debit.</p></td>
									</tr>
									<tr>
										<td><code>DebitKYCLevel</code></td>
										<td><code>1</code></td>
										<td>Mandatory</td>
										<td><p>Know Your Customer Level of Customer to
												receive debit.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryAccountName</code></td>
										<td><code>Sarah Hassan Emeka</code></td>
										<td>Mandatory</td>
										<td><p>Beneficiary Account Name.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryAccountNumber</code></td>
										<td><code>2222002345</code></td>
										<td>Mandatory</td>
										<td><p>Beneficiary Account Number.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryBankVerificationNumber</code></td>
										<td><code>1033000442</code></td>
										<td>Mandatory</td>
										<td><p>Beneficiary Bank Verification Number.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryKYCLevel</code></td>
										<td><code>1</code></td>
										<td>Optional</td>
										<td><p>Know Your Customer Level of customer's account
												that is to receive credit.</p></td>
									</tr>
									<tr>
										<td><code>TransactionLocation</code></td>
										<td><code>6.4300747,3.4110715</code></td>
										<td>Optional</td>
										<td><p>GPS location of channel of transaction.</p></td>
									</tr>
									<tr>
										<td><code>Narration</code></td>
										<td><code>Transfer from me to you</code></td>
										<td>Optional</td>
										<td><p>Description of transaction.</p></td>
									</tr>
									<tr>
										<td><code>PaymentReference</code></td>
										<td><code>12345678901234</code></td>
										<td>Optional</td>
										<td><p>Reference of Payment.</p></td>
									</tr>
									<tr>
										<td><code>MandateReferenceNumber</code></td>
										<td><code>xxxxxxxxxxxxxxxxxxx</code></td>
										<td>Mandatory</td>
										<td><p>Reference Number authorizing debit to be
												passed into customer's account.</p></td>
									</tr>
									<tr>
										<td><code>TransactionFee</code></td>
										<td><code>0.00</code></td>
										<td>Mandatory</td>
										<td><p>Fee charged for transaction.</p></td>
									</tr>
									<tr>
										<td><code>Amount</code></td>
										<td><code>1</code></td>
										<td>Mandatory</td>
										<td><p>Value of fund in naira.</p></td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr>
						<h4>Response</h4>
						<pre>
&lsaquo;FTSingleDebitResponse&rsaquo;
	&lsaquo;SessionID&rsaquo;000001100913103301000000000001&lsaquo;/SessionID&rsaquo;
	&lsaquo;NameEnquiryRef>000001100913103301000000000001&lsaquo;/NameEnquiryRef&rsaquo;
	&lsaquo;DestinationInstitutionCode>000002&lsaquo;/DestinationInstitutionCode&rsaquo;
	&lsaquo;ChannelCode&rsaquo;1&lsaquo;/ChannelCode&rsaquo;
	&lsaquo;DebitAccountName&rsaquo;Ajibade Oluwasegun&lsaquo;/OriginatorAccountName&rsaquo;
	&lsaquo;DebitAccountNumber&rsaquo;2222000000012345&lsaquo;/OriginatorAccountNumber&rsaquo;
	&lsaquo;DebitBankVerificationNumber&rsaquo;1033000442&lsaquo;/OriginatorBankVerificationNumber&rsaquo;
	&lsaquo;DebitKYCLevel&rsaquo;1&lsaquo;/OriginatorKYCLevel&rsaquo;
	&lsaquo;BeneficiaryAccountName&rsaquo;Sarah Hassan Emeka&lsaquo;/BeneficiaryAccountName&rsaquo;
	&lsaquo;BeneficiaryAccountNumber&rsaquo;2222002345&lsaquo;/BeneficiaryAccountNumber&rsaquo;
	&lsaquo;BeneficiaryBankVerificationNumber&rsaquo;1033000442&lsaquo;/BeneficiaryBankVerificationNumber&rsaquo;
	&lsaquo;BeneficiaryKYCLevel&rsaquo;1&lsaquo;/BeneficiaryKYCLevel&rsaquo;
	&lsaquo;TransactionLocation&rsaquo;6.4300747,3.4110715&lsaquo;/TransactionLocation&rsaquo;
	&lsaquo;Narration&rsaquo;1000000001&lsaquo;/Narration&rsaquo;
	&lsaquo;PaymentReference&rsaquo;12345678901234&lsaquo;/PaymentReference&rsaquo;
	&lsaquo;MandateReferenceNumber&rsaquo;12345678901234&lsaquo;/MandateReferenceNumber&rsaquo;
	&lsaquo;TransactionFee&rsaquo;1000000001&lsaquo;/TransactionFee&rsaquo;
	&lsaquo;Amount&rsaquo;1000.00&lsaquo;/Amount&rsaquo;
	&lsaquo;ResponseCode&rsaquo;00&lsaquo;/ResponseCode&rsaquo;
&lsaquo;/FTSingleDebitResponse&rsaquo;
					</pre>

					</div>

					<!-- /*************Fund Transfer Direct Debit************************/-->
					<div class="col-sm-5 col-md-5  sidenav">
						<div class="form-group">
							<h3 class="extraSpace">Fund Transfer (DIRECT DEBIT) Tester</h3>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<th>Argument</th>
											<th></th>
											<th>Value</th>
										</tr>
										<tr>
											<td><code>SessionID</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDDSessionID"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>NameEnquiryRef</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDDNameEnquiryRef" value=""
												class="form-control"></td>
											
										</tr>

										<tr>
											<td><code>DestinationInstitutionCode</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDDDesInsCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>ChannelCode</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDDChannelCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryAccountName</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDDBeneAcctNm" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryAccountNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDDBeneAcctNumb" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryBVN</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDDBeneBVN" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryKYCLevel</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDDBeneKYCLvl" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>OriginatorAccountName</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDDOrigAcctNm" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>OriginatorAccountNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDDOrigAcctNumb" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>OriginatorBVN</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDDOrigBVN" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>OriginatorKYCLevel</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDDOrigKYCLvl" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TransactionLocation</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDDTranLoc" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>Narration</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDDNar" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>PaymentReference</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDDPmtRef" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>Amount</code></td>
											<td>Required</td>
											<td><input type="text" id="fundTransferDDAmt" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td><input type="submit" class="btn btn-success" onclick="fundTransferDD();"
												value="Test Method"></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="form-group">
								<label for="Response">Response:</label><br>
								<textarea class="form-control" rows="28" id="fundTransferDDcomment" readonly></textarea>
							</div>
						</div>
					</div>
				</section>
			</div>

			<div class="row">
				<section id="tsQUERY">
					<div class="col-sm-7 col-md-7  text-left">
						<h3 class="extraSpace">Transaction Status Query Documentation</h3>
						<h4>Description</h4>
						<p>This method is used by the bank to query the status of a
							transaction sent earlier.</p>
						<p>
							Method URL:
							<code>https://nepune.com/api/tsQuery</code>
						</p>
						<hr>
						<h4>Argument</h4>
						<div class="table-responsive">
							<table class="table table-condensed table-striped">
								<tbody>
									<tr>
										<th>Argument</th>
										<th>Example</th>
										<th>Required</th>
										<th>Description</th>
									</tr>
									<tr>
										<td><code>SourceInstitutionCode</code></td>
										<td><code>000002</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying source Institution.</p></td>
									</tr>
									<tr>
										<td><code>ChannelCode</code></td>
										<td><code>1</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying the source channel of the
												transaction.</p></td>
									</tr>
									<tr>
										<td><code>SessionID</code></td>
										<td><code>
												00000110091310<br>3301000000000001
											</code></td>
										<td>Mandatory</td>
										<td><p>A unique number of 30 length, that identifies
												the transaction.</p></td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr>
						<h4>Response</h4>
						<pre>
&lsaquo;TSQuerySingleResponse&rsaquo;
	&lsaquo;SourceInstitutionCode>000002&lsaquo;/SourceInstitutionCode&rsaquo;
	&lsaquo;ChannelCode&rsaquo;1&lsaquo;/ChannelCode&rsaquo;
	&lsaquo;SessionID&rsaquo;000001100913103301000000000001&lsaquo;/SessionID&rsaquo;
	&lsaquo;ResponseCode&rsaquo;00&lsaquo;/ResponseCode&rsaquo;
&lsaquo;/TSQuerySingleResponse&rsaquo;
					</pre>

					</div>

					<!-- /******************Transaction Status Query*******************/-->
					<div class="col-sm-5 col-md-5  sidenav">

						<div class="form-group">
							<h3 class="extraSpace">Transaction Status Query Tester</h3>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<th>Argument</th>
											<th></th>
											<th>Value</th>
										</tr>
										<tr>
											<td><code>SourceInstitutionCode</code></td>
											<td>Required</td>
											<td><input type="text" id="transactionStatusScrInsCode"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>ChannelCode</code></td>
											<td>Required</td>
											<td><input type="text" id="transactionStatusChannelCode" value=""
												class="form-control"></td>
											
										</tr>

										<tr>
											<td><code>SessionID</code></td>
											<td>Required</td>
											<td><input type="text" id="transactionStatusSessionID" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td><input type="transactionStatussubmit" class="btn btn-success" onclick="transactionStatus();"
												value="Test Method"></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="form-group">
								<label for="Response">Response:</label><br>
								<textarea class="form-control" rows="28" id="transactionStatuscomment" readonly></textarea>
							</div>
						</div>
					</div>
				</section>
			</div>

			<div class="row">
				<section id="balanceEnquiry">
					<div class="col-sm-7 col-md-7  text-left">

						<h3 class="extraSpace">Balance Enquiry Documentation</h3>
						<h4>Description</h4>
						<p>This method is used to get balance on an account.</p>
						<p>
							Method URL:
							<code>https://nepune.com/api/balenquiry</code>
						</p>
						<hr>
						<h4>Argument</h4>
						<div class="table-responsive">
							<table class="table table-condensed table-striped">
								<tbody>
									<tr>
										<th>Argument</th>
										<th>Example</th>
										<th>Required</th>
										<th>Description</th>
									</tr>
									<tr>
										<td><code>SessionID</code></td>
										<td><code>
												00000110091310<br>3301000000000001
											</code></td>
										<td>Mandatory</td>
										<td><p>A unique number of 30 length, that identifies
												the transaction.</p></td>
									</tr>
									<tr>
										<td><code>DestinationInstitutionCode</code></td>
										<td><code>000002</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying destination Institution.</p></td>
									</tr>
									<tr>
										<td><code>ChannelCode</code></td>
										<td><code>7</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying the source channel of the
												transaction.</p></td>
									</tr>
									<tr>
										<td><code>AuthorizationCode</code></td>
										<td><code>xxxxxxxxxxxxxxx</code></td>
										<td>Mandatory</td>
										<td><p>Code used to authorize balance enquiry
												transaction.</p></td>
									</tr>
									<tr>
										<td><code>TargetAccountName</code></td>
										<td><code>Ajibade Oluwasegun</code></td>
										<td>Mandatory</td>
										<td><p>Customer's Account Name.</p></td>
									</tr>
									<tr>
										<td><code>TargetBankVerificationNumber</code></td>
										<td><code>1033000442</code></td>
										<td>Mandatory</td>
										<td><p>Customer's Bank Verification Number.</p></td>
									</tr>
									<tr>
										<td><code>TargetAccountNumber</code></td>
										<td><code>2222002345</code></td>
										<td>Mandatory</td>
										<td><p>Customer's Account Number.</p></td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr>
						<h4>Response</h4>
						<pre>
&lsaquo;BalanceEnquiryResponse&rsaquo;
	&lsaquo;SessionID&rsaquo;000001100913103301000000000001&lsaquo;/SessionID&rsaquo;
	&lsaquo;DestinationInstitutionCode>000002&lsaquo;/DestinationInstitutionCode&rsaquo;
	&lsaquo;ChannelCode&rsaquo;1&lsaquo;/ChannelCode&rsaquo;
	&lsaquo;AuthorizationCode&rsaquo;xxxxxxxxxxxxxxx&lsaquo;/AuthorizationCode&rsaquo;
	&lsaquo;TargetAccountName&rsaquo;Ajibade Oluwasegun&lsaquo;/TargetAccountName&rsaquo;
	&lsaquo;TargetBankVerificationNumber&rsaquo;1033000442&lsaquo;/TargetBankVerificationNumber&rsaquo;
	&lsaquo;TargetAccountNumber&rsaquo;2222002345&lsaquo;/TargetAccountNumber&rsaquo;
	&lsaquo;AvailableBalance&rsaquo;1000.00&lsaquo;/AvailableBalance&rsaquo;
	&lsaquo;ResponseCode&rsaquo;00&lsaquo;/ResponseCode&rsaquo;
&lsaquo;/BalanceEnquiryResponse&rsaquo;
					</pre>

					</div>

					<!-- /******************Balance Enquiry*******************/-->
					<div class="col-sm-5 col-md-5  sidenav">
						<div class="form-group">
							<h3 class="extraSpace">Balance Enquiry Tester</h3>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<th>Argument</th>
											<th></th>
											<th>Value</th>
										</tr>
										<tr>
											<td><code>SessionID</code></td>
											<td>Required</td>
											<td><input type="text" id="balEnqSessionID"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DestinationinstitutionCode</code></td>
											<td>Required</td>
											<td><input type="text" id="balEnqDesInsCode" value=""
												class="form-control"></td>
											
										</tr>

										<tr>
											<td><code>Channel Code</code></td>
											<td>Required</td>
											<td><input type="text" id="balEnqChannelCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>AuthorizationCode</code></td>
											<td>Required</td>
											<td><input type="text" id="balEnqAuthCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TargetAccountName</code></td>
											<td>Required</td>
											<td><input type="text" id="balEnqTgtAcctNm" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TargetBVN</code></td>
											<td>Required</td>
											<td><input type="text" id="balEnqTgtBVN" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TargetAccountNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="balEnqTgtAcctNumb" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td><input type="balEnqsubmit" class="btn btn-success" onclick="balanceEnquiry();"
												value="Test Method"></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="form-group">
								<label for="Response">Response:</label><br>
								<textarea class="form-control" rows="28" id="balEnqcomment" readonly></textarea>
							</div>
						</div>
					</div>
				</section>
			</div>

			<div class="row">
				<section id="FundTransAdvDC">
					<div class="col-sm-7 col-md-7  text-left">

						<h3 class="extraSpace">Fund Transfer advice (DIRECT DEBIT)
							Documentation</h3>
						<h4>Description</h4>
						<p>This method is used to inform the beneficiary bank, after
							timeout waiting for response, that the earlier instruction has
							been cancelled as a result of the delay in response. This is
							applicable to Direct Credit</p>
						<p>
							Method URL:
							<code>https://nepune.com/api/fundtransferAdvDC</code>
						</p>
						<hr>
						<h4>Argument</h4>
						<div class="table-responsive">
							<table class="table table-condensed table-striped">
								<tbody>
									<tr>
										<th>Argument</th>
										<th>Example</th>
										<th>Required</th>
										<th>Description</th>
									</tr>
									<tr>
										<td><code>SessionID</code></td>
										<td><code>
												00000110091310<br>3301000000000002
											</code></td>
										<td>Mandatory</td>
										<td><p>A unique number of 30 length, that identifies
												the transaction.</p></td>
									</tr>
									<tr>
										<td><code>NameEnquiryRef</code></td>
										<td><code>
												0000011009131<br>03301000000000001
											</code></td>
										<td>Optional</td>
										<td><p>Session ID of the name enquiry done prior to a
												fund transfer.</p></td>
									</tr>
									<tr>
										<td><code>DestinationInstitutionCode</code></td>
										<td><code>000002</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying destination Institution.</p></td>
									</tr>
									<tr>
										<td><code>ChannelCode</code></td>
										<td><code>1</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying the source channel of the
												transaction.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryAccountName</code></td>
										<td><code>Ajibade Oluwasegun</code></td>
										<td>Mandatory</td>
										<td><p>Beneficiary Account Name.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryAccountNumber</code></td>
										<td><code>2222002345</code></td>
										<td>Mandatory</td>
										<td><p>Beneficiary Account Number.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryBankVerificationNumber</code></td>
										<td><code>1033000442</code></td>
										<td>Mandatory</td>
										<td><p>Beneficiary Bank Verification Number.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryKYCLevel</code></td>
										<td><code>1</code></td>
										<td>Optional</td>
										<td><p>Know Your Customer Level of customer's account
												that is to receive credit.</p></td>
									</tr>
									<tr>
										<td><code>OriginatorAccountName</code></td>
										<td><code>Adewale Hassan</code></td>
										<td>Mandatory</td>
										<td><p>Originator's Customer Account Name.</p></td>
									</tr>
									<tr>
										<td><code>OriginatorAccountNumber</code></td>
										<td><code>3333002345</code></td>
										<td>Mandatory</td>
										<td><p>Originator's Customer Account Number.</p></td>
									</tr>
									<tr>
										<td><code>OriginatorBankVerificationNumber</code></td>
										<td><code>1033000441</code></td>
										<td>Mandatory</td>
										<td><p>Originator's Customer Bank Verification
												Number.</p></td>
									</tr>
									<tr>
										<td><code>OriginatorKYCLevel</code></td>
										<td><code>1</code></td>
										<td>Mandatory</td>
										<td><p>Originator's Know Your Customer Level.</p></td>
									</tr>
									<tr>
										<td><code>TransactionLocation</code></td>
										<td><code>6.4300747,3.4110715</code></td>
										<td>Optional</td>
										<td><p>GPS location of channel of transaction.</p></td>
									</tr>
									<tr>
										<td><code>Narration</code></td>
										<td><code>Transfer from me to you</code></td>
										<td>Optional</td>
										<td><p>Description of transaction.</p></td>
									</tr>
									<tr>
										<td><code>PaymentReference</code></td>
										<td><code>12345678901234</code></td>
										<td>Optional</td>
										<td><p>Reference of Payment.</p></td>
									</tr>
									<tr>
										<td><code>Amount</code></td>
										<td><code>1</code></td>
										<td>Mandatory</td>
										<td><p>Value of fund in naira .</p></td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr>
						<h4>Response</h4>
						<pre>
&lsaquo;FTAdviceCreditRequest&rsaquo;
	&lsaquo;SessionID&rsaquo;000001100913103301000000000001&lsaquo;/SessionID&rsaquo;
	&lsaquo;NameEnquiryRef>000001100913103301000000000001&lsaquo;/NameEnquiryRef&rsaquo;
	&lsaquo;DestinationInstitutionCode>000002&lsaquo;/DestinationInstitutionCode&rsaquo;
	&lsaquo;ChannelCode&rsaquo;1&lsaquo;/ChannelCode&rsaquo;
	&lsaquo;BeneficiaryAccountName&rsaquo;Ajibade Oluwasegun&lsaquo;/BeneficiaryAccountName&rsaquo;
	&lsaquo;BeneficiaryAccountNumber&rsaquo;2222002345&lsaquo;/BeneficiaryAccountNumber&rsaquo;
	&lsaquo;BeneficiaryBankVerificationNumber&rsaquo;1033000442&lsaquo;/BeneficiaryBankVerificationNumber&rsaquo;
	&lsaquo;BeneficiaryKYCLevel&rsaquo;1&lsaquo;/BeneficiaryKYCLevel&rsaquo;
	&lsaquo;OriginatorAccountName&rsaquo;Adewale Hassan&lsaquo;/OriginatorAccountName&rsaquo;
	&lsaquo;OriginatorAccountNumber&rsaquo;3333002345&lsaquo;/OriginatorAccountNumber&rsaquo;
	&lsaquo;OriginatorBankVerificationNumber&rsaquo;1033000441&lsaquo;/OriginatorBankVerificationNumber&rsaquo;
	&lsaquo;OriginatorKYCLevel&rsaquo;1&lsaquo;/OriginatorKYCLevel&rsaquo;
	&lsaquo;TransactionLocation&rsaquo;6.4300747,3.4110715&lsaquo;/TransactionLocation&rsaquo;
	&lsaquo;Narration&rsaquo;Transfer from me to you&lsaquo;/Narration&rsaquo;
	&lsaquo;PaymentReference&rsaquo;12345678901234&lsaquo;/PaymentReference&rsaquo;
	&lsaquo;Amount&rsaquo;1000.00&lsaquo;/Amount&rsaquo;
	&lsaquo;ResponseCode&rsaquo;00&lsaquo;/ResponseCode&rsaquo;
&lsaquo;/FTAdviceCreditRequest&rsaquo;
					</pre>

					</div>

					<!-- /*****************Fund Transfer Advice (Direct Credit)********************/-->
					<div class="col-sm-5 col-md-5  sidenav">
						<div class="form-group">
							<h3 class="extraSpace">Fund Transfer advice (DIRECT CREDIT)
								Tester</h3>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<th>Argument</th>
											<th></th>
											<th>Value</th>
										</tr>
										<tr>
											<td><code>SessionID</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_dcSessionId"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>NameEnquiryRef</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_dcnameEnquiryRef"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DestinationinstitutionCode</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_dcDesInsCode" value=""
												class="form-control"></td>
											
										</tr>

										<tr>
											<td><code>ChannelCode</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_dcChannelCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryAccountName</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_dcBenAcctNm" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryAccountNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_dcBenAcctNumber" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryBVN</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_dcBenBVN" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryKYCLevel</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_dcBenKYC" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>OriginatorAccountName</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_dcOriAcctNm" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>OriginatorAccountNUmber</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_dcOriAcctNumb" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>OriginatorBVN</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_dcOriBVN" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>OriginatorKYCLevel</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_dcOriKYC" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TransactionLocation</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_dcTransLoc" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>Narration</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_dcNar" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>PaymentReference</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_dcPayRef" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>Amount</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_dcAmt" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td><input type="submit" class="btn btn-success" onclick="fundtransferAdvice_dc();"
												value="Test Method"></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="form-group">
								<label for="Response">Response:</label><br>
								<textarea class="form-control" rows="28" id="fundtransferAdvice_dccomment" readonly></textarea>
							</div>
						</div>
					</div>
				</section>
			</div>

			<div class="row">
				<section id="FundTransAdvDD">
					<div class="col-sm-7 col-md-7  text-left">
						<h3 class="extraSpace">Fund Transfer advice (DIRECT DEBIT)
							Documentation</h3>
						<h4>Description</h4>
						<p>This method is used to inform the beneficiary bank, after
							timeout waiting for response, that the earlier instruction has
							been cancelled as a result of the delay in response. This is
							applicable to Direct Debit.</p>
						<p>
							Method URL:
							<code>https://nepune.com/api/fundtransferAdvDD</code>
						</p>
						<hr>
						<h4>Argument</h4>
						<div class="table-responsive">
							<table class="table table-condensed table-striped">
								<tbody>
									<tr>
										<th>Argument</th>
										<th>Example</th>
										<th>Required</th>
										<th>Description</th>
									</tr>
									<tr>
										<td><code>SessionID</code></td>
										<td><code>
												00000110091310<br>3301000000000002
											</code></td>
										<td>Mandatory</td>
										<td><p>A unique number of 30 length, that identifies
												the transaction.</p></td>
									</tr>
									<tr>
										<td><code>NameEnquiryRef</code></td>
										<td><code>
												0000011009131<br>03301000000000001
											</code></td>
										<td>Optional</td>
										<td><p>Session ID of the name enquiry done prior to a
												fund transfer.</p></td>
									</tr>
									<tr>
										<td><code>DestinationInstitutionCode</code></td>
										<td><code>000002</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying destination Institution.</p></td>
									</tr>
									<tr>
										<td><code>ChannelCode</code></td>
										<td><code>1</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying the source channel of the
												transaction.</p></td>
									</tr>
									<tr>
										<td><code>DebitAccountName</code></td>
										<td><code>Ajibade Oluwasegun</code></td>
										<td>Mandatory</td>
										<td><p>Account Name of Customer to receive debit.</p></td>
									</tr>
									<tr>
										<td><code>DebitAccountNumber</code></td>
										<td><code>2222000000012345</code></td>
										<td>Mandatory</td>
										<td><p>Account Number of Customer to receive debit.</p></td>
									</tr>
									<tr>
										<td><code>DebitBankVerificationNumber</code></td>
										<td><code>1033000442</code></td>
										<td>Mandatory</td>
										<td><p>Bank Verification Number of Customer to
												receive debit.</p></td>
									</tr>
									<tr>
										<td><code>DebitKYCLevel</code></td>
										<td><code>1</code></td>
										<td>Mandatory</td>
										<td><p>Know Your Customer Level of Customer to
												receive debit.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryAccountName</code></td>
										<td><code>Sarah Hassan Emeka</code></td>
										<td>Mandatory</td>
										<td><p>Beneficiary Account Name.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryAccountNumber</code></td>
										<td><code>2222002345</code></td>
										<td>Mandatory</td>
										<td><p>Beneficiary Account Number.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryBankVerificationNumber</code></td>
										<td><code>1033000442</code></td>
										<td>Mandatory</td>
										<td><p>Beneficiary Bank Verification Number.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryKYCLevel</code></td>
										<td><code>1</code></td>
										<td>Optional</td>
										<td><p>Know Your Customer Level of customer's account
												that is to receive credit.</p></td>
									</tr>
									<tr>
										<td><code>TransactionLocation</code></td>
										<td><code>6.4300747,3.4110715</code></td>
										<td>Optional</td>
										<td><p>GPS location of channel of transaction.</p></td>
									</tr>
									<tr>
										<td><code>Narration</code></td>
										<td><code>Transfer from me to you</code></td>
										<td>Optional</td>
										<td><p>Description of transaction.</p></td>
									</tr>
									<tr>
										<td><code>PaymentReference</code></td>
										<td><code>12345678901234</code></td>
										<td>Optional</td>
										<td><p>Reference of Payment.</p></td>
									</tr>
									<tr>
										<td><code>MandateReferenceNumber</code></td>
										<td><code>xxxxxxxxxxxxxxxxxxx</code></td>
										<td>Mandatory</td>
										<td><p>Reference Number authorizing debit to be
												passed into customer's account.</p></td>
									</tr>
									<tr>
										<td><code>TransactionFee</code></td>
										<td><code>0.00</code></td>
										<td>Mandatory</td>
										<td><p>Fee charged for transaction.</p></td>
									</tr>
									<tr>
										<td><code>Amount</code></td>
										<td><code>1000.00</code></td>
										<td>Mandatory</td>
										<td><p>Value of fund in naira.</p></td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr>
						<h4>Response</h4>
						<pre>
&lsaquo;FTAdviceDebitRequest&rsaquo;
	&lsaquo;SessionID&rsaquo;000001100913103301000000000001&lsaquo;/SessionID&rsaquo;
	&lsaquo;NameEnquiryRef>000001100913103301000000000001&lsaquo;/NameEnquiryRef&rsaquo;
	&lsaquo;DestinationInstitutionCode>000002&lsaquo;/DestinationInstitutionCode&rsaquo;
	&lsaquo;ChannelCode&rsaquo;1&lsaquo;/ChannelCode&rsaquo;
	&lsaquo;DebitAccountName&rsaquo;Ajibade Oluwasegun&lsaquo;/OriginatorAccountName&rsaquo;
	&lsaquo;DebitAccountNumber&rsaquo;2222000000012345&lsaquo;/OriginatorAccountNumber&rsaquo;
	&lsaquo;DebitBankVerificationNumber&rsaquo;1033000442&lsaquo;/OriginatorBankVerificationNumber&rsaquo;
	&lsaquo;DebitKYCLevel&rsaquo;1&lsaquo;/OriginatorKYCLevel&rsaquo;
	&lsaquo;BeneficiaryAccountName&rsaquo;Sarah Hassan Emeka&lsaquo;/BeneficiaryAccountName&rsaquo;
	&lsaquo;BeneficiaryAccountNumber&rsaquo;2222002345&lsaquo;/BeneficiaryAccountNumber&rsaquo;
	&lsaquo;BeneficiaryBankVerificationNumber&rsaquo;1033000442&lsaquo;/BeneficiaryBankVerificationNumber&rsaquo;
	&lsaquo;BeneficiaryKYCLevel&rsaquo;1&lsaquo;/BeneficiaryKYCLevel&rsaquo;
	&lsaquo;TransactionLocation&rsaquo;6.4300747,3.4110715&lsaquo;/TransactionLocation&rsaquo;
	&lsaquo;Narration&rsaquo;1000000001&lsaquo;/Narration&rsaquo;
	&lsaquo;PaymentReference&rsaquo;12345678901234&lsaquo;/PaymentReference&rsaquo;
	&lsaquo;MandateReferenceNumber&rsaquo;12345678901234&lsaquo;/MandateReferenceNumber&rsaquo;
	&lsaquo;TransactionFee&rsaquo;1000000001&lsaquo;/TransactionFee&rsaquo;
	&lsaquo;Amount&rsaquo;1000.00&lsaquo;/Amount&rsaquo;
	&lsaquo;ResponseCode&rsaquo;00&lsaquo;/ResponseCode&rsaquo;
&lsaquo;/FTAdviceDebitRequest&rsaquo;
					</pre>

					</div>

					<!-- /*****************Fund Transfer Advice (Direct Debit)********************/-->
					<div class="col-sm-5 col-md-5  sidenav">
						<div class="form-group">
							<h3 class="extraSpace">Fund Transfer advice (DIRECT DEBIT)
								Tester</h3>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<th>Argument</th>
											<th></th>
											<th>Value</th>
										</tr>
										<tr>
											<td><code>SessionID</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddSessionId"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>NameEnquiryRef</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddnameEnquiryRef"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DestinationinstitutionCode</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddDesInsCode" value=""
												class="form-control"></td>
											
										</tr>

										<tr>
											<td><code>ChannelCode</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddChannelCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DebitAccountName</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddDbtAcctNm" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DebitAccountNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddDbtAcctNumber" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DebitBVN</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddDbtBVN" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DebitKYCLevel</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddDbtKYC" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryAccountName</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddBenAcctNm" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryAccountNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddBenAcctNumber" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryBVN</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddBenBVN" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryKYCLevel</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddBenKYC" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TransactionLocation</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddTransLoc" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>Narration</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddNarration" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>PaymentReference</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddPmtRef" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>mandateReferenceNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddManRefNum" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TransactionFee</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddTransLoc" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>Amount</code></td>
											<td>Required</td>
											<td><input type="text" id="fundtransferAdvice_ddAmt" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td><input type="submit" class="btn btn-success" onclick="fundtransferAdvice_dd();"
												value="Test Method"></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="form-group">
								<label for="Response">Response:</label><br>
								<textarea class="form-control" rows="28" id="fundtransferAdvice_ddcomment" readonly></textarea>
							</div>
						</div>
					</div>
				</section>
			</div>

			<div class="row">
				<section id="amountBlock">
					<div class="col-sm-7 col-md-7  text-left">
						<h3 class="extraSpace">Amount Block Documentation</h3>
						<h4>Description</h4>
						<p>This method is used to block/lien specified amount in an
							account.</p>
						<p>
							Method URL:
							<code>https://nepune.com/api/amountblock</code>
						</p>
						<hr>
						<h4>Argument</h4>
						<div class="table-responsive">
							<table class="table table-condensed table-striped">
								<tbody>
									<tr>
										<th>Argument</th>
										<th>Example</th>
										<th>Required</th>
										<th>Description</th>
									</tr>
									<tr>
										<td><code>SessionID</code></td>
										<td><code>
												00000110091310<br>3301000000000001
											</code></td>
										<td>Mandatory</td>
										<td><p>A unique number of 30 length, that identifies
												the transaction.</p></td>
									</tr>
									<tr>
										<td><code>DestinationInstitutionCode</code></td>
										<td><code>000002</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying destination Institution.</p></td>
									</tr>
									<tr>
										<td><code>ChannelCode</code></td>
										<td><code>7</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying the source channel of the
												transaction.</p></td>
									</tr>
									<tr>
										<td><code>ReferenceCode</code></td>
										<td><code>xxxxxxxxxxxxxxx</code></td>
										<td>Mandatory</td>
										<td><p>Code generated by the response of amount block
												method.</p></td>
									</tr>
									<tr>
										<td><code>TargetAccountName</code></td>
										<td><code>Ajibade Oluwasegun</code></td>
										<td>Mandatory</td>
										<td><p>Customer's Account Name.</p></td>
									</tr>
									<tr>
										<td><code>TargetBankVerificationNumber</code></td>
										<td><code>1033000442</code></td>
										<td>Mandatory</td>
										<td><p>Customer's Bank Verification Number.</p></td>
									</tr>
									<tr>
										<td><code>TargetAccountNumber</code></td>
										<td><code>2222002345</code></td>
										<td>Mandatory</td>
										<td><p>Customer's Account Number.</p></td>
									</tr>
									<tr>
										<td><code>ReasonCode</code></td>
										<td><code>0001</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying the reason for blocking
												amount.</p></td>
									</tr>
									<tr>
										<td><code>Narration</code></td>
										<td><code>Transfer from me to you</code></td>
										<td>Optional</td>
										<td><p>Description of transaction.</p></td>
									</tr>
									<tr>
										<td><code>Amount</code></td>
										<td><code>1000.00</code></td>
										<td>Mandatory</td>
										<td><p>Value of fund in naira.</p></td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr>
						<h4>Response</h4>
						<pre>
&lsaquo;AmountBlockResponse&rsaquo;
	&lsaquo;SessionID&rsaquo;000001100913103301000000000001&lsaquo;/SessionID&rsaquo;
	&lsaquo;DestinationInstitutionCode>000002&lsaquo;/DestinationInstitutionCode&rsaquo;
	&lsaquo;ChannelCode&rsaquo;7&lsaquo;/ChannelCode&rsaquo;
	&lsaquo;ReferenceCode&rsaquo;xxxxxxxxxxxxxxx&lsaquo;/ReferenceCode&rsaquo;
	&lsaquo;TargetAccountName&rsaquo;Ajibade Oluwasegun&lsaquo;/TargetAccountName&rsaquo;
	&lsaquo;TargetBankVerificationNumber&rsaquo;1033000442&lsaquo;/TargetBankVerificationNumber&rsaquo;
	&lsaquo;TargetAccountNumber&rsaquo;2222002345&lsaquo;/TargetAccountNumber&rsaquo;
	&lsaquo;ReasonCode&rsaquo;0001&lsaquo;/ReasonCode&rsaquo;
	&lsaquo;Narration&rsaquo;1000000001&lsaquo;/Narration&rsaquo;
	&lsaquo;Amount&rsaquo;1000.00&lsaquo;/Amount&rsaquo;
	&lsaquo;ResponseCode&rsaquo;00&lsaquo;/ResponseCode&rsaquo;
&lsaquo;/AmountBlockResponse&rsaquo;
					</pre>

					</div>
					<!-- /*****************Amount Block********************/-->
					<div class="col-sm-5 col-md-5  sidenav">
						<div class="form-group">
							<h3 class="extraSpace">Amount Block Tester</h3>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<th>Argument</th>
											<th></th>
											<th>Value</th>
										</tr>
										<tr>
											<td><code>SessionID</code></td>
											<td>Required</td>
											<td><input type="text" id="AmountBlockSessionID"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DestinationinstitutionCode</code></td>
											<td>Required</td>
											<td><input type="text" id="AmountBlockDesInsCode" value=""
												class="form-control"></td>
											
										</tr>

										<tr>
											<td><code>ChannelCode</code></td>
											<td>Required</td>
											<td><input type="text" id="AmountBlockChannelCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>ReferenceCode</code></td>
											<td>Required</td>
											<td><input type="text" id="AmountBlockRefCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TargetAccountName</code></td>
											<td>Required</td>
											<td><input type="text" id="AmountBlockTgetAcctNm" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TargetVerificationNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="AmountBlockTgtVerifNumb"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TargetAccountNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="AmountBlockTgtAcctNumb" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>ReasonCode</code></td>
											<td>Required</td>
											<td><input type="text" id="AmountBlockReasonCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>Narration</code></td>
											<td>Optional</td>
											<td><input type="text" id="AmountBlockNarration" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>Amount</code></td>
											<td>Required</td>
											<td><input type="text" id="AmountBlockAmount" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td><input type="submit" class="btn btn-success" onclick="amountBlock();"
												value="Test Method"></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="form-group">
								<label for="Response">Response:</label><br>
								<textarea class="form-control" rows="28" id="AmountBlockcomment" readonly></textarea>
							</div>
						</div>
					</div>
				</section>
			</div>

			<div class="row">
				<section id="amountUnblock">
					<div class="col-sm-7 col-md-7  text-left">
						<h3 class="extraSpace">Amount Unblock Documentation</h3>
						<h4>Description</h4>
						<p>This method is used to unblock/remove lien from specified
							amount in an account.</p>
						<p>
							Method URL:
							<code>https://nepune.com/api/amountblock</code>
						</p>
						<hr>
						<h4>Argument</h4>
						<div class="table-responsive">
							<table class="table table-condensed table-striped">
								<tbody>
									<tr>
										<th>Argument</th>
										<th>Example</th>
										<th>Required</th>
										<th>Description</th>
									</tr>
									<tr>
										<td><code>SessionID</code></td>
										<td><code>
												00000110091310<br>3301000000000001
											</code></td>
										<td>Mandatory</td>
										<td><p>A unique number of 30 length, that identifies
												the transaction.</p></td>
									</tr>
									<tr>
										<td><code>DestinationInstitutionCode</code></td>
										<td><code>000002</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying destination Institution.</p></td>
									</tr>
									<tr>
										<td><code>ChannelCode</code></td>
										<td><code>7</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying the source channel of the
												transaction.</p></td>
									</tr>
									<tr>
										<td><code>ReferenceCode</code></td>
										<td><code>xxxxxxxxxxxxxxx</code></td>
										<td>Mandatory</td>
										<td><p>Code generated by the response of amount block
												method.</p></td>
									</tr>
									<tr>
										<td><code>TargetAccountName</code></td>
										<td><code>Ajibade Oluwasegun</code></td>
										<td>Mandatory</td>
										<td><p>Customer's Account Name.</p></td>
									</tr>
									<tr>
										<td><code>TargetBankVerificationNumber</code></td>
										<td><code>1033000442</code></td>
										<td>Mandatory</td>
										<td><p>Customer's Bank Verification Number.</p></td>
									</tr>
									<tr>
										<td><code>TargetAccountNumber</code></td>
										<td><code>2222002345</code></td>
										<td>Mandatory</td>
										<td><p>Customer's Account Number.</p></td>
									</tr>
									<tr>
										<td><code>ReasonCode</code></td>
										<td><code>0001</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying the reason for blocking
												amount.</p></td>
									</tr>
									<tr>
										<td><code>Narration</code></td>
										<td><code>Transfer from me to you</code></td>
										<td>Optional</td>
										<td><p>Description of transaction.</p></td>
									</tr>
									<tr>
										<td><code>Amount</code></td>
										<td><code>1000.00</code></td>
										<td>Mandatory</td>
										<td><p>Value of fund in naira.</p></td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr>
						<h4>Response</h4>
						<pre>
&lsaquo;AmountUnblockResponse&rsaquo;
	&lsaquo;SessionID&rsaquo;000001100913103301000000000001&lsaquo;/SessionID&rsaquo;
	&lsaquo;DestinationInstitutionCode>000002&lsaquo;/DestinationInstitutionCode&rsaquo;
	&lsaquo;ChannelCode&rsaquo;7&lsaquo;/ChannelCode&rsaquo;
	&lsaquo;ReferenceCode&rsaquo;xxxxxxxxxxxxxxx&lsaquo;/ReferenceCode&rsaquo;
	&lsaquo;TargetAccountName&rsaquo;Ajibade Oluwasegun&lsaquo;/TargetAccountName&rsaquo;
	&lsaquo;TargetBankVerificationNumber&rsaquo;1033000442&lsaquo;/TargetBankVerificationNumber&rsaquo;
	&lsaquo;TargetAccountNumber&rsaquo;2222002345&lsaquo;/TargetAccountNumber&rsaquo;
	&lsaquo;ReasonCode&rsaquo;0001&lsaquo;/ReasonCode&rsaquo;
	&lsaquo;Narration&rsaquo;1000000001&lsaquo;/Narration&rsaquo;
	&lsaquo;Amount&rsaquo;1000.00&lsaquo;/Amount&rsaquo;
	&lsaquo;ResponseCode&rsaquo;00&lsaquo;/ResponseCode&rsaquo;
&lsaquo;/AmountUnblockResponse&rsaquo;
					</pre>

					</div>
					<!-- /*****************Amount Unblock********************/-->
					<div class="col-sm-5 col-md-5  sidenav">
						<div class="form-group">
							<h3 class="extraSpace">Amount Unblock Tester</h3>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<th>Argument</th>
											<th></th>
											<th>Value</th>
										</tr>
										<tr>
											<td><code>SessionID</code></td>
											<td>Required</td>
											<td><input type="text" id="amountUnblockSessionID"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DestinationinstitutionCode</code></td>
											<td>Required</td>
											<td><input type="text" id="amountUnblockDesInsCode" value=""
												class="form-control"></td>
											
										</tr>

										<tr>
											<td><code>ChannelCode</code></td>
											<td>Required</td>
											<td><input type="text" id="amountUnblockChannelCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>ReferenceCode</code></td>
											<td>Required</td>
											<td><input type="text" id="amountUnblockReferenceCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TargetAccountName</code></td>
											<td>Required</td>
											<td><input type="text" id="amountUnblockTargetAccountName" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TargetVerificationNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="amountUnblockTargetVerificationNumber"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TargetAccountNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="amountUnblockTargetAccountNumber" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>ReasonCode</code></td>
											<td>Required</td>
											<td><input type="text" id="amountUnblockReasonCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>Narration</code></td>
											<td>Optional</td>
											<td><input type="text" id="amountUnblockNarration" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>Amount</code></td>
											<td>Required</td>
											<td><input type="text" id="amountUnblockAmount" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td><input type="submit" class="btn btn-success" onclick="amountUnblock();"
												value="Test Method"></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="form-group">
								<label for="Response">Response:</label><br>
								<textarea class="form-control" rows="28" id="amountUnblockcomment" readonly></textarea>
							</div>
						</div>
					</div>
				</section>
			</div>

			<div class="row">
				<section id="accountBlock">
					<div class="col-sm-7 col-md-7  text-left">
						<h3 class="extraSpace">Account Block Documentation</h3>
						<h4>Description</h4>
						<p>This method is used to block/lien specified account.</p>
						<p>
							Method URL:
							<code>https://nepune.com/api/accountblock</code>
						</p>
						<hr>
						<h4>Argument</h4>
						<div class="table-responsive">
							<table class="table table-condensed table-striped">
								<tbody>
									<tr>
										<th>Argument</th>
										<th>Example</th>
										<th>Required</th>
										<th>Description</th>
									</tr>
									<tr>
										<td><code>SessionID</code></td>
										<td><code>
												00000110091310<br>3301000000000001
											</code></td>
										<td>Mandatory</td>
										<td><p>A unique number of 30 length, that identifies
												the transaction.</p></td>
									</tr>
									<tr>
										<td><code>DestinationInstitutionCode</code></td>
										<td><code>000002</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying destination Institution.</p></td>
									</tr>
									<tr>
										<td><code>ChannelCode</code></td>
										<td><code>7</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying the source channel of the
												transaction.</p></td>
									</tr>
									<tr>
										<td><code>ReferenceCode</code></td>
										<td><code>xxxxxxxxxxxxxxx</code></td>
										<td>Mandatory</td>
										<td><p>Code generated by the response of amount block
												method.</p></td>
									</tr>
									<tr>
										<td><code>TargetAccountName</code></td>
										<td><code>Ajibade Oluwasegun</code></td>
										<td>Mandatory</td>
										<td><p>Customer's Account Name.</p></td>
									</tr>
									<tr>
										<td><code>TargetBankVerificationNumber</code></td>
										<td><code>1033000442</code></td>
										<td>Mandatory</td>
										<td><p>Customer's Bank Verification Number.</p></td>
									</tr>
									<tr>
										<td><code>TargetAccountNumber</code></td>
										<td><code>2222002345</code></td>
										<td>Mandatory</td>
										<td><p>Customer's Account Number.</p></td>
									</tr>
									<tr>
										<td><code>ReasonCode</code></td>
										<td><code>0001</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying the reason for blocking
												amount.</p></td>
									</tr>
									<tr>
										<td><code>Narration</code></td>
										<td><code>Transfer from me to you</code></td>
										<td>Optional</td>
										<td><p>Description of transaction.</p></td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr>
						<h4>Response</h4>
						<pre>
&lsaquo;AccountBlockResponse&rsaquo;
	&lsaquo;SessionID&rsaquo;000001100913103301000000000001&lsaquo;/SessionID&rsaquo;
	&lsaquo;DestinationInstitutionCode>000002&lsaquo;/DestinationInstitutionCode&rsaquo;
	&lsaquo;ChannelCode&rsaquo;7&lsaquo;/ChannelCode&rsaquo;
	&lsaquo;ReferenceCode&rsaquo;xxxxxxxxxxxxxxx&lsaquo;/ReferenceCode&rsaquo;
	&lsaquo;TargetAccountName&rsaquo;Ajibade Oluwasegun&lsaquo;/TargetAccountName&rsaquo;
	&lsaquo;TargetBankVerificationNumber&rsaquo;1033000442&lsaquo;/TargetBankVerificationNumber&rsaquo;
	&lsaquo;TargetAccountNumber&rsaquo;2222002345&lsaquo;/TargetAccountNumber&rsaquo;
	&lsaquo;ReasonCode&rsaquo;0001&lsaquo;/ReasonCode&rsaquo;
	&lsaquo;Narration&rsaquo;1000000001&lsaquo;/Narration&rsaquo;
	&lsaquo;ResponseCode&rsaquo;00&lsaquo;/ResponseCode&rsaquo;
&lsaquo;/AccountBlockResponse&rsaquo;
					</pre>

					</div>
					<!-- /*****************Account block********************/-->

					<div class="col-sm-5 col-md-5  sidenav">

						<div class="form-group">
							<h3 class="extraSpace">Account Block Tester</h3>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<th>Argument</th>
											<th></th>
											<th>Value</th>
										</tr>
										<tr>
											<td><code>SessionID</code></td>
											<td>Required</td>
											<td><input type="text" id="accountBlockSessionID"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DestinationinstitutionCode</code></td>
											<td>Required</td>
											<td><input type="text" id="accountBlockDesInsCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>ChannelCode</code></td>
											<td>Required</td>
											<td><input type="text" id="accountBlockChannelCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>ReferenceCode</code></td>
											<td>Required</td>
											<td><input type="text" id="accountBlockReferenceCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TargetAccountName</code></td>
											<td>Required</td>
											<td><input type="text" id="accountBlockTargetAccountName" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TargetVerificationNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="accountBlockTargetVerificationNumber"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TargetAccountNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="accountBlockTargetAccountNumber" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>ReasonCode</code></td>
											<td>Required</td>
											<td><input type="text" id="accountBlockReasonCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>Narration</code></td>
											<td>Optional</td>
											<td><input type="text" id="accountBlockNarration" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td><input type="submit" class="btn btn-success" onclick="accountBlock();"
												value="Test Method"></td>
										</tr>
									</tbody>
								</table>
							</div>


							<div class="form-group">
								<label for="Response">Response:</label><br>
								<textarea class="form-control" rows="28" id="accountBlockcomment" readonly></textarea>
							</div>
						</div>
					</div>
				</section>
			</div>

			<div class="row">
				<section id="accountUnblock">
					<div class="col-sm-7 col-md-7  text-left">
						<h3 class="extraSpace">Account Unblock Documentation</h3>
						<h4>Description</h4>
						<p>This method is used to unblock/remove lien from specified
							account.</p>
						<p>
							Method URL:
							<code>https://nepune.com/api/accountunblock</code>
						</p>
						<hr>
						<h4>Argument</h4>
						<div class="table-responsive">
							<table class="table table-condensed table-striped">
								<tbody>
									<tr>
										<th>Argument</th>
										<th>Example</th>
										<th>Required</th>
										<th>Description</th>
									</tr>
									<tr>
										<td><code>SessionID</code></td>
										<td><code>
												00000110091310<br>3301000000000001
											</code></td>
										<td>Mandatory</td>
										<td><p>A unique number of 30 length, that identifies
												the transaction.</p></td>
									</tr>
									<tr>
										<td><code>DestinationInstitutionCode</code></td>
										<td><code>000002</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying destination Institution.</p></td>
									</tr>
									<tr>
										<td><code>ChannelCode</code></td>
										<td><code>7</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying the source channel of the
												transaction.</p></td>
									</tr>
									<tr>
										<td><code>ReferenceCode</code></td>
										<td><code>xxxxxxxxxxxxxxx</code></td>
										<td>Mandatory</td>
										<td><p>Code generated by the response of amount block
												method.</p></td>
									</tr>
									<tr>
										<td><code>TargetAccountName</code></td>
										<td><code>Ajibade Oluwasegun</code></td>
										<td>Mandatory</td>
										<td><p>Customer's Account Name.</p></td>
									</tr>
									<tr>
										<td><code>TargetBankVerificationNumber</code></td>
										<td><code>1033000442</code></td>
										<td>Mandatory</td>
										<td><p>Customer's Bank Verification Number.</p></td>
									</tr>
									<tr>
										<td><code>TargetAccountNumber</code></td>
										<td><code>2222002345</code></td>
										<td>Mandatory</td>
										<td><p>Customer's Account Number.</p></td>
									</tr>
									<tr>
										<td><code>ReasonCode</code></td>
										<td><code>0001</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying the reason for blocking
												amount.</p></td>
									</tr>
									<tr>
										<td><code>Narration</code></td>
										<td><code>Transfer from me to you</code></td>
										<td>Optional</td>
										<td><p>Description of transaction.</p></td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr>
						<h4>Response</h4>
						<pre>
&lsaquo;AccountUnblockResponse&rsaquo;
	&lsaquo;SessionID&rsaquo;000001100913103301000000000001&lsaquo;/SessionID&rsaquo;
	&lsaquo;DestinationInstitutionCode>000002&lsaquo;/DestinationInstitutionCode&rsaquo;
	&lsaquo;ChannelCode&rsaquo;7&lsaquo;/ChannelCode&rsaquo;
	&lsaquo;ReferenceCode&rsaquo;xxxxxxxxxxxxxxx&lsaquo;/ReferenceCode&rsaquo;
	&lsaquo;TargetAccountName&rsaquo;Ajibade Oluwasegun&lsaquo;/TargetAccountName&rsaquo;
	&lsaquo;TargetBankVerificationNumber&rsaquo;1033000442&lsaquo;/TargetBankVerificationNumber&rsaquo;
	&lsaquo;TargetAccountNumber&rsaquo;2222002345&lsaquo;/TargetAccountNumber&rsaquo;
	&lsaquo;ReasonCode&rsaquo;0001&lsaquo;/ReasonCode&rsaquo;
	&lsaquo;Narration&rsaquo;1000000001&lsaquo;/Narration&rsaquo;
	&lsaquo;ResponseCode&rsaquo;00&lsaquo;/ResponseCode&rsaquo;
&lsaquo;/AccountUnblockResponse&rsaquo;
					</pre>

					</div>

					<!-- /*****************Account Unblock********************/-->
					<div class="col-sm-5 col-md-5  sidenav">
						<div class="form-group">
							<h3 class="extraSpace">Account Unblock Tester</h3>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<th>Argument</th>
											<th></th>
											<th>Value</th>
										</tr>
										<tr>
											<td><code>SessionID</code></td>
											<td>Required</td>
											<td><input type="text" id="accountUnblockSessionID"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DestinationinstitutionCode</code></td>
											<td>Required</td>
											<td><input type="text" id="accountUnblockDesInsCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>ChannelCode</code></td>
											<td>Required</td>
											<td><input type="text" id="accountUnblockChannelCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>ReferenceCode</code></td>
											<td>Required</td>
											<td><input type="text" id="accountUnblockReferenceCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TargetAccountName</code></td>
											<td>Required</td>
											<td><input type="text" id="accountUnblockTargetAccountName" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TargetVerificationNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="accountUnblockTargetVerificationNumber"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TargetAccountNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="accountUnblockTargetAccountNumber" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>ReasonCode</code></td>
											<td>Required</td>
											<td><input type="text" id="accountUnblockReasonCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>Narration</code></td>
											<td>Optional</td>
											<td><input type="text" id="accountUnblockNarration" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td><input type="submit" class="btn btn-success" onclick="accountUnblock();"
												value="Test Method"></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="form-group">
								<label for="Response">Response:</label><br>
								<textarea class="form-control" rows="28" id="accountUnblockcomment" readonly></textarea>
							</div>
						</div>
					</div>
				</section>
			</div>

			<div class="row">
				<section id="finInstList">
					<div class="col-sm-7 col-md75  text-left">
						<h3 class="extraSpace">Financial Institution List
							Documentation</h3>
						<h4>Description</h4>
						<p>This method is used to inform of new Financial Institution
							on the platform.</p>
						<p>
							Method URL:
							<code>https://nepune.com/api/fininstlist</code>
						</p>
						<hr>
						<h4>Argument</h4>
						<div class="table-responsive">
							<table class="table table-condensed table-striped">
								<tbody>
									<tr>
										<th>Argument</th>
										<th>Example</th>
										<th>Required</th>
										<th>Description</th>
									</tr>
									<tr>
										<td><code>BatchNumber</code></td>
										<td><code>
												000001100911000000<br>000001
											</code></td>
										<td>Mandatory</td>
										<td><p>A unique Number of length 24, identifying a
												batch of transactions.</p></td>
									</tr>
									<tr>
										<td><code>NumberOfRecords</code></td>
										<td><code>2</code></td>
										<td>Mandatory</td>
										<td><p>Number of records in a batch. max 50.</p></td>
									</tr>
									<tr>
										<td><code>ChannelCode</code></td>
										<td><code>1</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying the source channel of the
												transaction.</p></td>
									</tr>
									<tr>
										<td><code>TransactionLocation</code></td>
										<td><code>6.4300747,3.4110715</code></td>
										<td>Optional</td>
										<td><p>GPS location of channel of transaction.</p></td>
									</tr>
									<tr>
										<td><code>InstitutionCode</code></td>
										<td><code>000001</code></td>
										<td>Mandatory</td>
										<td><p>Code of Financial Institution.</p></td>
									</tr>
									<tr>
										<td><code>InstitutionName</code></td>
										<td><code>Bank ABC</code></td>
										<td></td>
										<td><p>Name of Financial Institution.</p></td>
									</tr>
									<tr>
										<td><code>Category</code></td>
										<td><code>2</code></td>
										<td></td>
										<td><p>Financial segment of Financial Institution.</p></td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr>
						<h4>Response</h4>
						<pre>
&lsaquo;FinancialInstitutionListResponse&rsaquo;
	&lsaquo;BatchNumber&rsaquo;000001100911000000000001&lsaquo;/SessionID&rsaquo;
	&lsaquo;DestinationInstitutionCode>000002&lsaquo;/DestinationInstitutionCode&rsaquo;
	&lsaquo;ChannelCode&rsaquo;1&lsaquo;/ChannelCode&rsaquo;
	&lsaquo;NumberOfRecords&rsaquo;2&lsaquo;/NumberOfRecords&rsaquo;
	&lsaquo;ResponseCode&rsaquo;00&lsaquo;/ResponseCode&rsaquo;
&lsaquo;/FinancialInstitutionListResponse&rsaquo;
					</pre>

					</div>
					<!-- /*****************Financial Institution List********************/-->
					<div class="col-sm-5 col-md-5  sidenav">
						<div class="form-group">
							<h3 class="extraSpace">Financial Institution List Tester</h3>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<th>Argument</th>
											<th></th>
											<th>Value</th>
										</tr>
										<tr>
											<td><code>BatchNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="financialInstListBatchNumber"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>NumberOfRecords</code></td>
											<td>Required</td>
											<td><input type="text" id="financialInstListNumberOfRecords" value=""
												class="form-control"></td>
											
										</tr>

										<tr>
											<td><code>ChannelCode</code></td>
											<td>Required</td>
											<td><input type="text" id="financialInstListChannelCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>TransactionLocation</code></td>
											<td>Optional</td>
											<td><input type="text" id="financialInstListTransactionLocation" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>InstitutionCode</code></td>
											<td></td>
											<td><input type="text" id="financialInstListInstitutionCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>InstitutionName</code></td>
											<td></td>
											<td><input type="text" id="financialInstListInstitutionName" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>Category</code></td>
											<td></td>
											<td><input type="text" id="financialInstListCategory" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>&nbsp;</td>
											<td><input type="submit" class="btn btn-success" onclick= "financialInstList();"
												value="Test Method"></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="form-group">
								<label for="Response">Response:</label><br>
								<textarea class="form-control" rows="28" id="financialInstListcomment" readonly></textarea>
							</div>
						</div>
					</div>
				</section>
			</div>

			<div class="row">
				<section id="mandateAdvice">
					<div class="col-sm-7 col-md-7  text-left">

						<h3 class="extraSpace">Mandate Advice Documentation</h3>
						<h4>Description</h4>
						<p>This method is used to inform of new Mandate details.</p>
						<p>
							Method URL:
							<code>https://nepune.com/api/mandateAdv</code>
						</p>
						<hr>
						<h4>Argument</h4>
						<div class="table-responsive">
							<table class="table table-condensed table-striped">
								<tbody>
									<tr>
										<th>Argument</th>
										<th>Example</th>
										<th>Required</th>
										<th>Description</th>
									</tr>
									<tr>
										<td><code>SessionID</code></td>
										<td><code>
												00000110091310<br>3301000000000002
											</code></td>
										<td>Mandatory</td>
										<td><p>A unique number of 30 length, that identifies
												the transaction.</p></td>
									</tr>
									<tr>
										<td><code>DestinationInstitutionCode</code></td>
										<td><code>000002</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying destination Institution.</p></td>
									</tr>
									<tr>
										<td><code>ChannelCode</code></td>
										<td><code>7</code></td>
										<td>Mandatory</td>
										<td><p>Code identifying the source channel of the
												transaction.</p></td>
									</tr>
									<tr>
										<td><code>MandateReferenceNumber</code></td>
										<td><code>xxxxxxxxxxxxxxxxxxx</code></td>
										<td>Mandatory</td>
										<td><p>Reference Number authorizing debit to be
												passed into customer's account.</p></td>
									</tr>
									<tr>
										<td><code>Amount</code></td>
										<td><code>Ajibade Oluwasegun</code></td>
										<td>Mandatory</td>
										<td><p>Value of fund in naira.</p></td>
									</tr>
									<tr>
										<td><code>DebitAccountName</code></td>
										<td><code>Ajibade Oluwasegun</code></td>
										<td>Mandatory</td>
										<td><p>Account Name of Customer to receive debit.</p></td>
									</tr>
									<tr>
										<td><code>DebitAccountNumber</code></td>
										<td><code>2222000000012345</code></td>
										<td>Mandatory</td>
										<td><p>Account Number of Customer to receive debit.</p></td>
									</tr>
									<tr>
										<td><code>DebitBankVerificationNumber</code></td>
										<td><code>1033000442</code></td>
										<td>Mandatory</td>
										<td><p>Bank Verification Number of Customer to
												receive debit.</p></td>
									</tr>
									<tr>
										<td><code>DebitKYCLevel</code></td>
										<td><code>1</code></td>
										<td>Mandatory</td>
										<td><p>Know Your Customer Level of Customer to
												receive debit.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryAccountName</code></td>
										<td><code>Sarah Hassan Emeka</code></td>
										<td>Mandatory</td>
										<td><p>Beneficiary Account Name.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryAccountNumber</code></td>
										<td><code>2222002345</code></td>
										<td>Mandatory</td>
										<td><p>Beneficiary Account Number.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryBankVerificationNumber</code></td>
										<td><code>1033000442</code></td>
										<td>Mandatory</td>
										<td><p>Beneficiary Bank Verification Number.</p></td>
									</tr>
									<tr>
										<td><code>BeneficiaryKYCLevel</code></td>
										<td><code>1</code></td>
										<td>Optional</td>
										<td><p>Know Your Customer Level of customer's account
												that is to receive credit.</p></td>
									</tr>
								</tbody>
							</table>
						</div>
						<hr>
						<h4>Response</h4>
						<pre>
&lsaquo;MandateAdviceResponse&rsaquo;
	&lsaquo;SessionID&rsaquo;000001100913103301000000000001&lsaquo;/SessionID&rsaquo;
	&lsaquo;DestinationInstitutionCode>000002&lsaquo;/DestinationInstitutionCode&rsaquo;
	&lsaquo;ChannelCode&rsaquo;7&lsaquo;/ChannelCode&rsaquo;
	&lsaquo;MandateReferenceNumber&rsaquo;12345678901234&lsaquo;/MandateReferenceNumber&rsaquo;
	&lsaquo;Amount&rsaquo;Ajibade Oluwasegun&lsaquo;/Amount&rsaquo;
	&lsaquo;DebitAccountName&rsaquo;Ajibade Oluwasegun&lsaquo;/OriginatorAccountName&rsaquo;
	&lsaquo;DebitAccountNumber&rsaquo;2222000000012345&lsaquo;/OriginatorAccountNumber&rsaquo;
	&lsaquo;DebitBankVerificationNumber&rsaquo;1033000442&lsaquo;/OriginatorBankVerificationNumber&rsaquo;
	&lsaquo;DebitKYCLevel&rsaquo;1&lsaquo;/OriginatorKYCLevel&rsaquo;
	&lsaquo;BeneficiaryAccountName&rsaquo;Sarah Hassan Emeka&lsaquo;/BeneficiaryAccountName&rsaquo;
	&lsaquo;BeneficiaryAccountNumber&rsaquo;2222002345&lsaquo;/BeneficiaryAccountNumber&rsaquo;
	&lsaquo;BeneficiaryBankVerificationNumber&rsaquo;1033000442&lsaquo;/BeneficiaryBankVerificationNumber&rsaquo;
	&lsaquo;BeneficiaryKYCLevel&rsaquo;1&lsaquo;/BeneficiaryKYCLevel&rsaquo;
	&lsaquo;ResponseCode&rsaquo;00&lsaquo;/ResponseCode&rsaquo;
&lsaquo;/MandateAdviceResponse&rsaquo;
					</pre>

					</div>
					<!-- /***************** Mandate Advice********************/-->
					<div class="col-sm-5 col-md-5  sidenav">
						<div class="form-group">
							<h3 class="extraSpace">Mandate Advice Tester</h3>
							<div class="table-responsive">
								<table class="table">
									<tbody>
										<tr>
											<th>Argument</th>
											<th></th>
											<th>Value</th>
										</tr>
										<tr>
											<td><code>SessionID</code></td>
											<td>Required</td>
											<td><input type="text" id="mandateAdviceSessionID"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DestinationinstitutionCode</code></td>
											<td>Required</td>
											<td><input type="text" id="mandateAdviceDesInsCode" value=""
												class="form-control"></td>
											
										</tr>

										<tr>
											<td><code>ChannelCode</code></td>
											<td>Required</td>
											<td><input type="text" id="mandateAdviceChannelCode" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>MandateReferenceNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="mandateAdviceMandateReferenceNumber"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>Amount</code></td>
											<td>Required</td>
											<td><input type="text" id="mandateAdviceAmount" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DebitAccountName</code></td>
											<td>Required</td>
											<td><input type="text" id="mandateAdviceDebitAccountName" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DebitAccountNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="mandateAdviceDebitAccountNumber" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DebitBankVerificationNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="mandateAdviceDebitBVN"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>DebitKYCLevel</code></td>
											<td>Required</td>
											<td><input type="text" id="mandateAdviceDebitKYCLevel" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryAccountName</code></td>
											<td>Required</td>
											<td><input type="text" id="mandateAdviceBeneficiaryAccountName"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryAccountNumber</code></td>
											<td>Required</td>
											<td><input type="text" id="mandateAdviceBeneficiaryAccountNumber"
												value="" class="form-control"></td>
											
										</tr>
										<tr>
											<td><code>BeneficiaryKYCLevel</code></td>
											<td>Optional</td>
											<td><input type="text" id="mandateAdviceBeneficiaryKYCLevel" value=""
												class="form-control"></td>
											
										</tr>
										<tr>
											<td>&nbsp;</td>
											<td>&nbsp;</td> 
											<td><input type="submit" class="btn btn-success" onclick="mandateAdvice();"
												value="Test Method"></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="form-group">
								<label for="Response">Response:</label><br>
								<textarea class="form-control" rows="28" id="mandateAdvicecomment" readonly></textarea>
							</div>
						</div>
					</div>
				</section>
			</div>

			<div class="row">
				<div class="col-sm-6 col-md-6 col-lg-6 text-left">
					<section id="responseCode">
						<h3 class="extraSpace">Response Codes</h3>
						<p>Here are all the possible response codes and their
							description.</p>
						<div class="table-responsive">
							<table class="table table-condensed table-striped">
								<tbody>
									<tr>
										<th>Codes</th>
										<th>Description</th>
									</tr>
									<tr>
										<td><code>00</code></td>
										<td><p>Approved or completed successfully.</p></td>
									</tr>
									<tr>
										<td><code>01</code></td>
										<td><p>Status unknown, please wait for settlement
												report.</p></td>
									</tr>
									<tr>
										<td><code>03</code></td>
										<td><p>Invalid Sender.</p></td>
									</tr>
									<tr>
										<td><code>05</code></td>
										<td><p>Do not honor.</p></td>
									</tr>
									<tr>
										<td><code>06</code></td>
										<td><p>Dormant Account.</p></td>
									</tr>
									<tr>
										<td><code>07</code></td>
										<td><p>Invalid Account.</p></td>
									</tr>
									<tr>
										<td><code>08</code></td>
										<td><p>Account Name Mismatch.</p></td>
									</tr>
									<tr>
										<td><code>09</code></td>
										<td><p>Request processing in progress.</p></td>
									</tr>
									<tr>
										<td><code>12</code></td>
										<td><p>Invalid transaction.</p></td>
									</tr>
									<tr>
										<td><code>13</code></td>
										<td><p>Invalid Amount.</p></td>
									</tr>
									<tr>
										<td><code>14</code></td>
										<td><p>Invalid Batch Number.</p></td>
									</tr>
									<tr>
										<td><code>15</code></td>
										<td><p>Invalid Session or Record ID.</p></td>
									</tr>
									<tr>
										<td><code>16</code></td>
										<td><p>Unknown Bank Code.</p></td>
									</tr>
									<tr>
										<td><code>17</code></td>
										<td><p>Invalid Channel.</p></td>
									</tr>
									<tr>
										<td><code>18</code></td>
										<td><p>Wrong Method Call.</p></td>
									</tr>
									<tr>
										<td><code>21</code></td>
										<td><p>No action taken.</p></td>
									</tr>
									<tr>
										<td><code>25</code></td>
										<td><p>Unable to locate record.</p></td>
									</tr>
									<tr>
										<td><code>26</code></td>
										<td><p>Duplicate record.</p></td>
									</tr>
									<tr>
										<td><code>30</code></td>
										<td><p>Format error.</p></td>
									</tr>
									<tr>
										<td><code>34</code></td>
										<td><p>Suspected fraud.</p></td>
									</tr>
									<tr>
										<td><code>35</code></td>
										<td><p>Contact sending bank.</p></td>
									</tr>
									<tr>
										<td><code>51</code></td>
										<td><p>No sufficient funds.</p></td>
									</tr>
									<tr>
										<td><code>57</code></td>
										<td><p>Transaction not permitted to sender.</p></td>
									</tr>
									<tr>
										<td><code>58</code></td>
										<td><p>Transaction not permitted on channel.</p></td>
									</tr>
									<tr>
										<td><code>61</code></td>
										<td><p>Transfer limit Exceeded.</p></td>
									</tr>
									<tr>
										<td><code>63</code></td>
										<td><p>Security violation.</p></td>
									</tr>
									<tr>
										<td><code>65</code></td>
										<td><p>Exceeds withdrawal frequency.</p></td>
									</tr>
									<tr>
										<td><code>68</code></td>
										<td><p>Response received too late.</p></td>
									</tr>
									<tr>
										<td><code>69</code></td>
										<td><p>Unsuccessful Account/Amount block.</p></td>
									</tr>
									<tr>
										<td><code>70</code></td>
										<td><p>Unsuccessful Account/Amount unblock.</p></td>
									</tr>
									<tr>
										<td><code>71</code></td>
										<td><p>Empty Mandate Reference Number.</p></td>
									</tr>
									<tr>
										<td><code>91</code></td>
										<td><p>Beneficiary Bank not available.</p></td>
									</tr>
									<tr>
										<td><code>92</code></td>
										<td><p>Routing error.</p></td>
									</tr>
									<tr>
										<td><code>94</code></td>
										<td><p>Duplicate transaction.</p></td>
									</tr>
									<tr>
										<td><code>96</code></td>
										<td><p>System malfunction.</p></td>
									</tr>
									<tr>
										<td><code>97</code></td>
										<td><p>Timeout waiting for response from destination.</p></td>
									</tr>
								</tbody>
							</table>
						</div>
					</section>
				</div>

				<div class="col-sm-6 col-md-6 col-lg-6 text-left">
					<section id="reasonCode">
						<h3 class="extraSpace">Reason Codes</h3>
						<p>Here are all the Reason codes and their description.</p>
						<div class="table-responsive">
							<table class="table table-condensed table-striped">
								<tbody>
									<tr>
										<th>Codes</th>
										<th>Description</th>
									</tr>
									<tr>
										<td><code>0001</code></td>
										<td><p>Suspected fraud.</p></td>
									</tr>
									<tr>
										<td><code>0002</code></td>
										<td><p>Security violation.</p></td>
									</tr>
									<tr>
										<td><code>0003</code></td>
										<td><p>Multiple cases of insufficient fund.</p></td>
									</tr>
									<tr>
										<td><code>0004</code></td>
										<td><p>Multiple cases of "Transfer limit Exceeded".</p></td>
									</tr>
									<tr>
										<td><code>0005</code></td>
										<td><p>Non-compliance with operating regulations.</p></td>
									</tr>
									<tr>
										<td><code>0006</code></td>
										<td><p>Identity theft.</p></td>
									</tr>
									<tr>
										<td><code>0007</code></td>
										<td><p>Duplicate transaction processing.</p></td>
									</tr>
									<tr>
										<td><code>0008</code></td>
										<td><p>Fraudulent multiple transactions.</p></td>
									</tr>
									<tr>
										<td><code>0009</code></td>
										<td><p>Payment made by other means.</p></td>
									</tr>
									<tr>
										<td><code>0010</code></td>
										<td><p>Purpose of payment not redeemed.</p></td>
									</tr>
									<tr>
										<td><code>0011</code></td>
										<td><p>Recurring transactions.</p></td>
									</tr>
									<tr>
										<td><code>1111</code></td>
										<td><p>Others.</p></td>
									</tr>
								</tbody>
							</table>
						</div>
					</section>
				</div>



				<div class="col-sm-6 col-md-6 col-lg-6 text-left">
					<section id="channelCode">
						<h3 class="extraSpace">Channel Codes</h3>
						<p>All the channel codes and their respective names.</p>
						<div class="table-responsive">
							<table class="table table-condensed table-striped">
								<tbody>
									<tr>
										<th>Codes</th>
										<th>Channel Names</th>
									</tr>
									<tr>
										<td><code>1</code></td>
										<td><p>Bank Teller.</p></td>
									</tr>
									<tr>
										<td><code>2</code></td>
										<td><p>Internet Banking.</p></td>
									</tr>
									<tr>
										<td><code>3</code></td>
										<td><p>Mobile Phones.</p></td>
									</tr>
									<tr>
										<td><code>4</code></td>
										<td><p>POS Terminals.</p></td>
									</tr>
									<tr>
										<td><code>5</code></td>
										<td><p>ATM.</p></td>
									</tr>
									<tr>
										<td><code>6</code></td>
										<td><p>Vendor/Merchant Web Portal.</p></td>
									</tr>
									<tr>
										<td><code>7</code></td>
										<td><p>Third-Party Payment Platform.</p></td>
									</tr>
									<tr>
										<td><code>8</code></td>
										<td><p>Other Channels.</p></td>
									</tr>
								</tbody>
							</table>
						</div>
					</section>
				</div>

				<div class="col-sm-6 col-md-6 col-lg-6 text-left">
					<section id="category">
						<h3 class="extraSpace">Category</h3>
						<p>All the category codes representing segments of Financial
							Industries.</p>
						<div class="table-responsive">
							<table class="table table-condensed table-striped">
								<tbody>
									<tr>
										<th>Codes</th>
										<th>Names</th>
									</tr>
									<tr>
										<td><code>1</code></td>
										<td><p>Bureaux-de-Change.</p></td>
									</tr>
									<tr>
										<td><code>2</code></td>
										<td><p>Commercial Bank.</p></td>
									</tr>
									<tr>
										<td><code>3</code></td>
										<td><p>Development Financial Institution.</p></td>
									</tr>
									<tr>
										<td><code>4</code></td>
										<td><p>Discount Houses.</p></td>
									</tr>
									<tr>
										<td><code>5</code></td>
										<td><p>Finance Companies.</p></td>
									</tr>
									<tr>
										<td><code>6</code></td>
										<td><p>Merchant Bank.</p></td>
									</tr>
									<tr>
										<td><code>7</code></td>
										<td><p>Micro-finance Bank.</p></td>
									</tr>
									<tr>
										<td><code>8</code></td>
										<td><p>Non-Interest Bank.</p></td>
									</tr>
									<tr>
										<td><code>9</code></td>
										<td><p>Primary Mortgage Bank.</p></td>
									</tr>
									<tr>
										<td><code>10</code></td>
										<td><p>Mobile Money Operator.</p></td>
									</tr>
									<tr>
										<td><code>11</code></td>
										<td><p>Other Financial Institutions.</p></td>
									</tr>
								</tbody>
							</table>
						</div>
					</section>
				</div>
			</div>
			<!--  Cloumn Two ends here   -->

			<!--  Cloumn Three  navbar-fixed-bottom" -->

			<div class="row">
				<div class="col footer text-center">
					<p>
						&copy;<span id="year">2018</span> Neptune Software Group Plc
					</p>
				</div>
			</div>
		</div>
	</div>
</body>


<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/resources/js/tests.js" />"></script>

<script type="text/javascript">
	var date = new Date();
	document.getElementById("year").innerHTML = date.getFullYear();

	var header = document.getElementById("myDIV");
	var btns = header.getElementsByClassName("Methods");
	for (var i = 0; i < btns.length; i++) {
		btns[i].addEventListener("click", function() {
			var current = document.getElementsByClassName("active");
			current[0].className = current[0].className.replace(" active", "");
			this.className += " active";
		});
	}

	$(document).ready(function() {

		var lastDiv = $("[id^=div]").last();
		var lastDivId = lastDiv.attr('id');

		$('section').mouseenter(function() {
			var id = $(this).attr('id');
			$('p.Methods').removeClass('active');
			$("[href=#" + id + "]").parent('.Methods').addClass('active');
		});

	});
	
	function w3_open() {
		var myDiv = document.getElementById("myDIV");
		
		if(myDiv.style.display === "block")
			myDiv.style.display = "none";
		else
			myDiv.style.display = "block";
	}
</script>
</html>
