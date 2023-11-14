<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Detail</title>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        h1 {
            text-align: center;
        }
        form {
            background-color: #fff;
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-top: 10px;
        }
        input[type="text"],
        input[type="number"],
        select,
        textarea {
            width: 400px;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        select {
            height: 40px;
        }
        textarea {
            height: 100px;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body align="center" >
<h1 >Staff Vehicle Application</h1>
    <form action="staffsubmit.jsp" method="post" >
        <label for="staff_name">Staff Full Name:</label>
        <input type="text" name="staff_name" required><br><br>
        
        <label for="staff_id">Staff Identification Number:</label>
        <input type="text" name="staff_id" required><br><br>

        <label for="reg_no">Staff Registration Number:</label>
        <input type="text" name="reg_no" required><br><br>

        <label for="phone_no">Staff Phone Number:</label>
        <input type="text" name="phone_no" required><br><br>

        <label for="vehicle">Select Vehicle:</label>
        <select name="vehicle">
            <option value="Car">Car</option>
            <option value="Van">Van</option>
            <option value="Bus">Bus</option>
        </select><br><br>

        <label for="passenger">Number of Passengers:</label>
        <input type="number" name="passenger" required><br><br>

        <label for="destination">Destination Address:</label>
        <input type="text" name="destination" required><br><br>

        <label for="purpose">Purpose of Use:</label>
        <textarea name="purpose" rows="4" cols="50" required></textarea><br><br>

        <input type="submit" value="Submit Application">
        <br><br>
        <a href="staffstatus.jsp">Check Your Application Status Here</a>
        <br><br>
        <a href="login.jsp">Back</a>
    </form>
</body>
</html>