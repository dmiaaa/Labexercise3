<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Submit</title>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        h1 {
            color: #007BFF;
        }

        h2 {
            color: #333;
        }

        a {
            display: inline-block;
            padding: 10px 20px;
            margin: 20px 0;
            text-decoration: none;
            background-color: #007BFF;
            color: #fff;
            border-radius: 5px;
        }

        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body align="center">
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

<%
java.sql.Connection con;

String url = "jdbc:jtds:sqlserver://ND/LabExercise3";
String id ="mia";
String pass ="123456789";
con = null;

String staff_name = request.getParameter("staff_name");
String staff_id = request.getParameter("staff_id");
String reg_no = request.getParameter("reg_no");
String phone_no = request.getParameter("phone_no");
String vehicle = request.getParameter("vehicle");
String passenger = request.getParameter("passenger");
String destination = request.getParameter("destination");
String purpose = request.getParameter("purpose");

try {
	Class.forName("net.sourceforge.jtds.jdbc.Driver");
	 con = DriverManager.getConnection(url,id,pass);
	 Statement st = con.createStatement();
	 
	 
	 int i = st.executeUpdate("INSERT INTO StaffDetail (staff_name,staff_id,reg_no, phone_no,vehicle,passenger,destination,purpose)" + "VALUES('"
			 + staff_name + "','" + staff_id + "','" + reg_no + "','" + phone_no+ "','" + vehicle + "','" + passenger+ "','" +destination+ "','" + purpose+ "')");

			 
 
} catch (Exception e) {
    e.printStackTrace();
} 

String selectQuery = "SELECT * FROM StaffDetail";
Statement statement = con.createStatement();
ResultSet resultSet = statement.executeQuery(selectQuery);

 %>

<h1 align="center">Application Submitted</h1>
<h2 align="center">Your department vehicle application has been submitted.</h2>
<br>
    <a href ="staff.jsp">Back to Application Form</a>
</body>
</html>


