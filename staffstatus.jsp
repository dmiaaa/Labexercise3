<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%
java.sql.Connection con;

String url = "jdbc:jtds:sqlserver://ND/LabExercise3";
String id ="mia";
String pass ="123456789";
con = null;
    try {
    	Class.forName("net.sourceforge.jtds.jdbc.Driver");
   	 	con = DriverManager.getConnection(url,id,pass);

        String selectQuery = "SELECT * FROM StaffDetail";
        Statement statement = con.createStatement();
        ResultSet resultSet = statement.executeQuery(selectQuery);
%>
<!DOCTYPE html>
<html>
<head>
    <title>Application Status</title>
     <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        tr:hover {
            background-color: #f5f5f5;
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

        div {
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>Application Status</h1>
    <table align="center" border="2">
        <tr>
            <th width="10%">Staff Full Name</th>
            <th width="10%">Staff ID</th>
            <th width="10%">Registration Number</th>
            <th width="10%">Phone Number</th>
            <th width="10%">Vehicle</th>
            <th width="10%">Passengers</th>
            <th width="10%">Destination</th>
            <th width="10%">Purpose</th>
            <th width="10%">Status</th>
        </tr>
        <%
        while (resultSet.next()) {
            
        %>
        <tr align="center">
    <td><%= resultSet.getString("staff_name") %></td>
    <td><%= resultSet.getString("staff_id") %></td>
    <td><%= resultSet.getString("reg_no") %></td>
    <td><%= resultSet.getString("phone_no") %></td>
    <td><%= resultSet.getString("vehicle") %></td>
    <td><%= resultSet.getString("passenger") %></td>
    <td><%= resultSet.getString("destination") %></td>
    <td><%= resultSet.getString("purpose") %></td>
    <td><%= resultSet.getString("status") %></td>
    
</tr>

        <%
            }
        %>
    </table>
    <br><br>
    <div align="center">
    <a href="staff.jsp">Back</a>
    </div>
</body>
</html>
<%
    } catch (Exception e) {
        e.printStackTrace();
    } 
    
%>
