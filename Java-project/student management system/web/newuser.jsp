



<%@ page language="java" import="java.sql.*" %>

<% 

    Connection con;

    PreparedStatement ps;
    
   String name=request.getParameter("name");

   String gender=request.getParameter("gender");

   String address=request.getParameter("address");

   String city=request.getParameter("city");

   long phnumber=Long.parseLong(request.getParameter("phnumber"));

   String emailid=request.getParameter("emailid");

   String username=request.getParameter("username");

   String password=request.getParameter("password");
   
   Class.forName("com.mysql.jdbc.Driver");  
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kan","root","briztech");  
   
  
     ps=con.prepareStatement("insert into register values(?,?,?,?,?,?,?,?)"); 
     ps.setString(1,name);
    ps.setString(2,gender);

   ps.setString(3,address);

   ps.setString(4,city);

   ps.setLong(5,phnumber);

   ps.setString(6,emailid);

   ps.setString(7,username);

   ps.setString(8,password);
   
   ps.executeQuery();
   out.println("<b>user registered");     
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
   <a href="login.html">Login</a>
</body>
</html>
