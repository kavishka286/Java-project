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

<link rel="stylesheet" href="styles/home.css">
<link rel="stylesheet" href="styles/homeNav.css">
<link rel="stylesheet" href="styles/dashboard.css">
<link rel="stylesheet" href="styles/form_Select.css">

<title>Favorite Transfer</title>
<!--  <style type="text/css">
.gridform {
	display: grid;
	grid-template-columns: auto auto auto auto;
	grid-gap: 10px
}

#forms {
	background-color: red;
	width: 300px;
}
</style>
-->


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
	<section id="form_Selectid" style="background-image: url(images/home/homebg.jpeg); height: 700px;">
		


		<div class="form_Select">
			<div class="title">Favorite Transaction</div>
			

			<div class="gridform">

				<c:forEach var="ben" items="${benDetails}">
					<div id=forms>

						<form action="favFundTransProFinal" method="post">

							<h2>Account Number</h2>
							<input type="text" name="acc_no" value="${ben.receiver_acc}"
								readonly><br>

							<h2>Beneficiary Name</h2>
							<input type="text" name="ben_name" value="${ben.receiver_name}"
								readonly><br>

							<h2>User Account</h2>
							<input type="text" name="userid"
								value="<%=cusDetails.getIdCustomer()%>" readonly><br>

							<h2>Favpayeeid</h2>
							<input type="text" name="favpayeeid" value="${ben.favpayeeid}"
								readonly><br>

							<button type="submit" class="submit">Send</button>
						</form>
					</div>
				</c:forEach>

			</div>
		</div>


	</section>
</body>
</html>


