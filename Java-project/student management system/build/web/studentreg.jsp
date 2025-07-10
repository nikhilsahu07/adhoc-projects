
<%@page language="java" import ="java.sql.*"%>





<% 

    Connection con;

    PreparedStatement ps;
    ResultSet rs;
    
   String sname=request.getParameter("sname");

   String fname=request.getParameter("fname");

   String course=request.getParameter("course"); 
   String dob=request.getParameter("dob"); 
   String uid=request.getParameter("uid"); 
   

   Class.forName("com.mysql.jdbc.Driver");  
 con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/kan","root","briztech");  
 
 ps=con.prepareStatement("SELECT * FROM students where uid=?");
ps.setString(1,uid);
 rs=ps.executeQuery();
 
 if(rs.next())
 {
  out.println("Already Registered in College")   ;
 }
 else
 {
  ps=con.prepareStatement("insert into students(sname,fname,course,dob,uid) values(?,?,?,?,?)");
   
   ps.setString(1,sname);

   ps.setString(2,fname);

   ps.setString(3,course);
   ps.setString(4,dob);
   ps.setString(5,uid);
  
   
   ps.execute();

   out.println("<b>STUDENT REGISTERED"); 
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
</html>l>
