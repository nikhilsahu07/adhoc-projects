
<%@page language="java" import="java.sql.*"%>

<html>
    
    <body bgcolor="red">
        
        |<%
            String id=request.getParameter("id");
        
          
Connection con;
PreparedStatement ps;
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");  
 con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/kan","root","briztech");  

ps=con.prepareStatement("select * from students where id=?");
ps.setString(1,id);

rs=ps.executeQuery();
if(rs.next())
{
ps=con.prepareStatement("delete from students where id=?"); 
ps.setString(1,id);
ps.execute();
out.println("Data deleted from Database");
}
else
{    
out.println("Invalid student Id");
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
