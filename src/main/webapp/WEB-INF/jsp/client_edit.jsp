<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Client Edit</title>
    </head>
    <body>

    <hr/>
    <form method="post" action="/client/save">
        <input type="hidden" name="clientid" value="${selectedItem.getClientId()}">
        <br>Client First Name<br>
        <input type="text" name="clientfirstname" value="${selectedItem.getClientfirstName()}">
        <br>Client Last Name<br>
        <input type="text" name="clientlastname" value="${selectedItem.getClientlastName()}">
        <br>Client Address<br>
        <input type="text" name="clientaddress" value="${selectedItem.getClientAddress()}">
        <br>Client Email<br>
        <input type="text" name="clientemail" value="${selectedItem.getClientEmail()}">
        <br>Client Phone Number<br>
        <input type="text" name="clientphoneno" value="${selectedItem.getClientPhoneno()}">
        <br><br>
        <input type="submit" value="Submit">
    </form>


    <a href="/client/">Back</a>

    </body>
</html>
