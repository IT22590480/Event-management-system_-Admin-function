<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Employees Details</title>
    <link rel="stylesheet" href="CSS/alld.css" />
  </head>
  <body>
    <br /><br /><br />
    <h1>All Employees Details Table</h1>

    <br /><br /><br />
    <form action="adminsearch" method="post">
      <input
        class="inpt"
        type="text"
        name="uid"
        placeholder="	Employee Name..."
      />
      <input
        class="inpt"
        type="text"
        name="pass"
        placeholder="Employee NIC..."
      />
      <button class="serch">Search</button>
    </form>
    <div class="pksen">
      <a href="AdminInsert.jsp">
        <button class="pkbtn">Add New Employee</button>
      </a>
    </div>
    <div class="tablefuil">
      <table id="customers">
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>NIC</th>
          <th>Phone</th>
          <th>Address</th>
        </tr>
        <c:forEach var="adm" items="${allAdmins}">
          <tr>
            <td>${adm.id}</td>
            <td>${adm.name}</td>
            <td>${adm.nic}</td>
            <td>${adm.phone}</td>
            <td>${adm.address}</td>
          </tr>
        </c:forEach>
      </table>
    </div>
    <br /><br /><br />
  </body>
</html>
