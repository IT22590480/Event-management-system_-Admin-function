<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Employee Registation</title>
    <link rel="stylesheet" href="CSS/insert.css" />
  </head>
  <body>
      
    <br /><br /><br />

<h1>Fill in the Form.</h1>
            <form action="admininser" method="post">
              <div class="uplode-card">
                <div class="details-container">
                
                
                  <label class="lable-uplode" for="name">Employee Name</label     
                  ><br />
                  <input
                    class="uplode-input"
                    type="text"
                    id="name"
                    name="name"
                    required
                  /><br />
                  
                  
                  <label class="lable-uplode" for="date">NIC</label><br />  
                  <input
                    class="uplode-input"
                    type="text"
                    id="nic"
                    name="nic"
                    required
                  /><br /> 
                  

                  <label class="lable-uplode" for="description"
                    >Phone Number</label
                  ><br />
                  <input
                    pattern="[0-9]{10}"
                    class="uplode-input"
                    type="text"
                    id="phone"
                    name="phone"
                    required
                  /><br />
                  
                  
                  <label class="lable-uplode" for="date">Address</label><br />
                  <input
                    class="uplode-input"
                    type="text"
                    id="address"
                    name="address"
                    required
                  /><br />
                  <br />
                </div>
                <div class="button-form">
                  <button class="uplode">Add Employee</button>
                </div>
              </div>
            </form>
            <br /><br /><br />
    
  </body>
</html>
