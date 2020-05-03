<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <title>TRANSACTION</title>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>

<h2>View Client Transaction</h2>

<table>
    <tr>
        <th>Receipt Number</th>
        <td>${selectedItem.getReceiptNo()}</td>
    </tr>

 <tr>
        <th>Employee Name</th>
        <td>${selectedItem.employee.getEmployeefirstName()}</td>
    </tr>
     <tr>
            <th>Client Name</th>
            <td>${selectedItem.client.getClientfirstName()}</td>
        </tr>
     <tr>
            <th>Service Type</th>
            <td>${selectedItem.service.getServiceType()}</td>
        </tr>
     <tr>
            <th>Service Cost</th>
            <td>${selectedItem.service.getServiceCost()}</td>
        </tr>

</table>
<br>

<h2>The window.print() Method</h2>

<p>Click the button to print Transaction.</p>

<button onclick="window.print()">Print this page</button>
<br>
<a href="/">Back</a>

</body>
</html>
