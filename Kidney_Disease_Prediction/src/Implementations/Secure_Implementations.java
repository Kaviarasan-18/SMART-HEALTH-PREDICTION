
package Implementations;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Bean.Data_Bean;
import Bean.Login_Bean;
import Bean.School_Bean;
import Connection.Database;
import Interfaces.Secure;
import User.MyUtilsForWekaInstanceHelper;
import weka.classifiers.AbstractClassifier;
import weka.classifiers.Classifier;
import weka.classifiers.Evaluation;
import weka.core.DenseInstance;
import weka.core.Instance;
import weka.core.Instances;


public class Secure_Implementations implements Secure{
	Connection conn=Database.con();
	PreparedStatement statement;
	String query;
	public int status;
	public int register(Login_Bean bean) {
		
		int status=0;
		
		//	System.out.println(bean.getEmail());
			try
			{
				query="insert into register (email,name,pass,state,gender) values(?,?,?,?,?);" ;
				statement=conn.prepareStatement(query);
				statement.setString(1,bean.getemail());
				statement.setString(2,bean.getuname());
				statement.setString(3,bean.getpass());
				statement.setString(4,bean.getstate());
				statement.setString(5,bean.getgender());
				status=statement.executeUpdate();
				status=1;
				
			} 
			catch (SQLException e)
			{
				e.printStackTrace();
				status=0;
			}
		    return status;
			
	

	}
public int encryptup(Data_Bean bean) {
		
		int status=0;
		
		//	System.out.println(bean.getEmail());
			try
			{
				query="insert into encryptup(user,filename,filesize,encrypttime,uploadtime) values(?,?,?,?,?);" ;
				statement=conn.prepareStatement(query);
				statement.setString(1,bean.getuser());
				statement.setString(2,bean.getfname());
				statement.setString(3,bean.getfsize());
				statement.setString(4,bean.getetime());
				statement.setString(5,bean.getuptime());
				status=statement.executeUpdate();
				status=1;
				
			} 
			catch (SQLException e)
			{
				e.printStackTrace();
				status=0;
			}
		    return status;
			
	

	}
public int ins_userprofile(Data_Bean bean) {
	
	int status=0;
	
	//	System.out.println(bean.getEmail());
		try
		{
			query="insert into profile(username,name,email,phone,residence,state,age,fedu,focc,fage,medu,mocc,mage,ftype,annualincome) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);" ;
			statement=conn.prepareStatement(query);
			statement.setString(1,bean.getuser());
			statement.setString(2,bean.getfname());
			statement.setString(3,bean.getemail());
			statement.setString(4,bean.getphone());
			statement.setString(5,bean.getresidance());
			statement.setString(6,bean.getstate());
			statement.setString(7,bean.getage());
			statement.setString(8,bean.getfather_edu());
			statement.setString(9,bean.getfather_occ());
			statement.setString(10,bean.getfather_age());
			statement.setString(11,bean.getmother_edu());
			statement.setString(12,bean.getmother_occ());
			statement.setString(13,bean.getmother_age());
			statement.setString(14,bean.getfamily_type());
			statement.setString(15,bean.getannual_income());
			
			
			status=statement.executeUpdate();
			status=1;
			
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
			status=0;
		}
	    return status;
		


}
public int ins_userschool(School_Bean bean) {
	
	int status=0;
	
	//	System.out.println(bean.getEmail());
		try
		{
			query="insert into acrtest(username,bp,sg,al,su,rbc) values(?,?,?,?,?,?);" ;
			statement=conn.prepareStatement(query);
			statement.setString(1,bean.getuser());
			statement.setString(2,bean.getssc());
			statement.setString(3,bean.gethsc());
			statement.setString(4,bean.getmedium());
			statement.setString(5,bean.getloc());
			statement.setString(6,bean.getstream());
			
			
			status=statement.executeUpdate();
			status=1;
			
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
			status=0;
		}
	    return status;
		


}
public int ins_useruniversity(Data_Bean bean) {
	
	int status=0;
	
	//	System.out.println(bean.getEmail());
		try
		{
			query="insert into gftest(username,pc,pcc,ba,bgr,bu,sc,sod,pot,hemo,hemo1) values(?,?,?,?,?,?,?,?,?,?,?);" ;
			statement=conn.prepareStatement(query);
			statement.setString(1,bean.getuser());
			statement.setString(2,bean.getage());
			statement.setString(3,bean.getannual_income());
			statement.setString(4,bean.getannual_income1());
			statement.setString(5,bean.getannual_income2());
			statement.setString(6,bean.getannual_income3());
			statement.setString(7,bean.getemail());
			statement.setString(8,bean.getetime());
			statement.setString(9,bean.getfamily_type());
			statement.setString(10,bean.getfather_age());
			statement.setString(11,bean.getfather_edu());
			//statement.setString(12,bean.getfather_occ());
			//statement.setString(13,bean.getfname());
			//statement.setString(11,bean.getfsize());
			status=statement.executeUpdate();
			status=1;
			
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
			status=0;
		}
	    return status;
		


}
public int ins_usercurricular(Data_Bean bean) {
	
	int status=0;
	
	//	System.out.println(bean.getEmail());
		try
		{
			query="insert into kbttest(username,pcv,wc,rc) values(?,?,?,?);" ;
			statement=conn.prepareStatement(query);

			statement.setString(1,bean.getage());
			statement.setString(2,bean.getannual_income());
			statement.setString(3,bean.getemail());
			statement.setString(4,bean.getetime());

			status=statement.executeUpdate();
			status=1;
			
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
			status=0;
		}
	    return status;
		


}
public int ins_userpsycho(Data_Bean bean) {
	
	int status=0;
	
	//	System.out.println(bean.getEmail());
		try
		{
			query="insert into bloodtest(username,htn,dm,cad,appet,pe,ane,class,Result) values(?,?,?,?,?,?,?,?,?);" ;
			statement=conn.prepareStatement(query);

			statement.setString(1,bean.getage());
			statement.setString(2,bean.getannual_income());
			statement.setString(3,bean.getemail());
			statement.setString(4,bean.getetime());
			statement.setString(5,bean.getfamily_type());
			statement.setString(6,bean.getfather_age());
			statement.setString(7,bean.getfather_edu());
			statement.setString(8,bean.getfather_occ());
			statement.setString(9,bean.getfather_occ());
			status=statement.executeUpdate();
			status=1;
			
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
			status=0;
		}
	    return status;
		


}
public int update_userpsycho(Data_Bean bean) {
	
	int status=0;
	
	//	System.out.println(bean.getEmail());
		try
		{
			query="update ckd set Result=? where username=?" ;
			statement=conn.prepareStatement(query);

			statement.setString(1,bean.getage());
			statement.setString(2,bean.getannual_income());

			status=statement.executeUpdate();
			status=1;
			
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
			status=0;
		}
	    return status;
		


}
public int login_check(Login_Bean bean) {
		
				String email="";
				status=0;
				try
				{
					
						//System.out.println("user namein login"+log.getid());
						//System.out.println("user namein login"+log.getPassword());
						 //query="SELECT Email,password FROM docregister d where Email=? and password=?";
						 query="select * from register where email=? and pass=?";
						PreparedStatement statement = conn.prepareStatement(query);
						statement.setString(1,bean.getemail());
						statement.setString(2,bean.getpass());
						ResultSet resultSet = statement.executeQuery();
						
						

						if(resultSet.next())
						{
							email=resultSet.getString(1).toString().trim();
								
							status=1;
						}
						
				}
						catch (Exception e)
						{
							e.printStackTrace();
							System.out.println("SqlMethodsImplementation.login()");
						}
						return status;
	

	}
public String create_db() {
	
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
	String bp=""; //sg,al,su,rbc,pc,pcc,ba,bgr,bu,sc,sod,pot,hemo,hemo1,pcv,wc,rc,htn,dm,cad,appet,pe,ane,class
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
	
	
	
    String dataSetFileName = "E:\\data.arff";
    Instances data = MyUtilsForWekaInstanceHelper.getInstanceFromFile(dataSetFileName);
    System.out.println("Before adding");
    System.out.println(data);
	   		
	try
	{
		
		
		
			//System.out.println("user namein login"+log.getid());
			//System.out.println("user namein login"+log.getPassword());
			 //query="SELECT Email,password FROM docregister d where Email=? and password=?";
			query="SELECT residence,state,age,fedu,focc,fage,medu,mocc,mage,ftype,annualincome,bp,sg,al,su,rbc,pc,pcc,ba,bgr,bu,sc,sod,pot,hemo,hemo1,pcv,wc,rc,htn,dm,cad,appet,pe,ane,class FROM profile,acrtest,gftest,kbttest,bloodtest where profile.id=acrtest.id and profile.id=gftest.id and profile.id=kbttest.id and profile.id=bloodtest.id order by profile.id desc limit 1;";
			PreparedStatement statement = conn.prepareStatement(query);
		    ResultSet resultSet = statement.executeQuery();
			
		    

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
				
				
				
				
				//univ_like=resultSet.getString(22).toString();
				

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
				
				//univ_edusys=resultSet.getString(23).toString();
				
				

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
				
				
				
				
				
				//univ_infra=resultSet.getString(24).toString();
				
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
				
				
				
				//extra_curri=resultSet.getString(25).toString();
				
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
				
				
				
				
				//enter_facility=resultSet.getString(26).toString();
				
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
				
					
				
				
				//e_curri_in=resultSet.getString(27).toString();

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
				
				//c_curri_in=resultSet.getString(28).toString();
				
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
				
				
				
				//place_conf=resultSet.getString(29).toString();
				
				
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
				
				
				
				//f_stress=resultSet.getString(30).toString();
				
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
				
				//univ_stress=resultSet.getString(31).toString();
				
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
				
				//study_hr=resultSet.getString(32).toString();
				
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
				
				
				
				//usg_s_media=resultSet.getString(33).toString();
				
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
				
				//usg_mobile=resultSet.getString(34).toString();
				
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
				
				//eye_prob=resultSet.getString(35).toString();
				
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
				
				
				//dropout=resultSet.getString(36).toString();
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
				double[] instanceValue1 = new double[data.numAttributes()];
				//System.out.println(data.numAttributes());
			    instanceValue1[0] =Double.valueOf(residence);
			    instanceValue1[1] = Double.valueOf(state);
			    instanceValue1[2] = Double.valueOf(age);
			    instanceValue1[3] = Double.valueOf(fedu);
			    instanceValue1[4] = Double.valueOf(focc);
			    instanceValue1[5] = Double.valueOf(fage);
			    instanceValue1[6] = Double.valueOf(medu);
			    instanceValue1[7] = Double.valueOf(mocc);
			    instanceValue1[8] = Double.valueOf(mage);
			    instanceValue1[9] = Double.valueOf(ftype);
			    instanceValue1[10] =Double.valueOf(annualincome);
			    instanceValue1[11] =Double.valueOf(capasity);
			    instanceValue1[12] =Double.valueOf(type);
			    instanceValue1[13] = Double.valueOf(battry);
			    instanceValue1[14] = Double.valueOf(digital);
			    instanceValue1[15] = Double.valueOf(producttype);			    
				instanceValue1[16] =Double.valueOf(productbrand);
			    instanceValue1[17] = Double.valueOf(producttype);
			    instanceValue1[18] = Double.valueOf(ram);
			    instanceValue1[19] = Double.valueOf(processor);
			    instanceValue1[20] = Double.valueOf(backlit);
			    instanceValue1[21] = Double.valueOf(harddisk);
			    instanceValue1[22] = Double.valueOf(battrytype);
			   	instanceValue1[23] = Double.valueOf(gamming);
				instanceValue1[24] = Double.valueOf(productweight);
				instanceValue1[25] = Double.valueOf(battrylife);
			    instanceValue1[26] = Double.valueOf(battrylife);
			    instanceValue1[27] = Double.valueOf(prductspeed);
			    instanceValue1[28] = Double.valueOf(f_stress);
			    instanceValue1[29] = Double.valueOf(univ_stress);
			    instanceValue1[30] = Double.valueOf(study_hr);
			    instanceValue1[31] = Double.valueOf(usg_s_media);
			    instanceValue1[32] = Double.valueOf(usg_mobile);
			    instanceValue1[33] = Double.valueOf(usg_mobile);
			    instanceValue1[34] = Double.valueOf(eye_prob);
			    instanceValue1[35] = Double.valueOf(dropout);
			    // instanceValue1[36] = data.attribute(36).addStringValue(dropout);
			    data.add(new DenseInstance(1.0, instanceValue1));  
			    System.out.println("-----------------------------------------------------------");
			    System.out.println("After adding");
			    System.out.println(data);				
			    BufferedWriter writer = new BufferedWriter(new FileWriter("E:\\data.arff"));
			    writer.write(data.toString());
			    writer.flush();
			    writer.close();
		        weka.classifiers.trees.RandomForest desicion=new  weka.classifiers.trees.RandomForest();
		        //weka.classifiers.trees.DecisionTree desicion1=new  weka.classifiers.trees.DecisionTree();
		        //Classifier temp = AbstractClassifier.makeCopy(desicion);
		        //weka.classifiers.bayes.NaiveBayes desicion2 = new weka.classifiers.bayes.NaiveBayes();
		        //desicion2.buildClassifier(data);
		        //weka.classifiers.functions.supportVector.PolyKernel desicion3 = new weka.classifiers.functions.supportVector.PolyKernel();
		        //desicion3.buildKernel(data)   
		        int classIndex = data.numAttributes()-1;
		        data.setClassIndex(classIndex);
		        desicion.buildClassifier(data);
		        Evaluation evaluation = null;
				try {
					evaluation = new Evaluation(data);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		        try {
					evaluation.evaluateModel(desicion, data);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		        double pred = desicion.classifyInstance(data.instance(data.numInstances()-1));
	            System.out.print("Actual: " + data.instance(data.numInstances()-1).value(35));
	            System.out.println(", predicted: " + pred);
	            int res=(int)pred;
				status1=String.valueOf(res);
			}
	}
			catch (Exception e)
			{
				e.printStackTrace();
				System.out.println("SqlMethodsImplementation.login()");
			}
			return status1;
}
}