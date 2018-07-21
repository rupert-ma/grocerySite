<%--
  Created by IntelliJ IDEA.
  User: micha
  Date: 6/24/2018
  Time: 9:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.*" %>
<%@page import="java.io.IOException" %>
<ul class="list-group">

    <%
        Class.forName("com.mysql.cj.jdbc.Driver");

        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory?useSSL=false&allowPublicKeyRetrieval=true", "test", "tests");


        try {
            //connection to database
            //sql query string and prepared statement created
            String sql = "select * from inventory_list";
            PreparedStatement stmt = con.prepareStatement(sql);
            //method to execute the query
            ResultSet rs = stmt.executeQuery(sql);
            //returns the result set
            while ((rs.next())) {
                out.println("<li class='list-group-item'>" + rs.getString("inventory_item") + ", " + rs.getString("inventory_amount") + "</li>");

            }
            con.close();
        } catch (Exception exc) {
            exc.printStackTrace();
        }

    %></ul>