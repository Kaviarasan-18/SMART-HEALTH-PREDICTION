<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<title>Login Page</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

    <!-- custom css file link  -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Smart Health Prediction System</title>

    
    <link rel="stylesheet" href="asset/css/bootstrap.min.css">
    <link rel="stylesheet" href="asset/css/fontawsom-all.min.css">
    <link rel="stylesheet" href="asset/css/animate.css">
    
	
	
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="img/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lvendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lfonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lvendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="lvendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lvendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="lcss/util.css">
	<link rel="stylesheet" type="text/css" href="lcss/main.css">
<!--===============================================================================================-->
</head>
<body>
<!-- ################# Header Starts Here#######################--->
    <header>
        <div id="nav-head" class="header-nav">
           
                <div class="row">
                    <div class="col-md-3 col-sm-12 nav-img">
                        <img src="asset/images/logo2.jpg" alt="">
                       <a data-toggle="collapse" data-target="#menu" href="#menu" ><i class="fas d-block d-md-none small-menu fa-bars"></i></a>
                    </div>
                    <div id="menu" class="col-md-9 d-none d-md-block nav-item">
                        <ul>
                            <li><a class="animated bounceInDown" href="FrontPage.jsp">Home</a></li>
                            <li><a class="animated bounceInDown" href="Login.jsp">Patient Module</a></li>
                            <li><a class="animated bounceInDown" href="AdminLogin.jsp">Admin Module</a></li>
                            <li><a class="animated bounceInDown" href="services.html">Services</a></li>
                            <li><a class="animated bounceInDown" href="gallery.html">Gallery</a></li>
                            <li><a class="animated bounceInDown" href="contact_us.html">Contact Us</a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>

    </header>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="rimages/doc.png" alt="IMG">
				</div>

				<form method="Post" action="AdminLoginServlet" class="login100-form validate-form">
					<span class="login100-form-title">
						Admin Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="lemail" placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="lpwd" placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="#">
							Username / Password?
						</a>
					</div>

					
				</form>
			</div>
		</div>
	</div>
	
        <div class="copy">
            <div class="container">
               <a href="">2023 &copy; All Rights Reserved | Designed and Developed by KSSL</a>
                <span>
                <a><i class="fab fa-github"></i></a>
                <a><i class="fab fa-google-plus-g"></i></a>
                <a><i class="fab fa-pinterest-p"></i></a>
                <a><i class="fab fa-twitter"></i></a>
                <a><i class="fab fa-facebook-f"></i></a>
        </span>
            </div>

        </div>
	
	

	
<!--===============================================================================================-->	
	<script src="lvendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="lvendor/bootstrap/js/popper.js"></script>
	<script src="lvendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="lvendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="lvendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="ljs/main.js"></script>

</body>
	<script src="asset/js/jquery-3.2.1.min.js"></script>
	<script src="asset/js/popper.min.js"></script>
	<script src="asset/js/bootstrap.min.js"></script>
	<script src="asset/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
	<script src="asset/js/script.js"></script>
</html>