<%--
    Document   : registerAction
    Created on : Aug 14, 2018, 10:13:06 PM
    Author     : George
--%>

<%@page import="java.util.*"%>
<%@page import="ass.val.*"%>
<%@page import="ass.wsd.user.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Action Page</title>
    </head>
    <body>
            
        <%
            String name = request.getParameter("name");
            String email = request.getParameter("email");           
            String password = request.getParameter("password");
            String phone = request.getParameter("phone");
            String address = request.getParameter("address");
            int key = (new Random()).nextInt(999999);
            String ID = "" + key;           

            Validator v = new Validator();

            if (!v.validateName(name)) {
                session.setAttribute("nameErr", "Name format is incorrect!");
                response.sendRedirect("register.jsp");
            } else if (!v.validatePassword(password)) {
                session.setAttribute("passErr", "Password format is incorrect");
                response.sendRedirect("register.jsp");
            } else if (!v.validateEmail(email)) {
                session.setAttribute("emailErr", "Email format is incorrect");
                response.sendRedirect("register.jsp");
            } else {
                User user = new User(ID,name,email,password,phone,address);                          
            }
                    
        %>
        <%=name%>
        
    </body>
</html>
