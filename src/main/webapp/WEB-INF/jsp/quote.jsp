<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>

<head>
    <title>Quote</title>
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
    <h1>Transaction</h1>
</div>

    <form method="post" action="/quote/save">
        <h4>Add new Quote</h4>
        Receipt No:<br>
        <input type="text" name="receiptno">
        <label for="employee">Choose a employee:</label>
        <select name="employeeid">
            <c:forEach items="${employeelist}" var="employee">
            <option value="" disabled selected></option>
                <option value="${employee.employeeId}"
                        <c:if test="${employee.employeeId eq employeeid}">selected="selected"</c:if>
                >
                        ${employee.employeefirstName}
                </option>
            </c:forEach>
        </select>

        <label for="client">Choose a client:</label>
        <select name="clientid">
            <c:forEach items="${clientlist}" var="client">
                <option value="" disabled selected></option>
                <option   value="${client.clientId}"
                        <c:if test="${client.clientId eq clientid}">selected="selected"</c:if>
                >
                        ${client.clientfirstName}
                </option>
            </c:forEach>
        </select>

        <label for="service">Choose a service:</label>
        <select name="serviceid">
            <c:forEach items="${servicelist}" var="service">
                <option value="" disabled selected></option>
                <option   value="${service.serviceId}"
                          <c:if test="${service.serviceId eq serviceid}">selected="selected"</c:if>
                >
                        ${service.serviceType}
                </option>
            </c:forEach>
        </select>


        <br><br>
        <input type="submit" value="Submit">
    </form>
<br>
<form  method="get" action="/quote/search">
    <input id ="txtSearch" type="text" name="keyword"/>
    <button type = "submit">Search Service</button>
</form>

    <br>
    <table>
        <tr>
            <th>Transaction Receipt no</th>
            <th>Employee Name</th>
            <th>Client Name</th>
            <th>Service Type</th>
            <th>Service Cost</th>
            <th>Action</th>
        </tr>

        <c:forEach var = "listitem" items = "${quotelist}">
            <tr>

                <td>${listitem.getReceiptNo()}</td>
                  <td>${listitem.employee.employeefirstName}</td>
                <td>${listitem.client.clientfirstName}</td>
                <td>${listitem.service.serviceType}</td>
                <td>${listitem.service.serviceCost}</td>


                <td>

                    <a href="/quote/"><img src="../../img/insert.jpg" alt="delete_image" ></a>
                    <a href="/quote/view/${listitem.getTransactionId()}"><img src="../../img/view.jpg" alt="delete_image" ></a>
                    <a href="/quote/delete/${listitem.getTransactionId()}"><img src="../../img/delete.jpg" alt="delete_image" ></a>
                </td>
            </tr>
        </c:forEach>
    </table>

    </body>
</html>