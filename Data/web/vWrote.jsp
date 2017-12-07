<%-- 
    Document   : view
    Created on : Dec 5, 2017, 7:42:42 PM
    Author     : mbarr
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WROTE</title>
    </head>
    <body>
        <h1>All Books</h1>
        
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/assignment2?zeroDateTimeBehavior=convertToNull";
                String username = "root";
                String password = "jovem";
                String sql = "SELECT * FROM WROTE";
                Connection conn = DriverManager.getConnection(url, username, password);
                Statement stmt = conn.createStatement();
                
                ResultSet rs = stmt.executeQuery(sql);
                %>
                    <table border ="1">
                    <th>Book Code</th>
                    <th>Author ID</th>
                    <th>Sequence</th>
            <%
                while(rs.next()) { %>
                
                    <tr>
                        <td><%=rs.getString("bookCode")%></td>
                        <td><%=rs.getString("authorNum")%></td>
                        <td><%=rs.getString("sequence")%></td>
                    </tr>
                
                    <%
                }
                %></table><%
            }
            catch(Exception ex) {
                System.err.println(ex.getMessage());
            }
        %>
    </body>
</html>
