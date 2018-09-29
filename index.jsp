<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="ass.wsd.*"%>

<%
  // Retrieve the value (if any) of the form field called 'submitted'
   String submitted = request.getParameter("submitted");
  // If the Java variable 'submitted' is not null AND 'submitted' equals "yes"
  if ((submitted != null) && submitted.equals("yes")) {
    
 %>
 
<% String filePath = application.getRealPath("WEB-INF/movies.xml");%>
<jsp:useBean id="movieApp" class="ass.wsd.MovieApplication" scope="application">
<jsp:setProperty name="movieApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>
 
<%        
    String genre = request.getParameter("genre");
    Movies movies = movieApp.getMovies();
    ArrayList<Movie> matches = movies.getMatches(genre);   
    
%>
 
<%
        for (Movie movie : matches) {
        
 %>       
        <><%= movie.getTitle()%></>
        <><%= movie.getGenre()%></>
        <><%= movie.getDate()%></>
        <><%= movie.getPrice()%></>
        <><%= movie.getStock()%></>
<%}%> 
 
 <% 
  } else {
%>

<h1>Online Movie Store</h1>
<form action="index.jsp" method="POST">
<input type= "hidden" name="submitted" value="yes">
<a href ="login.jsp">Login</a> | <a href ="register.jsp">Register</a>
    <p><tablename><h2>Search</h2></tablename></p>
    <table>
        <tr>
            <td>Title</td>
            <td><input type="text" name="title"></td>
        </tr>
        <tr>
            <td>Genre</td>
            <td><select name="genre">
                <option value="Action">Action</option>
                <option value="Sci-fi">Sci-Fi</option>
                <option value="Horror">Horror</option>
                <option value="Comedy">Comedy</option>
            </td>
        </tr>
        <tr>
            <td>Date</td>
            <td><input type="date" name="date"></td>
        </tr>
        <tr>
             <td> 
                   
                <input type="submit" value="Search">
            </td>
        </tr>
    </table>
</form>

<%}%>



    
    






        
 
 

 
