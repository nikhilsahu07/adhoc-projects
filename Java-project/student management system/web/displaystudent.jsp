

<%@page language="java" import="java.sql.*" import="java.text.*" import="java.util.Date"%>

<html>
   
    <body>
        <%
       Connection con;

    PreparedStatement ps;
    ResultSet rs;   
   
   String id=request.getParameter("id");  

   Class.forName("com.mysql.jdbc.Driver");  
 con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/kan","root","briztech");  

   ps=con.prepareStatement("select * from students where id=?");
   
     
   ps.setString(1,id);
   
   rs=ps.executeQuery();
 if(rs.next())
 {
   ps=con.prepareStatement("select * from students where id=?");
  out.println("<center>");
  out.println("<table border=1>");
  out.println("<tr>");
  out.println("<th colspan=6>");
  out.println("Student Details");
  out.println("</th>");
  out.println("</tr>");
  out.println("<tr>");
  out.println("<th>");
  out.println("ID");
  out.println("</th>");
  out.println("<th>");
  out.println("STUDENT NAME");
  out.println("</th>");
  out.println("<th>");
  out.println("FATHER NA,E");
  out.println("</th>");
  out.println("<th>");
  out.println("COURSE");
  out.println("</th>");
  out.println("<th>");
  out.println("DATE OF BIRTH");
  out.println("</th>");
  out.println("<th>");
  out.println("UID");
  out.println("</th>");
  out.println("</tr>");
  out.println("<tr>");
  out.println("<td>");
  out.println(rs.getString("id"));
  out.println("</td>");
  out.println("<td>");
  out.println(rs.getString("sname")); 
  out.println("</td>");
  out.println("<td>");
  out.println(rs.getString("fname"));
  out.println("</td>");
  out.println("<td>");
  out.println(rs.getString("course")); 
  out.println("</td>");
  out.println("<td>");
  out.println(rs.getString("dob"));
  out.println("</td>");
  out.println("<td>");
  out.println(rs.getString("uid"));
  out.println("</td>");
  out.println("</tr>");
  out.println("</table>");
  out.println("</center>");    
  
  
 }
 else
 {
     out.println("student  not Found !!!");     
 }   
   %>  
<html>
       <body>
   <style>
   a {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  text-decoration: none;
}

a:hover {
  opacity: 0.8;
}
</style>
   <br>
   </br>
   </br>
   <a href="welcome.jsp">Back To Home</a>
</body>
</html>
