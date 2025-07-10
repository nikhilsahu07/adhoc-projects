
<%@page language="java"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-image: url(./image/img2.jpg);
  background-repeat: no-repeat;
  background-size: cover;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}
h2{
    text-align: center;
    color: #fff;
}
p{
    text-align: center;
    color: #fff;
}
</style>
</head>
<body>

<div class="topnav">
  <a class="active" href="index.html">Home</a>
   <a href="studentreg.html">Add Student</a>

          <a href="updatestudent.html">Update Student</a>     

          <a href="displaystudent.html">Student Info</a>
          <a href="deletestudent.html">Delete Student</a>
          <a href="index.html">Logout</a>
</div>
<div style="padding-left:16px">
  <h2>WELCOME</h2>
  <p>Student Details,RANCHI</p>
  
</div>

</body>
</html>
