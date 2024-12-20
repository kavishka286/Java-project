<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.oop.model.*"%>
<%@page import="com.oop.util.*"%>
<%@page import="com.oop.servlet.*"%>
<%@page import="java.util.*"%>
<%
Customer cusDetails = (Customer) request.getSession().getAttribute("cus");
request.setAttribute("cusDetails", cusDetails);
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>One Time Transfer</title>


<link rel="stylesheet" href="styles/home.css">
<link rel="stylesheet" href="styles/homeNav.css">
<link rel="stylesheet" href="styles/dashboard.css">
<link rel="stylesheet" href="styles/onetime_transfer.css">

</head>
<body>
	<header>
		<a href="index.jsp" class="logo"><img
			src="images/hi.jpg" alt=""></a>

		<ul>
			<li><a href="updateCustomerDetails.jsp"><img
					src="images/homeNav/person-circle.svg" alt=""></a></li>
			<li><a href="#"><img src="images/homeNav/bell.svg" alt=""></a></li>
			<li><a href="DeleteCustomerDetails.jsp"><img
					src="images/homeNav/gear.svg" alt=""></a></li>
			<li><a href="index.jsp"><img src="images/homeNav/exit.svg"
					alt=""></a></li>

		</ul>
	</header>


	<input type="checkbox" name="" id="sidebarcheck">
	<label for="sidebarcheck"> <img src="images/homeNav/list.svg"
		alt="" id="btn"> <img src="images/homeNav/x.svg" alt="" id="x">

	</label>
	<div class="sidebar">

		<div class="sideheader">OCEAN Bank</div>

		<ul>
			<li><a href="dashboard1.jsp">Dashboard</a></li>
			<li><a href="accounts.jsp">Accounts</a></li>
			<li><a href="fund_transfer.jsp">Fund transfer</a></li>
			
			

		</ul>

	</div>

	<!-- content -->

	<section
		style="background-image: url(images/home/homebg.jpeg); height: 800px;">
		
		<div class="form">
			<div class="title">One Time Transaction</div>
			
			
		<!-- FundTransferServlet -->
			<form action="FundTransfer" method="post">

				<h2>Account Number</h2>
				<input type="text" name="acc_no" required><br>

				<h2>Beneficiary Name</h2>
				<input type="text" name="ben_name" required><br>

				<h2>Amount</h2>
				<input type="text" name="amount" required><br>

				<h2>Date</h2>
				<input type="text" name="date" id="currentDate" readonly><br>

				<h2>Time</h2>
				<input type="text" name="time" id="currentTime" readonly><br>

				<h2>User Account</h2>
				<input type="text" name="userid"
					value="<%=cusDetails.getIdCustomer()%>" readonly><br>

				<button type="submit" class="submit">Send</button>
			</form>



		</div>


		<script>
			//get date 

			var today = new Date();
			var date = today.getFullYear() + '-' + (today.getMonth() + 1) + '-'
					+ today.getDate();
			document.getElementById("currentDate").value = date;
		</script>

		<script>
			//get time
			var today = new Date();
			var time = today.getHours() + ":" + today.getMinutes() + ":"
					+ today.getSeconds();
			document.getElementById("currentTime").value = time;
		</script>
	</section>
</body>
</html>