<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.HttpSession"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DVAS - Department Vehicle Application System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <h1 class="text-center mb-4">Admin Login</h1>
                <form action="" method="post">
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" class="form-control" name="username" id="username" placeholder="Enter your username">
                    </div>
                    <div class="mb-3">
                        <label for="inputPassword" class="form-label">Password</label>
                        <input type="password" name="password" class="form-control" id="inputPassword" placeholder="Enter your password">
                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary">Login</button>
                    </div>
                    <div class="text-center">
                        <a href="staff.jsp">Click Here If You Are Politeknik Mukah Sarawak Staff</a>
                    </div>
                </form>
                <% 
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
                    if (username != null && password != null) {
                        try {
                            String dbusername = "mia";
                            String dbpassword = "123456789";
                            Connection dbconn = null;
                            String sql = "SELECT * FROM login WHERE username = ? AND password = ?";
                            dbconn = DriverManager.getConnection("jdbc:jtds:sqlserver://ND/LabExercise3", "mia", "123456789");
                            PreparedStatement SQLstatement = dbconn.prepareStatement(sql);
                            SQLstatement.setString(1, username);
                            SQLstatement.setString(2, password);
                            ResultSet resultSet = SQLstatement.executeQuery();

                            if (resultSet.next() && resultSet.getString("username").equals(username)) {
                                session.setAttribute("username", username);
                                response.sendRedirect("admin.jsp");
                            } else {
                                out.println("Try again");
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                %>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
