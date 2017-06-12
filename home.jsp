<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="keywords" content="Secure,Messaging,secure Messaging" />

<title>Secure Messaging WebApplication</title>

<!-- Stylesheet -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/style2.css" />
<link rel="stylesheet" href="css/ionicons.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- Stylesheet End -->


<!--Favicon-->
<link rel="shortcut icon" type="image/png" href="images/fav.png" />

</head>
<body>

	<jsp:include page="db_conn.jsp"></jsp:include>

	<jsp:include page="inc/view/header_basic.jsp"></jsp:include>

	<!-- Body -->
	<div id="lp-register">
		<div class="container ">
			<div class="row">
				<div style="height: 75px;"></div>
				<div class="col-sm-2"></div>

				<jsp:include page="inc/model/client_loginform.jsp"></jsp:include>


			</div>
		</div>
		<!-- Body End -->

		<!-- Footer -->
		<div style="height: 50px;"></div>
		<%@include file="inc/copyright.html"%>
	</div>

	<!-- Footer End -->

	<!-- Scripts
    ================================================= -->
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/custom.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.appear.min.js"></script>
	<script src="js/jquery.incremental-counter.js"></script>
	<script src="js/script.js"></script>

</body>
</html>
