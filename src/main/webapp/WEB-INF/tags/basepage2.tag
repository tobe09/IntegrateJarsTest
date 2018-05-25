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
	<link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/styles.css" />" rel="stylesheet">
	<link href="<c:url value="/resources/css/new_edit.css" />" rel="stylesheet"/>
	<link href="<c:url value="/resources/css/profile.css" />" rel="stylesheet"/>
	<link href="<c:url value="/resources/css/menu.css" />" rel="stylesheet"/>
	
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="<c:url value="/resources/img/neptune_logo.png" />" type="image/x-icon">
	
	<!--Custom Font-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
	<!--[if lt IE 9]>
	<script src="<c:url value="/resources/js/html5shiv.js" />"></script>
	<script src="<c:url value="/resources/js/respond.min.js" />"></script>
	<![endif]-->		
	
</head>
<body>
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container-fluid col-xs-12">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed buttom-edit" data-toggle="collapse" data-target="#sidebar-collapse"><span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand header-text headimg" href="/orbitlite/homepage"><span><img alt="logo" class="img-responsive" src="<c:url value="/resources/img/neptune-logo.png" />"></span></a>
				
				<!-- Navbar Icons-->
				<ul class="nav navbar-top-links">
				    <!-- Software Name -->
				    <li class="dropdown menumarg1">
				        <font color="white" type="Calibri" size="4"><b>OrbitLite</b></font>
				    </li>
				    
				    <!-- Moved details to the right -->
				    <!-- Logout Icon -->
					<li class="dropdown navbar-right"><a class="dropdown-toggle" href="/orbitlite/logout">
						<em class="fa fa-power-off fa-2x icon-position"></em>
					</a>
					</li>
					
					<!-- Home Icon -->
					<li class="dropdown navbar-right">
					<a href="/orbitlite/homepage" class="dropdown-toggle">
						<em class="fa fa-home fa-2x icon-position"></em>
					</a>
					</li>
				    <!-- Basic Details -->
				    <li class="dropdown menumarg navbar-right">
				        <font color="white" size="2">${processDate}</font>
				    </li>
				    <li class="dropdown menumarg navbar-right">
				        <font color="white" size="2">Drawer Balance: </font><input type="text" class="headkey1" style="background-color: #f5f5f5; color: #3B5BB3;" value="${drawerBal}NGN" disabled/>
				    </li>
				    <li class="dropdown menumarg navbar-right">
				        <font color="white" size="2">Drawer No: </font><input type="text" class="headkey" style="background-color: #f5f5f5; color: #3B5BB3;" value="${drawerNo}" disabled/> 
				    </li>
				    <li class="dropdown menumarg navbar-right">
				        <font color="white" size="2">User: </font><input type="text" class="headkey" style="background-color: #f5f5f5; color: #3B5BB3;" value="${bankUser}" disabled/> 
				    </li>
				    <li class="dropdown menumarg navbar-right">
				        <font color="white" size="2">${bankName}</font>
				    </li>			    
				</ul>
			</div>
		</div><!-- /.container-fluid -->
	</nav>
	
	<!-- SideBar Starts Here -->
    <div class="container-fluid main-container">
      <div class="row">
        <div id="sidebar-collapse" class="sidebar col-sm-4 col-lg-3">
          <div class="divider"></div>
		<ul class="nav menu">
		    <!-- R/Ship Info Mgt.-->
		    <li class="parent"><a style="width: 335px; height: 35px; background: #f5f5f5; border-radius: 5px;" data-toggle="collapse" href="#sub-item-1">
				<em class="fa fa-user menufont">&nbsp;</em> <span class="sidebar_menulist menufont">Relationship Information Management</span><span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="fa fa-plus menufont"></em></span>
				</a>
				<ul class="children collapse menulist_child" id="sub-item-1" style="background: #3B5BB3;">
					<li><a class="" href="/orbitlite/acctbalenquiry" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span> <span class="sidebar_menulist"><b>Account Balance Enquiry</b></span>
					</a></li>
					<li><a class="" href="/orbitlite/custacctcreat" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span> <span class="sidebar_menulist"><b>Customer Account Creation</b></span>
					</a></li>
					
					<li><a class="" href="/orbitlite/personalcust" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span> <span class="sidebar_menulist"><b>Personal Customer Creation</b></span>
					</a></li>
					
					<li><a class="" href="/orbitlite/nonpersonalrim" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span> <span class="sidebar_menulist"><b>Non-Personal Customer Creation</b></span>
					</a></li>
					
					<li><a class="" href="/orbitlite/signphotover" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span> <span class="sidebar_menulist"><b>Signature And Photo Verification</b></span>
					</a></li>
				</ul>
			</li>
			
			<!-- Deposit Acct Processing-->
			<li class="parent"><a style="width: 335px; height: 35px; background: #f5f5f5; border-radius: 5px; margin-top: 5px;" data-toggle="collapse" href="#sub-item-2">
				<em class="fa fa-spinner menufont">&nbsp;</em> <span class="sidebar_menulist menufont">Deposit Acct Transaction Processing</span><span data-toggle="collapse" href="#sub-item-2" class="icon pull-right"><em class="fa fa-plus menufont"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-2" style="background: #3B5BB3;">
					<li><a class="" href="/orbitlite/CashWithdrawal" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span> <span class="sidebar_menulist"><b>Cash Withdrawal</b></span>
					</a></li>
					<li><a class="" href="/orbitlite/chequewithdrawal" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span> <span class="sidebar_menulist"><b>Cheque Withdrawal</b></span>
					</a></li>
				</ul>
			</li>
			
			<!-- Cash Deposit Processing-->
			<li class="parent"><a style="width: 335px; height: 35px; background: #f5f5f5; border-radius: 5px; margin-top: 5px;" data-toggle="collapse" href="#sub-item-3">
				<em class="fa fa-spinner menufont">&nbsp;</em> <span class="sidebar_menulist menufont">Cash Deposit Transaction Processing</span><span data-toggle="collapse" href="#sub-item-3" class="icon pull-right"><em class="fa fa-plus menufont"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-3" style="background: #3B5BB3;">
					<li><a class="" href="/orbitlite/cashdeposit" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>Cash Deposit</b></span>
					</a></li>
					<li><a class="" href="/orbitlite/loanrepymtcash" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>Loan Repayment by Cash</b></span>
					</a></li>
				</ul>
			</li>
			
			<!-- Group Loan Operation-->
			<li class="parent"><a style="width: 335px; height: 35px; background: #f5f5f5; border-radius: 5px; margin-top: 5px;" data-toggle="collapse" href="#sub-item-8">
				<em class="fa fa-cog menufont">&nbsp;</em> <span class="sidebar_menulist menufont">Group Loan Operation</span><span data-toggle="collapse" href="#sub-item-8" class="icon pull-right"><em class="fa fa-plus menufont"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-8" style="background: #3B5BB3;">
					<li><a class="" href="/orbitlite/grploanmeeting" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>Group Loan Meetings</b></span>
					</a></li>
					<li><a class="" href="/orbitlite/grploancashtrns" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>Group Loan Cash Transaction</b></span>
					</a></li>
				</ul>
			</li>
			
			<!-- Cheque Deposit Processing-->
			<li class="parent"><a style="width: 335px; height: 35px; background: #f5f5f5; border-radius: 5px; margin-top: 5px;" data-toggle="collapse" href="#sub-item-4">
				<em class="fa fa-spinner menufont">&nbsp;</em> <span class="sidebar_menulist menufont">Cheque Deposit Processing</span><span data-toggle="collapse" href="#sub-item-4" class="icon pull-right"><em class="fa fa-plus menufont"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-4" style="background: #3B5BB3;">
					<li><a class="" href="/orbitlite/transitchqdpst" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>Transit Cheque Deposit</b></span>
					</a></li>
					<li><a class="" href="/orbitlite/onuschqdpst" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>On-Us Cheque Deposit</b></span>
					</a></li>
				</ul>
			</li>
			
			<!-- Funds Transfer-->
			<li class="parent"><a style="width: 335px; height: 35px; background: #f5f5f5; border-radius: 5px; margin-top: 5px;" data-toggle="collapse" href="#sub-item-5">
				<em class="fa fa-money menufont">&nbsp;</em> <span class="sidebar_menulist menufont">Funds Transfer</span><span data-toggle="collapse" href="#sub-item-5" class="icon pull-right"><em class="fa fa-plus menufont"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-5" style="background: #3B5BB3;">
					<li><a class="" href="/orbitlite/fundstransfer" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>Inward Funds Transfer</b></span>
					</a></li>
					<li><a class="" href="/orbitlite/outwardfundtrans" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>Outward Funds Transfer</b></span>
					</a></li>
				</ul>
			</li>
			
			<!-- Teller Drawer Op-->
			<li class="parent"><a style="width: 335px; height: 35px; background: #f5f5f5; border-radius: 5px; margin-top: 5px;" data-toggle="collapse" href="#sub-item-9">
				<em class="fa fa-cog menufont">&nbsp;</em> <span class="sidebar_menulist menufont">Teller Drawer Operation</span><span data-toggle="collapse" href="#sub-item-9" class="icon pull-right"><em class="fa fa-plus menufont"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-9" style="background: #3B5BB3;">
					<li><a class="" href="/orbitlite/tellercloseout" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>Teller Drawer Close Out</b></span>
					</a></li>
					<li><a class="" href="/orbitlite/transjrnalenquiry" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>Transaction Journal Enquiry</b></span>
					</a></li>
					<li><a class="" href="/orbitlite/tllrcashin" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>Teller Cash In (Buying Cash)</b></span>
					</a></li>
					<li><a class="" href="/orbitlite/tllrcashout" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>Teller Cash Out (Selling Cash)</b></span>
					</a></li>
					<li><a class="" href="/orbitlite/glacctcrdt" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>GL Account Credit</b></span>
					</a></li>
					<li><a class="" href="/orbitlite/glacctdbt" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>GL Account Debit</b></span>
					</a></li>
				</ul>
			</li>
			
			<!-- Over The Counter(OTC) Trans Processing-->
			<li class="parent"><a style="width: 335px; height: 35px; background: #f5f5f5; border-radius: 5px; margin-top: 5px;" data-toggle="collapse" href="#sub-item-6">
				<em class="fa fa-spinner menufont">&nbsp;</em> <span class="sidebar_menulist menufont">Over-The-Counter Trans Processing</span><span data-toggle="collapse" href="#sub-item-6" class="icon pull-right"><em class="fa fa-plus menufont"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-6" style="background: #3B5BB3;">
					<li><a class="" href="/orbitlite/lctransacct" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>Local Cash Transfer from Account</b></span>
					</a></li>
					<li><a class="" href="/orbitlite/lctranscash" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>Local Cash Transfer by Cash</b></span>
					</a></li>
					<li><a class="" href="/orbitlite/lctransredemp" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>Local Cash Transfer Redemption</b></span>
					</a></li>
				</ul>
			</li>
			
			<!-- Utility Bills Payment-->
			<li class="parent"><a style="width: 335px; height: 35px; background: #f5f5f5; border-radius: 5px; margin-top: 5px;" data-toggle="collapse" href="#sub-item-7">
				<em class="fa fa-money menufont">&nbsp;</em> <span class="sidebar_menulist menufont">Utility Bills Payment</span><span data-toggle="collapse" href="#sub-item-7" class="icon pull-right"><em class="fa fa-plus menufont"></em></span>
				</a>
				<ul class="children collapse" id="sub-item-7" style="background: #3B5BB3;">
					<li><a class="" href="/orbitlite/ubpacct" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>Utility Bills Payment from Account</b></span>
					</a></li>
					<li><a class="" href="/orbitlite/ubpcash" style="background: #3B5BB3;">
						<span class="fa fa-arrow-right">&nbsp;</span><span class="sidebar_menulist"><b>Utility Bills Payment by Cash</b></span>
					</a></li>
				</ul>
			</li>
		</ul>
    </div>
	<!--/Sidebar Ends Here-->   
		    
    <!-- Main Content Here-->
	  <div class="col-sm-8 col-sm-offset-4 col-lg-9 col-lg-offset-3"> 
	    <div class="row">
		  <img class="img-responsive " src="<c:url value="/resources/img/orbitlite1.jpg" />" />
		  
		  <!-- Menus Container -->
		  <!-- <div class="col-lg-6 col-xs-offset-3 col-sm-7"> -->
		      <!-- <div class='circle-container'>
	              <a href='#' class='center'><img src='http://imgsrc.hubblesite.org/hu/db/images/hs-2003-28-a-thumb.jpg'></a>
	              <a href='#' class='deg0'><img src='http://imgsrc.hubblesite.org/hu/db/images/hs-1994-02-c-thumb.jpg'></a>
	              <a href='#' class='deg45'><img src='http://imgsrc.hubblesite.org/hu/db/images/hs-2005-37-a-thumb.jpg'></a>
	              <a href='#' class='deg90'><img src='http://imgsrc.hubblesite.org/hu/db/images/hs-2005-37-a-thumb.jpg'></a>
	              <a href='#' class='deg135'><img src='http://imgsrc.hubblesite.org/hu/db/images/hs-2010-26-a-thumb.jpg'></a>
	              <a href='#' class='deg180'><img src='http://imgsrc.hubblesite.org/hu/db/images/hs-2004-27-a-thumb.jpg'></a>
	              <a href='#' class='deg225'><img src='http://imgsrc.hubblesite.org/hu/db/images/hs-1992-17-a-thumb.jpg'></a>
	              <a href='#' class='deg270'><img src='http://imgsrc.hubblesite.org/hu/db/images/hs-2005-37-a-thumb.jpg'></a>
	              <a href='#' class='deg315'><img src='http://imgsrc.hubblesite.org/hu/db/images/hs-2004-32-d-thumb.jpg'></a>
              </div> -->
          <!-- </div> -->
		  <!-- End Menus Container -->
		  
		  <jsp:doBody></jsp:doBody>
		  
	    </div><!--Row ends here-->
	  </div>
    <!--Main Content Ends Here-->
    
    <div class="page-footer">
	    <p class="text-center"> Powered by Neptune Software Limited</p>
    </div>
  </div>
</div>
	
	
	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="/resources/js/bootstrap-datepicker.js" />"></script>
    <script src="<c:url value="/resources/js/custom.js" />"></script>
    
    <jsp:invoke fragment="scripts"></jsp:invoke>
		
</body>
</html> 
