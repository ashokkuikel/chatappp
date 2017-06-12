<nav class="navbar navbar-default custom-header">
        <div class="container-fluid">
       <div class="navbar-header"><a class="navbar-brand navbar-link" href="#"><h1>Secure <span>Messaging </span> </h1></a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav links">
                    <li role="presentation"><a href="#">Overview </a></li>
                    <li role="presentation"><a href="#">Surveys </a></li>
                    <li role="presentation"><a href="#"> Reports</a></li>
                    <li role="presentation"><a href="#" class="custom-navbar"> Roles<span class="badge">new</span></a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false" href="#"> <span class="caret"></span><img src="assets/img/avatar.jpg" class="dropdown-image"></a><% session.getAttribute("fullname"); %>
                        <ul class="dropdown-menu dropdown-menu-right" role="menu">
                            <li role="presentation"><a href="#">Settings </a></li>
                             <li  class="active"><a href="logout.jsp">Logout </a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    