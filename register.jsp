<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
    <body>
        <h1> Register </h1>
        <form action="register.jsp" method="POST">
            <table>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email"></td>
                </tr>
                <tr>
                    <td>Full Name</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <input type="radio" name="gender" value="Male">Male
                        <br>
                        <input type="radio" name="gender" value="Female">Female

                    </td>
                </tr>
                <tr>
                    <td> Favourite Colour</td>
                    <td>
                        <select name="favcol">
                            <option value="red">Red</option>
                            <option value="green">Green</option>
                            <option value="blue">Blue</option>
                            <option value="yellow">Yellow</option>
                            <option value="orange">Orange</option>
                            <option value="pink">Pink</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Agree to TOS</td>
                    <td><input type="checkbox" name="tos">
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <input type="submit" value="Register">                       
                    </td>
                </tr>  
            </table>
        </form>
    </body>
</html>

