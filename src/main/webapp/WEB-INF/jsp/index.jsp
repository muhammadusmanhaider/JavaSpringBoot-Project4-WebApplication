<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"     %>


<!DOCTYPE html>
<html>
<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <head>
        <title>Database Project</title>
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                list-style: none;
                text-decoration: none;
                font-family: 'Josefin Sans', sans-serif;
            }
            body {
                background-image: url('../../img/titlepage.jpg');
                background-size: 100% 100%;
                height: 100%;
                width: 100%
            }
            .wrapper{
                display: flex;
                position: relative;
            }

            .wrapper .sidebar{
                width: 200px;
                height: 100%;
                background: black;
                padding: 30px 0px;
                position: fixed;
            }

            .wrapper .sidebar h2{
                color: white;
                text-transform: uppercase;
                text-align: center;
                margin-bottom: 30px;
            }

            .wrapper .sidebar ul li{
                padding: 15px;
                border-bottom: 1px solid #bdb8d7;
                border-bottom: 1px solid rgba(0,0,0,0.05);
                border-top: 1px solid rgba(255,255,255,0.05);
            }

            .wrapper .sidebar ul li a{
                color: white;
                display: block;
            }

            .wrapper .sidebar ul li a .fas{
                width: 25px;
            }

            .wrapper .sidebar ul li:hover{
                background-color: #F0F0F0;
            }

            .wrapper .sidebar ul li:hover a{
                color: black;
            }

            .wrapper .sidebar .social_media{
                position: absolute;
                bottom: 0;
                left: 50%;
                transform: translateX(-50%);
                display: flex;
            }

            .wrapper .sidebar .social_media a{
                display: block;
                width: 40px;
                height: 40px;
                line-height: 45px;
                text-align: center;
                margin: 0 5px;
                border-top-left-radius: 5px;
                border-top-right-radius: 5px;
            }

            .wrapper .main_content{
                width: 100%;
                margin-left: 200px;
            }

            .wrapper .main_content .info{
                margin: 20px;
                color: black;
                line-height: 25px;
            }

            .wrapper .main_content .info div{
                margin-bottom: 20px;
            }
            .footer {
                position: fixed;
                left: 0;
                bottom: 0;
                width: 100%;
                background-color: lightgrey;
                color: black;
                text-align: right;
            }

        </style>
    </head>
    <body>


    <div class="wrapper">
        <div class="sidebar">
            <h2>Tables</h2>
            <ul>
                <li><a href="/"><i class="fas fa-home"></i>Home</a></li>
                <li><a href="/employee/"><i class="fas fa-user"></i>Employeee</a></li>
                <li><a href="/client/"><i class="fas fa-address-card"></i>Client</a></li>
                <li><a href="/service/"><i class="fas fa-project-diagram"></i>Service</a></li>
                <li><a href="/quote/"><i class="fas fa-blog"></i>Quote</a></li>
                <li><a href="/location/"><i class="fas fa-search-location"></i>Location</a></li>
            </ul>
        </div>

        <div class="main_content">
            <div class="info">
                <div> <img src="../../img/mechanic.jpg" alt="mechanic_image" ></div>
            </div>
        </div>
    </div>

    </body>
<div class="footer">
    <small>&copy; Copyright 2020, AU Corporation</small>
    </div>

</html>
