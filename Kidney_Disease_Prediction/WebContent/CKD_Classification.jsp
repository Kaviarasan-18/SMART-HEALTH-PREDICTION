<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CKD Classification</title>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
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
</head>
 <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
<body style="background:#a5a5c0;">
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
                        <li><a href="Home.jsp"><i class="notika-icon notika-house"></i> Home</a>
                        </li>
                        <li class="active"><a href="CKD_Classification.jsp"><i class="notika-icon notika-support"></i> CKD Classification</a>
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

//Confusion Matrix
 int trpv;
 int trnv;
 int flpv;
 int flnv;


//ACR_Test
String bp = "";
String sg = "";
String al = "";
String su = "";
String rbc = "";

//gft_Test
String pc = "";
String pcc = "";
String ba = "";
String bgr = "";
String bu = "";
String sc = "";
String sod = "";
String pot = "";
String hemo = "";
String hemo1 = "";

//kbt_Test
String pcv = "";
String wc = "";
String rc = "";


//Blood_Test
String htn = "";
String dm = "";
String cad = "";
String appet ="";
String pe ="";
String ane ="";
String clas ="";
String Result ="";
String ckd ="";

HttpSession s=request.getSession();
String uname=(String)s.getAttribute("uname");
System.out.println(uname);

Class.forName("com.mysql.jdbc.Driver");
Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/kidneydiseaseprediction", "root", "root");
try{
	Statement statement = connection.createStatement() ;
	ResultSet rs = statement.executeQuery("select * from acrtest where username='"+uname+"'") ; 
	while(rs.next()){
		bp = rs.getString("bp");
		sg = rs.getString("sg");
		al = rs.getString("al");
		su = rs.getString("su");
		rbc = rs.getString("rbc");
	}
}catch(Exception e){
	e.printStackTrace();
}

try{
	Statement statement1 = connection.createStatement() ;
	ResultSet rs1 = statement1.executeQuery("select * from gftest where username='"+uname+"'") ; 
	while(rs1.next()){
		pc = rs1.getString("pc");
		pcc = rs1.getString("pcc");
		ba = rs1.getString("ba");
		bgr = rs1.getString("bgr");
		bu = rs1.getString("bu");
		sc = rs1.getString("sc");
		sod = rs1.getString("sod");
		pot = rs1.getString("pot");
		hemo = rs1.getString("hemo");
		hemo1 = rs1.getString("hemo1");
	}

}catch(Exception e){
	e.printStackTrace();
}

try{
	Statement statement2 = connection.createStatement() ;
	ResultSet rs2 = statement2.executeQuery("select * from kbttest where username='"+uname+"'") ; 
	while(rs2.next()){
		pcv = rs2.getString("pcv");
		wc = rs2.getString("wc");
		rc = rs2.getString("rc");
		
	}
}catch(Exception e){
	e.printStackTrace();
}

try{
	Statement statement3 = connection.createStatement() ;
	ResultSet rs3 = statement3.executeQuery("select * from bloodtest where username='"+uname+"'") ; 
	while(rs3.next()){
		htn = rs3.getString("htn");
		dm = rs3.getString("dm");
		cad = rs3.getString("cad");
		appet = rs3.getString("appet");
		pe = rs3.getString("pe");
		ane = rs3.getString("ane");
		clas = rs3.getString("class");
		Result = rs3.getString("Result");
		ckd = rs3.getString("ckd");
	}

}catch(Exception e){
	e.printStackTrace();
}

String stage = "Kidney damage with normal or increase GFR";
String gfr_rate = "90 or above";
String action_plans = "Diagnosis and treatment of comorbid conditions, disease progression, reduction of risk factors for cardiovascular disease";

String stage1 = "Kidney damage with a mild decrease in GFR";
String gfr_rate1 = "60 to 89";
String action_plans1 = "Estimation of disease progression";

String stage2 = "Moderate decrease in GFR";
String gfr_rate2 = "30 to 59";
String action_plans2 = "Evaluation and treatment of disease complications";

String stage3 = " Severe reduction in GFR";
String gfr_rate3 = "15 to 29";
String action_plans3 = "Preparation of kidney replacement treatment (dialysis, transplantation)";

String stage4 = "Kidney failure";
String gfr_rate4 = "Kidney failure";
String action_plans4 = "Kidney replacement therapy(if uremia present)";


if(Result.equals("CKD")&&htn.equals("Yes")&&ane.equals("Yes")){
	PreparedStatement ps = connection.prepareStatement("insert into predicted_results values (?,?,?,?)");
	ps.setString(1, uname);
	ps.setString(2, stage4);
	ps.setString(3, gfr_rate4);
	ps.setString(4, action_plans4);
	ps.executeUpdate();
}else if(Result.equals("CKD")&&htn.equals("Yes")&&ane.equals("No")){
	PreparedStatement ps = connection.prepareStatement("insert into predicted_results values (?,?,?,?)");
	ps.setString(1, uname);
	ps.setString(2, stage3);
	ps.setString(3, gfr_rate3);
	ps.setString(4, action_plans3);
	ps.executeUpdate();
}else if(Result.equals("CKD")&&htn.equals("No")&&ane.equals("Yes")){
	PreparedStatement ps = connection.prepareStatement("insert into predicted_results values (?,?,?,?)");
	ps.setString(1, uname);
	ps.setString(2, stage2);
	ps.setString(3, gfr_rate2);
	ps.setString(4, action_plans2);
	ps.executeUpdate();
}else if(Result.equals("CKD")&&htn.equals("No")&&ane.equals("No")){
	PreparedStatement ps = connection.prepareStatement("insert into predicted_results values (?,?,?,?)");
	ps.setString(1, uname);
	ps.setString(2, stage1);
	ps.setString(3, gfr_rate1);
	ps.setString(4, action_plans1);
	ps.executeUpdate();
}else{
	PreparedStatement ps = connection.prepareStatement("insert into predicted_results values (?,?,?,?)");
	ps.setString(1, uname);
	ps.setString(2, stage);
	ps.setString(3, gfr_rate);
	ps.setString(4, action_plans);
	ps.executeUpdate();
}

String residence="";
String state="";
String age="";
String fedu="";
String focc="";
String fage="";
String medu="";
String mocc="";
String mage="";
String ftype="";
String annualincome="";

String bp1=""; 
String hsc="";
String medium="";
String location="";
String hscstream="";

String course="";
String admtype="";
String c_satisfy="";
String s_satisfy="";
String exp_src="";
String univ_like="";
String univ_edusys="";
String univ_infra="";
String extra_curri="";
String enter_facility="";

String e_curri_in="";
String c_curri_in="";
String place_conf="";

String f_stress="";
String univ_stress="";
String study_hr="";
String usg_s_media="";
String usg_mobile="";
String eye_prob="";
String dropout="";
String capacity="";
String type="";
 

String battry="";
String digital="";
String producttype="";

String capasity="";
String productbrand="";
String ram="";
String processor="";
String backlit="";
String harddisk="";
String battrytype="";
String gamming="";
String productweight="";
String battrylife="";
String prductspeed="";
String ssc = "";

String status1="No";


  		
try
{
		//System.out.println("user namein login"+log.getid());
		//System.out.println("user namein login"+log.getPassword());
		 //query="SELECT Email,password FROM docregister d where Email=? and password=?";
		Connection connection1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/kidneydiseaseprediction", "root", "root");

		String query="SELECT residence,state,age,fedu,focc,fage,medu,mocc,mage,ftype,annualincome,bp,sg,al,su,rbc,pc,pcc,ba,bgr,bu,sc,sod,pot,hemo,hemo1,pcv,wc,rc,htn,dm,cad,appet,pe,ane,class FROM profile,acrtest,gftest,kbttest,bloodtest where profile.id=acrtest.id and profile.id=gftest.id and profile.id=kbttest.id and profile.id=bloodtest.id order by profile.id desc limit 1;";
		PreparedStatement ps = connection1.prepareStatement(query);
	    ResultSet resultSet = ps.executeQuery();
		
	    

		if(resultSet.next())
		{
			//residence=resultSet.getString(1).toString();
			
			if(resultSet.getString(1).toString().equals("Rural"))
			{
				residence="1";
			}
			else if(resultSet.getString(1).toString().equals("Urban"))
			{
				residence="2";
			}
			
			else 
			{
				residence="0";
			}			
			//System.out.println(residence);
			//state=resultSet.getString(2).toString();
			
			if(resultSet.getString(2).toString().equals("TAMILNADU"))
			{
				state="1";
			}
			else if(resultSet.getString(2).toString().equals("ANDRAPRADESH"))
			{
				state="2";
			}
			else if(resultSet.getString(2).toString().equals("KERALA"))
			{
				state="3";
			}
			else if(resultSet.getString(2).toString().equals("KARNATAKA"))
			{
				state="4";
			}
			else 
			{
				state="0";
			}
			
			
			
			//age=resultSet.getString(3).toString();
			if(resultSet.getString(3).toString().equals("Below18"))
			{
				age="1";
			}
			else if(resultSet.getString(3).toString().equals("18-20"))
			{
				age="2";
			}
			else if(resultSet.getString(3).toString().equals("18Above"))
			{
				age="3";
			}
			
			else 
			{
				age="0";
			}
			//fedu=resultSet.getString(4).toString();
			if(resultSet.getString(4).toString().equals("Illiterate"))
			{
				fedu="1";
			}
			else if(resultSet.getString(4).toString().equals("Sec"))
			{
				fedu="2";
			}
			else if(resultSet.getString(4).toString().equals("HSec"))
			{
				fedu="3";
			}
			else if(resultSet.getString(4).toString().equals("UG"))
			{
				fedu="4";
			}
			else if(resultSet.getString(4).toString().equals("PG"))
			{
				fedu="5";
			}
			else 
			{
				fedu="0";
			}
			//focc=resultSet.getString(5).toString();
			//focc=resultSet.getString(5).toString();
			if(resultSet.getString(5).toString().equals("GovtService"))
			{
				focc="1";
			}
			else if(resultSet.getString(5).toString().equals("PvtServices"))
			{
				focc="2";
			}
			else if(resultSet.getString(5).toString().equals("Business"))
			{
				focc="3";
			}
			else if(resultSet.getString(5).toString().equals("Agriculture"))
			{
				focc="4";
			}
			else if(resultSet.getString(5).toString().equals("Retried"))
			{
				focc="5";
			}
			else 
			{
				focc="0";
			}
			//fage=resultSet.getString(6).toString();
			
			if(resultSet.getString(6).toString().equals("30-40"))
			{
				fage="1";
			}
			else if(resultSet.getString(6).toString().equals("40-50"))
			{
				fage="2";
			}
			else if(resultSet.getString(6).toString().equals("50-60"))
			{
				fage="3";
			}
			else if(resultSet.getString(6).toString().equals("60Above"))
			{
				fage="4";
			}
			
			else 
			{
				fage="0";
			}
			
			
			//medu=resultSet.getString(7).toString();
			if(resultSet.getString(7).toString().equals("Illiterate"))
			{
				medu="1";
			}
			else if(resultSet.getString(7).toString().equals("Sec"))
			{
				medu="2";
			}
			else if(resultSet.getString(7).toString().equals("HSec"))
			{
				medu="3";
			}
			else if(resultSet.getString(7).toString().equals("UG"))
			{
				medu="4";
			}
			else if(resultSet.getString(7).toString().equals("PG"))
			{
				medu="5";
			}
			else 
			{
				medu="0";
			}
			//mocc=resultSet.getString(8).toString();
			
			if(resultSet.getString(8).toString().equals("GovtService"))
			{
				mocc="1";
			}
			else if(resultSet.getString(8).toString().equals("PvtServices"))
			{
				mocc="2";
			}
			else if(resultSet.getString(8).toString().equals("Business"))
			{
				mocc="3";
			}
			else if(resultSet.getString(8).toString().equals("Agriculture"))
			{
				mocc="4";
			}
			else if(resultSet.getString(8).toString().equals("Retried"))
			{
				mocc="5";
			}
			else 
			{
				mocc="0";
			}
			
			
			
			//mage=resultSet.getString(9).toString();
			if(resultSet.getString(9).toString().equals("30-40"))
			{
				mage="1";
			}
			else if(resultSet.getString(9).toString().equals("40-50"))
			{
				mage="2";
			}
			else if(resultSet.getString(9).toString().equals("50-60"))
			{
				mage="3";
			}
			else if(resultSet.getString(9).toString().equals("60Above"))
			{
				mage="4";
			}
			
			else 
			{
				mage="0";
			}
			
			
			//ftype=resultSet.getString(10).toString();
			if(resultSet.getString(10).toString().equals("Nuclear"))
			{
				ftype="1";
			}
			else if(resultSet.getString(10).toString().equals("Joint"))
			{
				ftype="2";
			}
			else 
			{
				ftype="0";
			}
			
			//annualincome=resultSet.getString(11).toString();
			if(resultSet.getString(11).toString().equals("Low"))
			{
				annualincome="1";
			}
			else if(resultSet.getString(11).toString().equals("Medium"))
			{
				annualincome="2";
			}
			else if(resultSet.getString(11).toString().equals("High"))
			{
				annualincome="3";
			}
			else if(resultSet.getString(11).toString().equals("VHigh"))
			{
				annualincome="4";
			}
			else 
			{
				annualincome="0";
			}
			//ssc=resultSet.getString(12).toString();
			if(resultSet.getString(12).toString().equals("120/80 mmHg"))
			{
				ssc="1";
			}
			else if(resultSet.getString(12).toString().equals("130/80 mmHg"))
			{
				ssc="2";
			}
			else if(resultSet.getString(12).toString().equals("135/85 mmHg"))
			{
				ssc="3";
			}
			else if(resultSet.getString(12).toString().equals("140/90 mmHg"))
			{
				ssc="4";
			}
			else if(resultSet.getString(12).toString().equals("150/100 mmHg"))
			{
				ssc="5";
			}
			else 
			{
				ssc="0";
			}
			//hsc=resultSet.getString(13).toString();
			if(resultSet.getString(13).toString().equals("1.005"))
			{
				hsc="1";
			}
			else if(resultSet.getString(13).toString().equals("1.010"))
			{
				hsc="2";
			}
			else if(resultSet.getString(13).toString().equals("1.015"))
			{
				hsc="3";
			}
			else if(resultSet.getString(13).toString().equals("1.020"))
			{
				hsc="4";
			}
			else if(resultSet.getString(13).toString().equals("1.025"))
			{
				hsc="5";
			}
			else 
			{
				hsc="0";
			}
			//medium=resultSet.getString(14).toString();
			
			if(resultSet.getString(14).toString().equals("0"))
			{
				medium="1";
			}
			else if(resultSet.getString(14).toString().equals("1"))
			{
				medium="2";
			}
			else if(resultSet.getString(14).toString().equals("2"))
			{
				medium="3";
			}
			else if(resultSet.getString(14).toString().equals("3"))
			{
				medium="4";
			}
			else if(resultSet.getString(14).toString().equals("4"))
			{
				medium="5";
			}
					else 
			{
						medium="0";
			}
			//location=resultSet.getString(15).toString();
			
			if(resultSet.getString(15).toString().equals("0"))
			{
				location="1";
			}
			else if(resultSet.getString(15).toString().equals("1"))
			{
				location="2";
			}
			else if(resultSet.getString(15).toString().equals("2"))
			{
				location="3";
			}
			else if(resultSet.getString(15).toString().equals("3"))
			{
				location="4";
			}
			else if(resultSet.getString(15).toString().equals("4"))
			{
				location="5";
			}
			else if(resultSet.getString(15).toString().equals("5"))
			{
				location="6";
			}
					else 
			{
						location="0";
			}
			//hscstream=resultSet.getString(16).toString();
			if(resultSet.getString(16).toString().equals("Normal"))
			{
				hscstream="1";
			}
			else if(resultSet.getString(16).toString().equals("Abnormal"))
			{
				hscstream="2";
			}
			
			else 
			{
						hscstream="0";
			}
			
			//course=resultSet.getString(17).toString();
			
			if(resultSet.getString(17).toString().equals("Normal"))
			{
				course="1";
			}
			else if(resultSet.getString(17).toString().equals("Abnormal"))
			{
				course="2";
			}
			
					else 
			{
						course="0";
			}
			
			//admtype=resultSet.getString(18).toString();
			if(resultSet.getString(18).toString().equals("Present"))
			{
				admtype="1";
			}
			else if(resultSet.getString(18).toString().equals("Not-Present"))
			{
				admtype="2";
			}
			
			else 
			{
				admtype="0";
			}
			
			//c_satisfy=resultSet.getString(19).toString();
			
			if(resultSet.getString(19).toString().equals("Present"))
			{
				c_satisfy="1";
			}
			else if(resultSet.getString(19).toString().equals("Not-Present"))
			{
				c_satisfy="2";
			}
			
			else 
			{
				c_satisfy="0";
			}
			
			
			
			//s_satisfy=resultSet.getString(20).toString();
			
			if(resultSet.getString(20).toString().equals("140 mgs/dl"))
			{
				s_satisfy="1";
			}
			else if(resultSet.getString(20).toString().equals("160 mgs/dl"))
			{
				s_satisfy="2";
			}
			else if(resultSet.getString(20).toString().equals("180 mgs/dl"))
			{
				s_satisfy="3";
			}
			else if(resultSet.getString(20).toString().equals("190 mgs/dl"))
			{
				s_satisfy="4";
			}
			
			else 
			{
				s_satisfy="0";
			}
			
			
			
			
			//exp_src=resultSet.getString(21).toString();
			
			if(resultSet.getString(21).toString().equals("24 mgs/dl"))
			{
				exp_src="1";
			}
			else if(resultSet.getString(21).toString().equals("30 mgs/dl"))
			{
				exp_src="2";
			}
			else if(resultSet.getString(21).toString().equals("45 mgs/dl"))
			{
				exp_src="3";
			}
			else if(resultSet.getString(21).toString().equals("60 mgs/dl"))
			{
				exp_src="4";
			}
			
			else 
			{
				exp_src="0";
			}

			if(resultSet.getString(22).toString().equals("1.35 mgs/dl"))
			{
				univ_like="1";
			}
			else if(resultSet.getString(22).toString().equals("1.45 mgs/dl"))
			{
				univ_like="2";
			}
			else if(resultSet.getString(22).toString().equals("1.65 mgs/dl"))
			{
				univ_like="3";
			}
			else if(resultSet.getString(22).toString().equals("2.00 mgs/dl"))
			{
				univ_like="4";
			}
		
			else 
			{
				univ_like="0";
			}

			if(resultSet.getString(23).toString().equals("135 mEq/L"))
			{
				univ_edusys="1";
			}
			else if(resultSet.getString(23).toString().equals("145 mEq/L"))
			{
				univ_edusys="2";
			}
			else if(resultSet.getString(23).toString().equals("155 mEq/L"))
			{
				univ_edusys="3";
			}
			else if(resultSet.getString(23).toString().equals("165 mEq/L"))
			{
				univ_edusys="4";
			}
			
			else 
			{
				univ_edusys="0";
			}
			
			if(resultSet.getString(24).toString().equals("3.5 mEq/L"))
			{
				univ_infra="1";
			}
			else if(resultSet.getString(24).toString().equals("4.5 mEq/L"))
			{
				univ_infra="2";
			}
			else if(resultSet.getString(24).toString().equals("5.5 mEq/L"))
			{
				univ_infra="3";
			}
			else if(resultSet.getString(24).toString().equals("5.8 mEq/L"))
			{
				univ_infra="4";
			}
			
			else 
			{
				univ_infra="0";
			}
			
			
			
			if(resultSet.getString(25).toString().equals("13.5 grms"))
			{
				extra_curri="1";
			}
			else if(resultSet.getString(25).toString().equals("14.5 mEq/L"))
			{
				extra_curri="2";
			}
			else if(resultSet.getString(25).toString().equals("16.5 mEq/L"))
			{
				extra_curri="3";
			}
			else if(resultSet.getString(25).toString().equals("17.8 mEq/L"))
			{
				extra_curri="4";
			}
			
			else 
			{
				extra_curri="0";
			}
			
			
			
			
			
			if(resultSet.getString(26).toString().equals("0.36"))
			{
				enter_facility="1";
			}
			else if(resultSet.getString(26).toString().equals("0.48"))
			{
				enter_facility="2";
			}
			else if(resultSet.getString(26).toString().equals("0.95"))
			{
				enter_facility="3";
			}
			else if(resultSet.getString(26).toString().equals("1.48"))
			{
				enter_facility="4";
			}
			
			else 
			{
				enter_facility="0";
			}
			
				
			
			

			if(resultSet.getString(27).toString().equals("3000 cells/cumm"))
			{
				e_curri_in="1";
			}
			else if(resultSet.getString(27).toString().equals("3500 cells/cumm"))
			{
				e_curri_in="2";
			}
			else if(resultSet.getString(27).toString().equals("7000 cells/cumm"))
			{
				e_curri_in="3";
			}
			else if(resultSet.getString(27).toString().equals("11000 cells/cumm"))
			{
				e_curri_in="4";
			}
		
			else 
			{
				e_curri_in="0";
			}
			
			
			if(resultSet.getString(28).toString().equals("4.20 millions/cmm"))
			{
				c_curri_in="1";
			}
			else if(resultSet.getString(28).toString().equals("4.35 millions/cmm"))
			{
				c_curri_in="2";
			}
			else if(resultSet.getString(28).toString().equals("5.15 millions/cmm"))
			{
				c_curri_in="3";
			}
			else if(resultSet.getString(28).toString().equals("5.65 millions/cmm"))
			{
				c_curri_in="4";
			}
		
			else 
			{
				c_curri_in="0";
			}
			
			
			
			
			if(resultSet.getString(29).toString().equals("Yes"))
			{
				place_conf="1";
			}
			else if(resultSet.getString(29).toString().equals("No"))
			{
				place_conf="2";
			}
			
			else 
			{
				place_conf="0";
			}
			
			
			
			if(resultSet.getString(30).toString().equals("Yes"))
			{
				f_stress="1";
			}
			else if(resultSet.getString(30).toString().equals("No"))
			{
				f_stress="2";
			}
							
			else 
			{
				f_stress="0";
			}
			
			
			if(resultSet.getString(31).toString().equals("Yes"))
			{
				univ_stress="1";
			}
			else if(resultSet.getString(31).toString().equals("No"))
			{
				univ_stress="2";
			}
							
			else 
			{
				univ_stress="0";
			}
			
			
			if(resultSet.getString(32).toString().equals("Good"))
			{
				study_hr="1";
			}
			else if(resultSet.getString(32).toString().equals("Poor"))
			{
				study_hr="2";
			}
											
			else 
			{
				study_hr="0";
			}
			
			
			
			if(resultSet.getString(33).toString().equals("Yes"))
			{
				usg_s_media="1";
			}
			else if(resultSet.getString(33).toString().equals("No"))
			{
				usg_s_media="2";
			}
											
			else 
			{
				usg_s_media="0";
			}
			
			
			if(resultSet.getString(34).toString().equals("Yes"))
			{
				usg_mobile="1";
			}
			else if(resultSet.getString(34).toString().equals("No"))
			{
				usg_mobile="2";
			}
											
			else 
			{
				usg_mobile="0";
			}
			
			
			if(resultSet.getString(35).toString().equals("CKD"))
			{
				eye_prob="1";
			}
			else if(resultSet.getString(35).toString().equals("NotCKD"))
			{
				eye_prob="2";
			}
								
			else 
			{
				eye_prob="0";
			}
			
			
			if(resultSet.getString(36).toString().equals("Yes"))
			{
				dropout="1";
			}
			else if(resultSet.getString(36).toString().equals("NotSure"))
			{
				dropout="2";
			}
			else if(resultSet.getString(36).toString().equals("No"))
			{
				dropout="3";
			}				
			else 
			{
				dropout="4";
			}
		}
}catch(Exception e){
	e.printStackTrace();
}
try{
	PreparedStatement ps = connection.prepareStatement("insert into acrtest_dataset values(?,?,?,?,?)");
	ps.setString(1, ssc);
	ps.setString(2, hsc);
	ps.setString(3, medium);
	ps.setString(4, location);
	ps.setString(5, hscstream);
	ps.executeUpdate();
	
}catch(Exception e){
	e.printStackTrace();
}

try{
	PreparedStatement ps = connection.prepareStatement("insert into gftest_dataset values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, course);
	ps.setString(2, admtype);
	ps.setString(3, c_satisfy);
	ps.setString(4, s_satisfy);
	ps.setString(5, exp_src);
	ps.setString(6, univ_like);
	ps.setString(7, s_satisfy);
	ps.setString(8, admtype);
	ps.setString(9, s_satisfy);
	ps.setString(10, course);
	ps.executeUpdate();

}catch(Exception e){
	e.printStackTrace();
}



try{
	PreparedStatement ps = connection.prepareStatement("insert into kbttest_dataset values(?,?,?)");
	ps.setString(1, course);
	ps.setString(2, admtype);
	ps.setString(3, course);
	ps.executeUpdate();

}catch(Exception e){
	e.printStackTrace();
}

try{
	PreparedStatement ps = connection.prepareStatement("insert into bloodtest_dataset values(?,?,?,?,?,?,?,?,?)");
	ps.setString(1, course);
	ps.setString(2, admtype);
	ps.setString(3, c_satisfy);
	ps.setString(4, s_satisfy);
	ps.setString(5, exp_src);
	ps.setString(6, univ_like);
	ps.setString(7, s_satisfy);
	ps.setString(8, admtype);
	ps.setString(9, s_satisfy);
	ps.executeUpdate();

}catch(Exception e){
	e.printStackTrace();
}

%>

<%
try{
Statement st = connection.createStatement();
ResultSet rs = st.executeQuery("select * from predicted_results");


%>


<table>
  <tr>
  	<th>S.no</th>
  	<th>User Name</th>
    <th>Stages of CKD</th>
    <th>Glomerular Filtration Rate (GFR)</th>
    <th>Action Plans</th>
  </tr>
  <%
  int i = 1;
  while(rs.next()){
  %>
  <tr>
  	<td><%=i %></td>
    <td><%=rs.getString("username") %></td>
    <td><%=rs.getString("stage") %></td>
    <td><%=rs.getString("gfr_rate") %></td>
    <td><%=rs.getString("action_plans") %></td>
  </tr>
  <%
  i++;
  }
}catch(Exception e){
	e.printStackTrace();
}
  %>
</table>
</body>
<script src="asset/js/jquery-3.2.1.min.js"></script>
<script src="asset/js/popper.min.js"></script>
<script src="asset/js/bootstrap.min.js"></script>
<script src="asset/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
<script src="asset/js/script.js"></script>
</html>