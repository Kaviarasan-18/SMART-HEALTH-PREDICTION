<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Dashboard | Kidney Disease Prediction</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <!-- meanmenu CSS
		============================================ -->
    <link rel="stylesheet" href="css/meanmenu/meanmenu.min.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- jvectormap CSS
		============================================ -->
    <link rel="stylesheet" href="css/jvectormap/jquery-jvectormap-2.0.3.css">
    <!-- notika icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/notika-custom-icon.css">
    <!-- wave CSS
		============================================ -->
    <link rel="stylesheet" href="css/wave/waves.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="css/main.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- modernizr JS
		============================================ -->
<!--============================================ -->
	    <link rel="icon" type="image/png" href="img/favicon.ico"/>
	    <link rel="stylesheet" href="asset/css/bootstrap.min.css">
	    <link rel="stylesheet" href="asset/css/fontawsom-all.min.css">
	    <link rel="stylesheet" href="asset/css/animate.css">
	    <link rel="stylesheet" type="text/css" href="asset/css/style.css" />
  <!-- ============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    
<title>Adviser | Kidney Disease Prediction </title>
</head>
<%@ page import="java.sql.*" %>

<% Class.forName("com.mysql.jdbc.Driver"); 

HttpSession s=request.getSession();
String uname=(String)s.getAttribute("uname");

%>
<body style="background:#a5a5c0;">
 <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
<!-- ################# Header Starts Here#######################--->
    <header>
        <div id="nav-head" class="header-nav">
           
                <div class="row">
                    <div class="col-md-3 col-sm-12 nav-img">
                        <img src="asset/images/logo2.jpg" alt="">
                       <a data-toggle="collapse" data-target="#menu" href="#menu" ></a>
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


    <!-- Start Header Top Area -->
    <div class="header-top-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    
                </div>
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div class="header-top-menu">
                        <ul class="nav navbar-nav notika-top-nav">
                            <li class="nav-item dropdown">
                                   
                            </li>


                            <li class="nav-item"><a href="Login.jsp" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><span><i class="notika-icon notika-back"></i></span></a>
            
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Header Top Area -->
    
    <!-- Main Menu area start-->
    <div class="main-menu-area mg-tb-40">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <ul class="nav nav-tabs notika-menu-wrap menu-it-icon-pro">
                        <li class="active"><a href="Home.jsp"><i class="notika-icon notika-house"></i> Home</a>
                        </li>
                        <li><a href="CKD_Classification.jsp"><i class="notika-icon notika-support"></i> CKD Classification</a>
                        </li>
                        <li><a href="AccuracyMeasures.jsp"><i class="notika-icon notika-edit"></i> Accuracy Measures by class</a>
                        </li>
                    </ul>
                    </div>
                </div>
            </div>
        </div>
    <!-- Main Menu area End-->
<% 
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/kidneydiseaseprediction", "root", "root");


            Statement statement = connection.createStatement() ;
            ResultSet resultset = statement.executeQuery("select * from profile") ; 
        %>
    <!-- Start Sale Statistic area-->
    <div class="sale-statistic-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-8 col-sm-7 col-xs-12">
                    <div class="sale-statistic-inner notika-shadow mg-tb-30">
                        <div class="curved-inner-pro">
                            <div class="curved-ctn">
                                <h2>Profile Details</h2>
                                <TABLE BORDER="1" style="background-color: #FFFAFA" width="100%">
            <TR>
             <TH>Customer No</TH>
                <TH>Customer Name</TH>
                <TH>Residence</TH>
                <TH>State</TH>
                 <TH>Age</TH>
                  <TH>Father Education</TH>
                   <TH>Father Occupation</TH>
                    <TH>Father Age</TH>
                     <TH>Mother Education</TH>
                      <TH>Mother Occupation</TH>
                     <TH>Mother Age</TH>
                      <TH>Family Type</TH>
                       <TH>Annual Income Status</TH>
               
            </TR>
            <% while(resultset.next()){ %>
            <TR>
                <TD> <%= resultset.getString(1) %></td>
                <TD> <%= resultset.getString(3) %></TD>
                <TD> <%= resultset.getString(6) %></TD>
                <TD> <%= resultset.getString(7) %></TD>
                <TD> <%= resultset.getString(8) %></TD>
                <TD> <%= resultset.getString(9) %></TD>
                <TD> <%= resultset.getString(10) %></TD>
                <TD> <%= resultset.getString(11) %></TD>
                <TD> <%= resultset.getString(12) %></TD>
                <TD> <%= resultset.getString(13) %></TD>
                <TD> <%= resultset.getString(14) %></TD>
                <TD> <%= resultset.getString(15) %></TD>
                 <TD> <%= resultset.getString(16) %></TD>
             </TR>
            <% } %>
        </TABLE>
                            </div>
                        </div>
                       
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- End Sale Statistic area-->
   
   <% 
      
            Statement statement1 = connection.createStatement() ;
            ResultSet resultset1= statement1.executeQuery("select * from acrtest") ; 
        %>
    <!-- Start Sale Statistic area-->
    <div class="sale-statistic-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-8 col-sm-7 col-xs-12">
                    <div class="sale-statistic-inner notika-shadow mg-tb-30">
                        <div class="curved-inner-pro">
                            <div class="curved-ctn">
                                <h2>Albumin to Creatinine Ratio</h2>
                                <TABLE BORDER="1" style="background-color: #FFFAFA" width="100%">
            <TR> <TH>Patient No</TH>
                <TH>Blood Pressure</TH>
                <TH>Specific Gravity(sg)</TH>
                 <TH>Albumin(al)</TH>
                  <TH>Sugar(su)</TH>
                  <TH>Red blood cells(rbc)</TH>
                
               
            </TR>
            <% while(resultset1.next()){ %>
            <TR>
                <TD> <%= resultset1.getString(1) %></td>
                <TD> <%= resultset1.getString(3) %></TD>
                <TD> <%= resultset1.getString(4) %></TD>
                <TD> <%= resultset1.getString(5) %></TD>
                 <TD> <%= resultset1.getString(6) %></TD>
      <TD> <%= resultset1.getString(7) %></TD>

             </TR>
            <% } %>
        </TABLE>
                            </div>
                        </div>
                       
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- End Sale Statistic area-->
    
    <% 
     

            Statement statement2 = connection.createStatement() ;
            ResultSet resultset2 = statement2.executeQuery("select * from gftest") ; 
        %>
    <!-- Start Sale Statistic area-->
    <div class="sale-statistic-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-8 col-sm-7 col-xs-12">
                    <div class="sale-statistic-inner notika-shadow mg-tb-30">
                        <div class="curved-inner-pro">
                            <div class="curved-ctn">
                                <h2>Glomerular filtration Test</h2>
                                <TABLE BORDER="1" style="background-color: #FFFAFA" width="100%">
            <TR> <TH>Patient No</TH>
                <TH>Pus Cell(pc)</TH>
                <TH>Pus cell clumps(pcc)</TH>
                 <TH>Bacteria(ba)</TH>
                  <TH>Blood Glucose Random</TH>
                   <TH>Blood Urea</TH>
                    <TH>Serum Creatinine</TH>
                     <TH>Sodium(sod)</TH>
                      <TH>Potassium(pot)</TH>
                     <TH>Hemoglobin</TH>
                      
                      
               
            </TR>
            <% while(resultset2.next()){ %>
            <TR>
                <TD> <%= resultset2.getString(1) %></td>
                <TD> <%= resultset2.getString(3) %></TD>
                <TD> <%= resultset2.getString(4) %></TD>
                <TD> <%= resultset2.getString(5) %></TD>
                <TD> <%= resultset2.getString(6) %></TD>
                <TD> <%= resultset2.getString(7) %></TD>
                <TD> <%= resultset2.getString(8) %></TD>
                <TD> <%= resultset2.getString(9) %></TD>
                <TD> <%= resultset2.getString(10) %></TD>
                <TD> <%= resultset2.getString(11) %></TD>
                



             </TR>
            <% } %>
        </TABLE>
                            </div>
                        </div>
                       
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- End Sale Statistic area-->
   
   
   
   
       <% 
     

            Statement statement3 = connection.createStatement() ;
            ResultSet resultset3 = statement2.executeQuery("select * from kbttest") ; 
        %>
    <!-- Start Sale Statistic area-->
    <div class="sale-statistic-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-8 col-sm-7 col-xs-12">
                    <div class="sale-statistic-inner notika-shadow mg-tb-30">
                        <div class="curved-inner-pro">
                            <div class="curved-ctn">
                                <h2>Kidney Biopsy Test</h2>
                                <TABLE BORDER="1" style="background-color: #FFFAFA" width="100%">
            <TR> <TH>Patient No</TH>
               
                <TH>Packed cell volume(PCV)</TH>
                <TH>White Blood Cells Count(WC)</TH>
                 <TH>Red Blood Cells Count(RC)</TH>
               

                      
               
            </TR>
            <% while(resultset3.next()){ %>
            <TR>
                <TD> <%= resultset3.getString(1) %></td>
                <TD> <%= resultset3.getString(3) %></TD>
                <TD> <%= resultset3.getString(4) %></TD>
                <TD> <%= resultset3.getString(5) %></TD>



             </TR>
            <% } %>
        </TABLE>
                            </div>
                        </div>
                       
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- End Sale Statistic area-->
   
   
   
       <% 
     

            Statement statement4 = connection.createStatement() ;
            ResultSet resultset4 = statement2.executeQuery("select * from bloodtest") ; 
        %>
    <!-- Start Sale Statistic area-->
    <div class="sale-statistic-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-8 col-sm-7 col-xs-12">
                    <div class="sale-statistic-inner notika-shadow mg-tb-30">
                        <div class="curved-inner-pro">
                            <div class="curved-ctn">
                                <h2>Blood Test Details</h2>
                                <TABLE BORDER="1" style="background-color: #FFFAFA" width="100%">
            <TR> <TH>Patient No</TH>
              
                <TH>Hypertension(HYT)</TH>
                <TH>Diabetes Mellitus</TH>
                 <TH>Coronary Artery Disease</TH>
                 <TH>Appetite(appet)</TH>
                 <TH>Pedal Edema(pe)</TH>
                 <TH>Anemia(ane)</TH>
                 <TH>Chronic Kidney Disease</TH>
              	 <TH>Result</TH>

                      
               
            </TR>
            <% while(resultset4.next()){ %>
            <TR>
                <TD> <%= resultset4.getString(1) %></td>
                <TD> <%= resultset4.getString(3) %></TD>
                <TD> <%= resultset4.getString(4) %></TD>
                <TD> <%= resultset4.getString(5) %></TD>
                <TD> <%= resultset4.getString(6) %></TD>
                <TD> <%= resultset4.getString(7) %></TD>
                <TD> <%= resultset4.getString(8) %></TD>
                <TD> <%= resultset4.getString(9) %></TD>
                <TD> <%= resultset4.getString(10) %></TD>

    


             </TR>
            <% } %>
        </TABLE>
                            </div>
                        </div>
                       
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- End Sale Statistic area-->
   
   
    <!-- Start Footer area-->
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

    <!-- End Footer area-->
    <!-- jquery
		============================================ -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="js/jquery-price-slider.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="js/meanmenu/jquery.meanmenu.js"></script>
    <!-- counterup JS
		============================================ -->
    <script src="js/counterup/jquery.counterup.min.js"></script>
    <script src="js/counterup/waypoints.min.js"></script>
    <script src="js/counterup/counterup-active.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- jvectormap JS
		============================================ -->
    <script src="js/jvectormap/jquery-jvectormap-2.0.2.min.js"></script>
    <script src="js/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <script src="js/jvectormap/jvectormap-active.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="js/sparkline/jquery.sparkline.min.js"></script>
    <script src="js/sparkline/sparkline-active.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="js/flot/jquery.flot.js"></script>
    <script src="js/flot/jquery.flot.resize.js"></script>
    <script src="js/flot/curvedLines.js"></script>
    <script src="js/flot/flot-active.js"></script>
    <!-- knob JS
		============================================ -->
    <script src="js/knob/jquery.knob.js"></script>
    <script src="js/knob/jquery.appear.js"></script>
    <script src="js/knob/knob-active.js"></script>
    <!--  wave JS
		============================================ -->
    <script src="js/wave/waves.min.js"></script>
    <script src="js/wave/wave-active.js"></script>
    <!--  todo JS
		============================================ -->
    <script src="js/todo/jquery.todo.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="js/plugins.js"></script>
	<!--  Chat JS
		============================================ -->
    <script src="js/chat/moment.min.js"></script>
    <script src="js/chat/jquery.chat.js"></script>
    <!-- main JS
		============================================ -->
    <script src="js/main.js"></script>


</body>
<script src="asset/js/jquery-3.2.1.min.js"></script>
<script src="asset/js/popper.min.js"></script>
<script src="asset/js/bootstrap.min.js"></script>
<script src="asset/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
<script src="asset/js/script.js"></script>

</html>