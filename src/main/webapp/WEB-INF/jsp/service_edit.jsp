<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>ServiceInfo Edit</title>
        <style>
            input[type="submit"]{
                /* change these properties to whatever you want */
                background-color: #555;
                color: #fff;
                border-radius: 10px;
            }
        </style>
    </head>


    <body>

    <hr/>
    <form method="post" action="/service/save">
        <input type="hidden" name="serviceid" value="${selectedItem.getServiceId()}">
        <br>serviceType<br>
        <input type="text" name="servicetype" value="${selectedItem.getServiceType()}">
        <br>serviceTypeDescription<br>
        <input type="text" name="servicetypedescription" value="${selectedItem.getServiceTypedescription()}">
        <br>serviceCost<br>
        <input type="text" name="servicecost" value="${selectedItem.getServiceCost()}">
        <br><br>
        <input type="submit" value="Submit">
    </form>


    <form action="/service/">
        <button type="submit">Back</button>
    </form>


    </body>
</html>
