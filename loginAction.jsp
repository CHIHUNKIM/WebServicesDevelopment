
<%@page import="uts.wsd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Action Page</title>
    </head>
    
        <% String usersPath = application.getRealPath("WEB-INF/users.xml");%>
        <jsp:useBean id="diaryApp" class="uts.wsd.DiaryApplication" scope="application">
            <jsp:setProperty name="diaryApp" property="filePath" value="<%=usersPath%>"/>
        </jsp:useBean>
        <% 
            Users users = diaryApp.getUsers();
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            User user = users.login(email, password);
            
            session.setAttribute("user", user);
           
            if (user != null) {  %>
                <p>Login successful. Click <a href="index.jsp">here</a> to return to the main page</p>                     
        <% }else{ %>
                <p> Password incorrect. Click <a href="login.jsp">here</a> to try again</p>
                                             
         <% } %>
        
    
</html>
