<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "uts.wsd.User"%>

<!DOCTYPE html>
<html>
    <head>
        <h1>Diary Keeper</h1>
    </head>
    <body>
        <%
        String name;
        String email;
        User user = (User) session.getAttribute("user");

        if (user != null) {
            name = user.getName();
            email = user.getEmail();
        %>
        <body
        <p>You are logged in as <%=name%> <%=email%></p>
        <a href ="logout.jsp">Logout</a>
            
        <%} else {%>
          <p>You are not logged in</p>
          <a href ="login.jsp">Login</a> | <a href ="register.jsp">Register</a>
        <%}%> 
    </body>
</html>
