<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
   <title>Employee Edit</title>
    </head>
    <body>
    <hr/>
    <form method="post" action="/employee/save">
        <input type="hidden" name="employeeid" value="${selectedItem.getEmployeeId()}">
        Employee First Name<br>
        <input type="text" name="employeefirstname" value="${selectedItem.getEmployeefirstName()}">
        <br>Employee Last Name<br>
        <input type="text" name="employeelastname" value="${selectedItem.getEmployeelastName()}">
        <br>Employee Email<br>
        <input type="text" name="employeeemail" value="${selectedItem.getEmployeeEmail()}">
        <br>Employee Address<br>
        <input type="text" name="employeeaddress" value="${selectedItem.getEmployeeAddress()}">
        <br>Employee Type<br>
        <input type="text" name="employeetype" value="${selectedItem.getEmployeeType()}">

        <br><br>
        <input type="submit" value="Submit">
    </form>
    <a href="/employee/">Back</a>
    </body>
</html>
