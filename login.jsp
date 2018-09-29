

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <form action="loginAction.jsp" method="POST">
    <body>
        <h1>Login</h1>
    <table>
        <tr>
            <td>Email</td>
            <td><input type="email" name="email"></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="password" name="password"></td>
         </tr>
          <tr>
              <td><button type="submit" value="Login"></input>Login</td>
          </tr>       
    </table>
    </body>
</html>
