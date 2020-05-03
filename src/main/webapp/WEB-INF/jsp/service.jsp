<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<!-- client, Client, clientId, clientType, clientTypeDescription, clientName, jobDescription, employeeId, appointmentStatusId, addressId, quoteId, &jj&, &kk&, &ll&, &mm&, &nn&, &oo& -->
<head>
    <title>Service</title>
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
    <h1>SERVICES</h1>
</div>

    <form method="post" action="/service/save">
        <h4>Add new ServiceInfo</h4>
        <input type="hidden" name="serviceid" >
        serviceType<br>
        <input type="text" name="servicetype" >
        <br>
        serviceTypeDescription<br>
        <input type="text" name="servicetypedescription" >
        <br>
        serviceCost<br>
        <input type="text" name="servicecost" >
        <br>
        <br>
        <input type="submit" value="Submit">
    </form>

<br>
<form  method="get" action="/service/search">
    <input id ="txtSearch" type="text" name="keyword"/>
    <button type = "submit">Search Service</button>
</form>
<br>
    <table>
        <tr>
            <th>serviceType</th>
            <th>serviceTypeDescription</th>
            <th>serviceCost</th>
            <th>Actions</th>
        </tr>

        <c:forEach var = "listitem" items = "${servicelist}">
            <tr>
                <td>${listitem.getServiceType()}</td>
                <td>${listitem.getServiceTypedescription()}</td>
                <td>${listitem.getServiceCost()}</td>

                <td>
                    <a href="/service/"><img src="../../img/insert.jpg" alt="delete_image" ></a>
                    <a href="/service/edit/${listitem.getServiceId()}"><img src="../../img/edit.jpg" alt="delete_image" ></a>
                    <a href="/service/delete/${listitem.getServiceId()}"><img src="../../img/delete.jpg" alt="delete_image" ></a>
                </td>
            </tr>
        </c:forEach>
    </table>

    </body>
</html>