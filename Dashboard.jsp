<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard | Secure Messaging</title>

<title>Dashboard | Secure Messaging</title>
<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Cookie">
<link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/styles.css">
<link rel="stylesheet" href="assets/css/Pretty-Header.css">
<link rel="stylesheet" href="assets/css/Pretty-Footer.css">
<link rel="stylesheet" href="assets/css/Pretty-Registration-Form.css">
<link rel="stylesheet" href="assets/css/footer.css">


<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/ionicons.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link href="css/emoji.css" rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-default custom-header">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="Dashboard.jsp"><img
				src="images/logo.png" alt="logo" /></a>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse">
			<ul class="nav navbar-nav links">
				<li role="presentation"><a href="#">Overview </a></li>
				<li role="presentation"><a href="#">Surveys </a></li>
				<li role="presentation"><a href="#"> Reports</a></li>
				<li role="presentation"><a href="#" class="custom-navbar">
						Roles<span class="badge">new</span>
				</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" aria-expanded="false" href="#"> <span
						class="caret"></span><img src="assets/img/avatar.jpg"
						class="dropdown-image"></a>
					<%
						session.getAttribute("fullname");
					%>
					<ul class="dropdown-menu dropdown-menu-right">
						<li><a href="user-setting.jsp">Settings </a></li>
						
						<li class="active"><a href="logout.jsp">Logout </a></li>
					</ul></li>
			</ul>
		</div>
	</div>
	</nav>

	<div id="page-contents">
		<div class="container">
			<div class="row">

				<!-- Newsfeed Common Side Bar Left
          ================================================= -->
				<div class="col-md-3 static">
					<div class="profile-card">
						<img src="images/users/user-1.jpg" alt="user"
							class="profile-photo" />
						<h5>
							<a href="timeline.html" class="text-white">
								<%
									String fname = (String) session.getAttribute("full_name");
									out.println(fname);
								%>
							</a>
						</h5>

					</div>
					<!--profile card ends-->
					<ul class="nav-news-feed">
						<li><i class="icon ion-ios-paper"></i>
						<div>
								<a href="newsfeed.html">My Newsfeed</a>
							</div></li>
						<li><i class="icon ion-ios-people"></i>
						<div>
								<a href="newsfeed-people-nearby.html">People Nearby</a>
							</div></li>
						<li><i class="icon ion-ios-people-outline"></i>
						<div>
								<a href="newsfeed-friends.html">Friends</a>
							</div></li>
						<li><i class="icon ion-chatboxes"></i>
						<div>
								<a href="newsfeed-messages.html">Messages</a>
							</div></li>
						<li><i class="icon ion-images"></i>
						<div>
								<a href="newsfeed-images.html">Images</a>
							</div></li>
						<li><i class="icon ion-ios-videocam"></i>
						<div>
								<a href="newsfeed-videos.html">Videos</a>
							</div></li>
					</ul>
					<!--news-feed links ends-->

				</div>

				<!-- leftbar ends -->


				<!-- Newsfeed Common Side Bar Right
          ================================================= -->
				<div class="col-sm-3 static">

					<div id="chat-block">
						<div class="title">Chat online</div>
						<ul class="online-users list-inline">
							<li><a href="newsfeed-messages.html" title="Linda Lohan"><img
									src="images/users/user-2.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
							<li><a href="newsfeed-messages.html" title="Sophia Lee"><img
									src="images/users/user-3.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
							<li><a href="newsfeed-messages.html" title="John Doe"><img
									src="images/users/user-4.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
							<li><a href="newsfeed-messages.html" title="Alexis Clark"><img
									src="images/users/user-5.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
							<li><a href="newsfeed-messages.html" title="James Carter"><img
									src="images/users/user-6.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
							<li><a href="newsfeed-messages.html" title="Robert Cook"><img
									src="images/users/user-7.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
							<li><a href="newsfeed-messages.html" title="Richard Bell"><img
									src="images/users/user-8.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
							<li><a href="newsfeed-messages.html" title="Anna Young"><img
									src="images/users/user-9.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
							<li><a href="newsfeed-messages.html" title="Julia Cox"><img
									src="images/users/user-10.jpg" alt="user"
									class="img-responsive profile-photo" /><span
									class="online-dot"></span></a></li>
						</ul>
					</div>
					<!--chat block ends-->
				</div>


			</div>
		</div>
	</div>
	<div class="row register-form">
		<div class="col-md-12">
			<jsp:include page="inc/view/footer.jsp"></jsp:include>
		</div>
	</div>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>