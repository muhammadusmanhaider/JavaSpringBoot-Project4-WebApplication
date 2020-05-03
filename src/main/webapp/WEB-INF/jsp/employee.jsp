<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<!-- client, Client, clientId, clientType, clientTypeDescription, clientName, jobDescription, employeeId, appointmentStatusId, addressId, quoteId, &jj&, &kk&, &ll&, &mm&, &nn&, &oo& -->
<head>
    <title>Employee</title>
    <style>
        *
        {
            font-weight: bold;
        }

        table
        {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th
        {
            border: 1px solid black;
            text-align: left;
            padding: 8px;
            width: 150px;
        }

        tr:nth-child(even)
        {
            background-color: #dddddd;
        }

        p
        {
            border-width:5px;
            border-style:ridge;
            border-color: lightslategrey;
            text-align: center;
            background-color: cadetblue;
            font-family: "Gill Sans MT";
            font-size: 60px;
        }
        body{
            background-color:  #DCDCDC;
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

        li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        li a:hover:not(.active) {
            background-color: #111;
        }

        .active {
            background-color: #4CAF50;
        }
        img{
            height: 30px;
            width: 30px;
        }
        div
        {
            border-width:5px;
            border-style:ridge;
            border-color: lightslategrey;
            text-align: center;
            background-color: #124F79;
            font-family: "Gill Sans MT";
            font-size: 10px;
        }
    </style>
</head>

<body>
<ul>
    <li><a href="/">Home</a></li>
    <li style="float:right"><a href="/location/">Location</a></li>
    <li style="float:right"><a href="/quote/">Quote</a></li>
    <li style="float:right"><a href="/service/">Services</a></li>
    <li style="float:right"><a href="/employee/">Employee</a></li>
    <li style="float:right"><a href="/client/">Client</a></li>

</ul>
<div style="padding-left:20px">
    <h1>EMPLOYEES</h1>
</div>

    <form method="post" action="/employee/save">
        <h4>Add new Employee</h4>
        <br>
                <input type="hidden" name="employeeid" >
        Employee First Name<br>
        <input type="text" name="employeefirstname" >
        <br>
        Employee Last Name<br>
        <input type="text" name="employeelastname" >
        <br>
        Employee Email<br>
        <input type="text" name="employeeemail" >
        <br>
        Employee Address<br>
        <input type="text" name="employeeaddress" >
        <br>
        Employee Type<br>
        <input type="text" name="employeetype" >
        <br><br>
        <input type="submit" value="Submit">
    </form>
<br>
<form  method="get" action="/employee/search">
    <input id ="txtSearch" type="text" name="keyword"/>
    <button type = "submit">Search Employee</button>
</form>
<br>

    <table>
        <tr>

            <th>First Name</th>
            <th>Last Name</th>
            <th>Employee Email</th>
            <th>Employee Address</th>
            <th>Employee Type</th>
            <th>Actions</th>
        </tr>

        <c:forEach var = "listitem" items = "${employeelist}">
            <tr>
                <td>${listitem.getEmployeefirstName()}</td>
                <td>${listitem.getEmployeelastName()}</td>
                <td>${listitem.getEmployeeEmail()}</td>
                <td>${listitem.getEmployeeAddress()}</td>
                <td>${listitem.getEmployeeType()}</td>
                <td>
                    <a href="/employee/"><img src="../../img/insert.jpg" alt="delete_image" ></a>
                    <a href="/employee/edit/${listitem.getEmployeeId()}"><img src="../../img/edit.jpg" alt="delete_image" ></a>
                    <a href="/employee/delete/${listitem.getEmployeeId()}"><img src="../../img/delete.jpg" alt="delete_image" ></a>
                </td>
            </tr>
        </c:forEach>
    </table>

    </body>
</html>