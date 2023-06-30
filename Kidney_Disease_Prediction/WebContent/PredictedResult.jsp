<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Predicted | Result</title>
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
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
</head>
<body style="background:#a5a5c0;">
<a href="Home.jsp">Home</a>
<div style="background:#003366; height:60px;">
<h1 style="text-align: center;color:#ffffff;">Chronic Kidney Disease Predicted Result</h1>
</div>

<%
Class.forName("com.mysql.jdbc.Driver");

HttpSession s=request.getSession();
String uname=(String)s.getAttribute("uname");

%>


<!-- Main Menu area End-->
<% 
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/kidneydiseaseprediction", "root", "root");
		  Statement statement1 = connection.createStatement() ;
            ResultSet resultset1= statement1.executeQuery("select * from predicted_results where username='"+uname+"'") ; 
        %>
    <!-- Start Sale Statistic area-->
    <div class="sale-statistic-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-8 col-sm-7 col-xs-12">
                    <div class="sale-statistic-inner notika-shadow mg-tb-30">
                        <div class="curved-inner-pro">
                            <div class="curved-ctn">
                                <h2>GFR stages to classification CKD</h2>
                                <TABLE BORDER="1" style="background-color: #FFFAFA" width="100%">
            <TR> 
                <TH>User Name</TH>
                <TH>Stages of CKD</TH>
                 <TH>Glomerular Filtration Rate (GFR)</TH>
                  <TH>Action Plans</TH>
                  
                
               
            </TR>
            <% while(resultset1.next()){ %>
            <TR>
                <TD> <%= resultset1.getString(1) %></td>
                <TD> <%= resultset1.getString(2) %></TD>
                <TD> <%= resultset1.getString(3) %></TD>
                <TD> <%= resultset1.getString(4) %></TD>
                 
      			

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
    

</body>
</html>