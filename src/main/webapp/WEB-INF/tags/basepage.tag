<!-- @author: Chineke Tobenna 2nd May, 2018 -->
<%@ tag language="java" pageEncoding="ISO-8859-1"%> 

<%@tag description="Overall Page template"%>
<%@attribute name="title" fragment="true" %>
<%@attribute name="scripts" fragment="true" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>
    	<jsp:invoke fragment="title"></jsp:invoke>
    </title>
	<link href="<c:url value="/resources/css/bootstrap.css" />" rel="stylesheet">	
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
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

.extraSpace {
	margin: 30px 0px 30px 0px;
}

.Methods{
	padding:5px;
	Margin: 6px;
	font-size: 15px;
	font-weight:bold;
}
.Methods a:hover {
	background-color:#87CCEB;
	color:#FFFFFF;
	text-decoration: none;
	padding-right:10px;
	padding-top:10px;
	padding-bottom:10px;
}
#ResponseBox {
	border: 1px solid black;
	border-radius:5px;
}
.addmore{
	position: fixed;
}


/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		text-align: left;
		height: auto;
	}
}
</style>
</head>

<body>

	  <nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> 
						<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Integration API</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbr">
				<ul class="nav navbar-nav">
					
				</ul>
				<ul class="nav navbar-nav navbar-right">
					
				</ul>
			</div>
		</div>
	</nav>
  <!-- This is the end of NavBar -->
  
	<div class="container-fluid">
		<div class="row content sidenav">					
			<div class="col-sm-2 addMore">
				<p class="Methods"><a href="#nameEnquiry">Name Enquiry</a></p>
				<p class="Methods"><a href="#fundTransferDC">Fund Transfer <br> (Direct Credit)</a></p>
				<p class="Methods"><a href="#fundTransferDD">Fund Transfer <br> (Direct Debit)</a></p>
				<p class="Methods"><a href="#tsQUERY">Transaction Status Query</a></p>
				<p class="Methods"><a href="#balanceEnquiry">Balance Enquiry</a></p>
				<p class="Methods"><a href="FundTransAdvDC">Fund Transfer Advice <br> (Direct Credit)</a></p>
				<p class="Methods"><a href="FundTransAdvDD">Fund Transfer Advice <br>(Direct Debit)</a></p>
				<p class="Methods"><a href="#amountBlock">Amount Block</a></p>
				<p class="Methods"><a href="#amountUnblock">Amount Unblock</a></p>
				<p class="Methods"><a href="#accountBlock">Account Block</a></p>
				<p class="Methods"><a href="#accountUnblock">Account Unblock</a></p>
				<p class="Methods"><a href="#finInstList">Financial Institution List</a></p>
				<p class="Methods"><a href="#mandateAdvice">Mandate Advice</a></p>
				<p class="Methods"><a href="#responseCode">Response Codes</a></p>
			   	<p class="Methods"> <a href="#channelCode">Channel Codes</a></p>
    			<p class="Methods"><a href="#category">Category</a></p>
			</div>			
			
		<!--  Coloumn Two  -->
			<div class="col-sm-5 text-left">
				<div id="nameEnquiry">
					<h3 class="extraSpace">Name Enquiry</h3>
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
									<td><p>A unique number of 30 length, that identifies the transaction.</p></td>
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
				<div id="fundTransferDC">
					<h3 class="extraSpace">Fund Transfer (DIRECT CREDIT)</h3>
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
									<td><p>Originator's Customer Bank Verification Number.</p></td>
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
				<div id="fundTransferDD">
					<h3 class="extraSpace">Fund Transfer (DIRECT DEBIT)</h3>
					<h4>Description</h4>
					<p>This method is used by the bank to forward a direct debit
						payment instruction to recover payments based on prearranged debit
						mandate.</p>
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
									<td><p>Bank Verification Number of Customer to receive
											debit.</p></td>
								</tr>
								<tr>
									<td><code>DebitKYCLevel</code></td>
									<td><code>1</code></td>
									<td>Mandatory</td>
									<td><p>Know Your Customer Level of Customer to receive
											debit.</p></td>
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
									<td><p>Reference Number authorizing debit to be passed
											into customer's account.</p></td>
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
				<div id="tsQUERY">
					<h3 class="extraSpace">Transaction Status Query</h3>
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
				<div id="balanceEnquiry">
					<h3 class="extraSpace">Balance Enquiry</h3>
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
				<div id="FundTransAdvDC">
					<h3 class="extraSpace">Fund Transfer advice (Direct Credit)</h3>
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
									<td><p>Originator's Customer Bank Verification Number.</p></td>
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
				<div id="FundTransAdvDD">
					<h3 class="extraSpace">Fund Transfer advice (Direct Debit)</h3>
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
									<td><p>Bank Verification Number of Customer to receive
											debit.</p></td>
								</tr>
								<tr>
									<td><code>DebitKYCLevel</code></td>
									<td><code>1</code></td>
									<td>Mandatory</td>
									<td><p>Know Your Customer Level of Customer to receive
											debit.</p></td>
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
									<td><p>Reference Number authorizing debit to be passed
											into customer's account.</p></td>
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
				<div id="amountBlock">
					<h3 class="extraSpace">Amount Block</h3>
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
				<div id="amountUnblock">
					<h3 class="extraSpace">Amount Unblock</h3>
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
				<div id="accountBlock">
					<h3 class="extraSpace">Account Block</h3>
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
				<div id="accountUnblock">
					<h3 class="extraSpace">Account Unblock</h3>
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
				<div id="finInstList">
					<h3 class="extraSpace">Financial Institution List</h3>
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
				<div id="mandateAdvice">
					<h3 class="extraSpace">Mandate Advice</h3>
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
									<td><p>Reference Number authorizing debit to be passed
											into customer's account.</p></td>
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
									<td><p>Bank Verification Number of Customer to receive
											debit.</p></td>
								</tr>
								<tr>
									<td><code>DebitKYCLevel</code></td>
									<td><code>1</code></td>
									<td>Mandatory</td>
									<td><p>Know Your Customer Level of Customer to receive
											debit.</p></td>
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
				
				<div id="responseCode">
					<h3 class="extraSpace">Response Codes</h3>
					<p>Here are all the possible response codes and their description.</p>
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
									<td><p>Status unknown, please wait for settlement report.</p></td>
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
				</div>
				
				<div id="reasonCode">
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
				</div>
				
				<div id="channelCode">
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
				</div>
				
				<div id="category">
					<h3 class="extraSpace">Category</h3>
					<p>All the category codes representing segments of Financial Industries.</p>
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
				</div>
				


			</div>
					<!--  Cloumn Two ends here   -->
	
		<!--  Cloumn Three  -->
<div class="col-sm-5 sidenav">
    <div class="form-group">
		<form class="form-inline">
		<div class="table-responsive">
			<table class="table">
				<tbody>
							<!-- /***************NameEnQuiry Form**********************/-->
					<tr>
						<th>Argument</th>
						<th></th>
						<th>Value</th>
						<th></th>						
					</tr>
					<tr>
						<td><code>SessionID</code></td>
						<td>Required</td>
						<td><input type="text" id="DesInsCode" value="fffffff" class="form-control"></td>
						<td id=""></td>					
					</tr>
					<tr>
						<td><code>DestinationinstitutionCode</code></td>
						<td>Required</td>
						<td>
						<input type="text" id="DesInsCode" value="" class="form-control"></td>
						<td id=""></td>
					</tr>
					
					<tr>
						<td><code>Channel Code</code></td>
						<td>Required</td>
						<td><input type="text" id="ChannelCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>Account Number</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>					
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><input type="submit" class="btn btn-success" value="Test Method"></td>
					</tr>
				</tbody>
			</table>
			 </div>			 
			 <div class="form-group">
      			<label for="Response">Response:</label><br>
     			<textarea class="form-control" rows="28" cols="80" id="comment" readonly></textarea>
    		</div>
		</form>
				</div>

				
			   <div class="form-group">
		<form class="form-inline">
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
						<td colspan="2">						
						<input type="text" id="DesInsCode" value="FundT" class="form-control"></td>
						<td id=""></td>					
					</tr>
					<tr>
						<td><code>NameEnquiryRef</code></td>
						<td>Required</td>
						<td>
						<input type="text" id="NameEnquiryRef" value="" class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>DestinationinstitutionCode</code></td>
						<td>Required</td>
						<td>
						<input type="text" id="DesInsCode" value="" class="form-control"></td>
						<td id=""></td>
					</tr>
					
					<tr>
						<td><code>ChannelCode</code></td>
						<td>Required</td>
						<td><input type="text" id="ChannelCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>BeneficiaryAccountName</code></td>
						<td>Required</td>
						<td><input type="text" id="BenAccountName" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>BeneficiaryAccountNumber</code></td>
						<td>Required</td>
						<td><input type="text" id="BenAccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>BeneficiaryBVN</code></td>
						<td>Required</td>
						<td><input type="text" id="BeneficiaryBVN" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>BeneficiaryKYCLevel</code></td>
						<td>Required</td>
						<td><input type="text" id="BenKYCLevel" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>OriginatorAccountName</code></td>
						<td>Required</td>
						<td><input type="text" id="OriAcctName" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>					
					<tr>
						<td><code>OriginatorAccountNumber</code></td>
						<td>Required</td>
						<td><input type="text" id="OriAcctNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>OriginatorBVN</code></td>
						<td>Required</td>
						<td><input type="text" id="OriBVN" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					
					<tr>
						<td><code>OriginatorKYCLevel</code></td>
						<td>Required</td>
						<td><input type="text" id="OriKYCLevel" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
										
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><input type="submit" class="btn btn-success" value="Test Method"></td>
					</tr>
				</tbody>
			</table>
			 </div>			 
			 <div class="form-group">
      			<label for="Response">Response:</label><br>
     			<textarea class="form-control" rows="28" cols="80" id="comment" readonly></textarea>
    		</div>
		</form>
				</div>
				
						<!-- /*****************Fund Transfer Direct Credit********************/-->		  -->	
				
			   <div class="form-group">
		<form class="form-inline">
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
						<td colspan="2">						
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>					
					</tr>
					<tr>
						<td><code>DestinationinstitutionCode</code></td>
						<td>Required</td>
						<td>
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					
					<tr>
						<td><code>Channel Code</code></td>
						<td>Required</td>
						<td><input type="text" id="ChannelCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>Account Number</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>					
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><input type="submit" class="btn btn-success" value="Test Method"></td>
					</tr>
				</tbody>
			</table>
			 </div>			 
			 <div class="form-group">
      			<label for="Response">Response:</label><br>
     			<textarea class="form-control" rows="28" cols="80" id="comment" readonly></textarea>
    		</div>
		</form>
				</div>
				
						<!-- /*************Fund Transfer Direct Debit************************/-->		  -->	
				
			   <div class="form-group">
		<form class="form-inline">
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
						<td colspan="2">						
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>					
					</tr>
					<tr>
						<td><code>NameEnquiryRef</code></td>
						<td>Required</td>
						<td>
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					
					<tr>
						<td><code>DestinationInstitutionCode</code></td>
						<td>Required</td>
						<td><input type="text" id="ChannelCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>ChannelCode</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>BeneficiaryAccountName</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>		
					<tr>
						<td><code>BeneficiaryAccountNumber</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>		
					<tr>
						<td><code>BeneficiaryBVN</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>BeneficiaryKYCLevel</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>OriginatorAccountName</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>OriginatorAccountNumber</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>OriginatorBVN</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>OriginatorKYCLevel</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>TransactionLocation</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>Narration</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>PaymentReference</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>Amount</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>																									
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><input type="submit" class="btn btn-success" value="Test Method"></td>
					</tr>
				</tbody>
			</table>
			 </div>			 
			 <div class="form-group">
      			<label for="Response">Response:</label><br>
     			<textarea class="form-control" rows="28" cols="80" id="comment" readonly></textarea>
    		</div>
		</form>
				</div>
				
						<!-- /******************Transaction Status Query*******************/-->		  -->	
				
			   <div class="form-group">
		<form class="form-inline">
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
						<td colspan="2">						
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>					
					</tr>
					<tr>
						<td><code>DestinationinstitutionCode</code></td>
						<td>Required</td>
						<td>
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					
					<tr>
						<td><code>Channel Code</code></td>
						<td>Required</td>
						<td><input type="text" id="ChannelCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>Account Number</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>					
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><input type="submit" class="btn btn-success" value="Test Method"></td>
					</tr>
				</tbody>
			</table>
			 </div>			 
			 <div class="form-group">
      			<label for="Response">Response:</label><br>
     			<textarea class="form-control" rows="28" cols="80" id="comment" readonly></textarea>
    		</div>
		</form>
				</div>
				
						<!-- /******************Balance Enquiry*******************/-->		  -->	
				
			   <div class="form-group">
		<form class="form-inline">
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
						<td colspan="2">						
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>					
					</tr>
					<tr>
						<td><code>DestinationinstitutionCode</code></td>
						<td>Required</td>
						<td>
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					
					<tr>
						<td><code>Channel Code</code></td>
						<td>Required</td>
						<td><input type="text" id="ChannelCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>Account Number</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>					
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><input type="submit" class="btn btn-success" value="Test Method"></td>
					</tr>
				</tbody>
			</table>
			 </div>			 
			 <div class="form-group">
      			<label for="Response">Response:</label><br>
     			<textarea class="form-control" rows="28" cols="80" id="comment" readonly></textarea>
    		</div>
		</form>
				</div>
				
						<!-- /*****************Fund Transfer Advice (Direct Credit)********************/-->		  -->	
				
			   <div class="form-group">
		<form class="form-inline">
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
						<td colspan="2">						
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>					
					</tr>
					<tr>
						<td><code>DestinationinstitutionCode</code></td>
						<td>Required</td>
						<td>
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					
					<tr>
						<td><code>Channel Code</code></td>
						<td>Required</td>
						<td><input type="text" id="ChannelCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>Account Number</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>					
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><input type="submit" class="btn btn-success" value="Test Method"></td>
					</tr>
				</tbody>
			</table>
			 </div>			 
			 <div class="form-group">
      			<label for="Response">Response:</label><br>
     			<textarea class="form-control" rows="28" cols="80" id="comment" readonly></textarea>
    		</div>
		</form>
				</div>
				
				<!-- /*****************Fund Transfer Advice (Direct Debit)********************/-->		  -->	
				
			   <div class="form-group">
		<form class="form-inline">
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
						<td colspan="2">						
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>					
					</tr>
					<tr>
						<td><code>DestinationinstitutionCode</code></td>
						<td>Required</td>
						<td>
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					
					<tr>
						<td><code>Channel Code</code></td>
						<td>Required</td>
						<td><input type="text" id="ChannelCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>Account Number</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>					
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><input type="submit" class="btn btn-success" value="Test Method"></td>
					</tr>
				</tbody>
			</table>
			 </div>			 
			 <div class="form-group">
      			<label for="Response">Response:</label><br>
     			<textarea class="form-control" rows="28" cols="80" id="comment" readonly></textarea>
    		</div>
		</form>
				</div>
				
				<!-- /*****************Amount Block********************/-->		  -->	
				
			   <div class="form-group">
		<form class="form-inline">
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
						<td colspan="2">						
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>					
					</tr>
					<tr>
						<td><code>DestinationinstitutionCode</code></td>
						<td>Required</td>
						<td>
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					
					<tr>
						<td><code>Channel Code</code></td>
						<td>Required</td>
						<td><input type="text" id="ChannelCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>Account Number</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>					
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><input type="submit" class="btn btn-success" value="Test Method"></td>
					</tr>
				</tbody>
			</table>
			 </div>			 
			 <div class="form-group">
      			<label for="Response">Response:</label><br>
     			<textarea class="form-control" rows="28" cols="80" id="comment" readonly></textarea>
    		</div>
		</form>
				</div>
				
				<!-- /*****************Amount Unblock********************/-->		  -->	
				
			   <div class="form-group">
		<form class="form-inline">
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
						<td colspan="2">						
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>					
					</tr>
					<tr>
						<td><code>DestinationinstitutionCode</code></td>
						<td>Required</td>
						<td>
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					
					<tr>
						<td><code>Channel Code</code></td>
						<td>Required</td>
						<td><input type="text" id="ChannelCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>Account Number</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>					
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><input type="submit" class="btn btn-success" value="Test Method"></td>
					</tr>
				</tbody>
			</table>
			 </div>			 
			 <div class="form-group">
      			<label for="Response">Response:</label><br>
     			<textarea class="form-control" rows="28" cols="80" id="comment" readonly></textarea>
    		</div>
		</form>
				</div>
				
				<!-- /*****************Financial Institution List********************/-->		  -->	
				
			   <div class="form-group">
		<form class="form-inline">
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
						<td colspan="2">						
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>					
					</tr>
					<tr>
						<td><code>DestinationinstitutionCode</code></td>
						<td>Required</td>
						<td>
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					
					<tr>
						<td><code>Channel Code</code></td>
						<td>Required</td>
						<td><input type="text" id="ChannelCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>Account Number</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>					
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><input type="submit" class="btn btn-success" value="Test Method"></td>
					</tr>
				</tbody>
			</table>
			 </div>			 
			 <div class="form-group">
      			<label for="Response">Response:</label><br>
     			<textarea class="form-control" rows="28" cols="80" id="comment" readonly></textarea>
    		</div>
		</form>
				</div>
				
				<!-- /***************** Mandate Advice********************/-->		  -->	
				
			   <div class="form-group">
		<form class="form-inline">
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
						<td colspan="2">						
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>					
					</tr>
					<tr>
						<td><code>DestinationinstitutionCode</code></td>
						<td>Required</td>
						<td>
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					
					<tr>
						<td><code>Channel Code</code></td>
						<td>Required</td>
						<td><input type="text" id="ChannelCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>Account Number</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>					
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><input type="submit" class="btn btn-success" value="Test Method"></td>
					</tr>
				</tbody>
			</table>
			 </div>			 
			 <div class="form-group">
      			<label for="Response">Response:</label><br>
     			<textarea class="form-control" rows="28" cols="80" id="comment" readonly></textarea>
    		</div>
		</form>
				</div>
				
				<!-- /*****************Response Codes********************/-->		  -->	
				
			   <div class="form-group">
		<form class="form-inline">
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
						<td colspan="2">						
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>					
					</tr>
					<tr>
						<td><code>DestinationinstitutionCode</code></td>
						<td>Required</td>
						<td>
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					
					<tr>
						<td><code>Channel Code</code></td>
						<td>Required</td>
						<td><input type="text" id="ChannelCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>Account Number</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>					
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><input type="submit" class="btn btn-success" value="Test Method"></td>
					</tr>
				</tbody>
			</table>
			 </div>			 
			 <div class="form-group">
      			<label for="Response">Response:</label><br>
     			<textarea class="form-control" rows="28" cols="80" id="comment" readonly></textarea>
    		</div>
		</form>
				</div>
				
				<!-- /*****************Reason Codes********************/-->		  -->	
				
			   <div class="form-group">
		<form class="form-inline">
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
						<td colspan="2">						
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>					
					</tr>
					<tr>
						<td><code>DestinationinstitutionCode</code></td>
						<td>Required</td>
						<td>
						<input type="text" id="DesInsCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					
					<tr>
						<td><code>Channel Code</code></td>
						<td>Required</td>
						<td><input type="text" id="ChannelCode" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>
					<tr>
						<td><code>Account Number</code></td>
						<td>Required</td>
						<td><input type="text" id="AccountNumber" value=""
							class="form-control"></td>
						<td id=""></td>
					</tr>					
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><input type="submit" class="btn btn-success" value="Test Method"></td>
					</tr>
				</tbody>
			</table>
			 </div>			 
			 <div class="form-group">
      			<label for="Response">Response:</label><br>
     			<textarea class="form-control" rows="28" cols="80" id="comment" readonly></textarea>
    		</div>
		</form>
				</div>
				
				
			</div>
		</div>
	</div>

	<footer class="container-fluid text-center">
		<p>&copy;<span id="year">2018</span> Neptune Software Group Plc</p>
	</footer>

	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</body>

</html> 
