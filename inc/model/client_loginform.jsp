
<div class="container">
	<div class="card card-container">
		<!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
		<img id="profile-img" class="profile-img-card"
			src="images/avatar_2x.png" />
		<p id="profile-name" class="profile-name-card"></p>
		<form class="form-signin" method="post" action="login.jsp">
			<span id="reauth-email" class="reauth-email"></span> <input
				type="email" name="txtuname" class="form-control"
				placeholder="Username" required autofocus> <input
				type="password" name="txtpasswd" class="form-control"
				placeholder="Password" required>


			<div id="remember" class="checkbox">
				<label> <input type="checkbox" value="remember-me">
					Remember me
				</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block btn-signin"
				type="submit" value="submit">Sign in</button>
		</form>
		<!-- /form -->
		<a href="#" class="forgot-password"> Forgot the password? </a> <a
			href="Signup.jsp" style="text-align: center"> <br>Create
			account
		</a>
	</div>
	<!-- /card-container -->
</div>