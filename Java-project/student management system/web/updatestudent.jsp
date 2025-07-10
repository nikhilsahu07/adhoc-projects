

<%@page language="java" import="java.sql.*"%>

<html>
    
    <body>
      <%
          String id=request.getParameter("id");
          String sname=request.getParameter("sname");
          String fname=request.getParameter("fname");
          String course=request.getParameter("course");
          String dob=request.getParameter("dob");
          String uid=request.getParameter("uid");
                    
Connection con;
PreparedStatement ps;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");  
 con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/kan","root","briztech");  
ps=con.prepareStatement("select * from students where uid=? and id=?") ;
ps.setString(1,uid);
ps.setString(2,id);
rs=ps.executeQuery();

if(rs.next())
{
ps=con.prepareStatement("update students set sname=?, fname=?, course=?, dob=?,uid=? where id=?");

ps.setString(1,sname);
ps.setString(2,fname);
ps.setString(3,course);
ps.setString(4,dob);
ps.setString(5,uid);
ps.setString(6,id);
ps.execute();
out.println("<br>Student Record Updated");   
}
else
{
out.println("Student UID or ID is not VALID");
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
