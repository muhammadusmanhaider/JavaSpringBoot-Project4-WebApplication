<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>

    <head>
        <title>ServiceInfo Edit</title>



        <style>
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
        <ul>
            <li><a href="/">Home</a></li>
            <li style="float:right"><a href="/location/">Location</a></li>
            <li style="float:right"><a href="/quote/">Quote</a></li>
            <li style="float:right"><a href="/service/">Services</a></li>
            <li style="float:right"><a href="/employee/">Employee</a></li>
            <li style="float:right"><a href="/client/">Client</a></li>

        </ul>
        <div style="padding-left:20px">
            <h1>LOCATION</h1>
        </div>

        </head>

        <body>

<div class="row no-gutters">
         <iframe src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d6929.997787790184!2d-95.34771907506128!3d29.71979129559579!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e6!4m5!1s0x8640be4ffe1f188d%3A0xf92e07bf3f95d5f3!2s4404%20Wheeler%20Ave%2C%20Houston%2C%20TX%2077004!3m2!1d29.716172399999998!2d-95.34206359999999!4m5!1s0x8640be5741f73e2d%3A0xf2922f00016b5fd7!2sUH%20College%20of%20Technology%2C%204730%20Calhoun%20Rd%20%23300%2C%20Houston%2C%20TX%2077004!3m2!1d29.7233122!2d-95.3426214!5e0!3m2!1sen!2sus!4v1582065286463!5m2!1sen!2sus" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>

        <div class="col-lg-6 my-auto showcase-text">
          <h2>A&U Mechanic Shop</h2>
          <p class="lead mb-0">Address: 4404 Wheeler Ave, Houston, TX 77004
                               Phone: (832) 990-2883</p>
        </div>
      </div>
    </div>
  </section>

  </body>
  </html>