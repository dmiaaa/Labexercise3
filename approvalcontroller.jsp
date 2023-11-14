<%@ page import="java.sql.*" %>
<%
    java.sql.Connection con;

    String url = "jdbc:jtds:sqlserver://ND/LabExercise3";
    String id = "mia";
    String pass = "123456789";
    con = null;

    try {
        Class.forName("net.sourceforge.jtds.jdbc.Driver");
        con = DriverManager.getConnection(url, id, pass);

        String action = request.getParameter("action");
        String staffId = request.getParameter("id");

        if (action != null && staffId != null) {
            String updateQuery = "UPDATE StaffDetail SET status = ? WHERE staff_id = ?";
            try (PreparedStatement preparedStatement = con.prepareStatement(updateQuery)) {
                preparedStatement.setString(1, action);
                preparedStatement.setString(2, staffId);
                preparedStatement.executeUpdate();
            }
        }

        // Redirect back to the admin dashboard
        response.sendRedirect("admin.jsp");
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>
