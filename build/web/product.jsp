<%-- 
    Document   : index
    Created on : Apr 20, 2018, 10:46:07 AM
    Author     : Younus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="myApp">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/angular.js" type="text/javascript"></script>
        <script src="js/app.js" type="text/javascript"></script>
        <style type="text/css">
            .header, .sidebar, .content,.footer{

                border: 1px solid #DDD;
                padding: 20px;
                margin-top:  10px;
                box-shadow: 0px 0px 10px #DDD;

            }
            .menu{
                margin-top:  10px;



            }


        </style>




    </head>
    <body ng-controller="myCtrl">
       

        <div class="container" >
            <div class="row">
                <div class="header col-md-12">

                    <h1><a href="Restful Web Service"></a></h1>
                </div>

                <div class="menu col-md-12">
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">
                               
                                <ul class="nav navbar-nav">
                                    <li ><a href="index.jsp">Home</a></li>
                                    <li class="active"><a href="product.jsp">Product</a></li>
                                    <li><a href="aboutus.jsp">About Us</a></li>
                                    <li><a href="blog.jsp">Blog</a></li>
                                </ul>
                            </div>
                        </nav>


                    </div>

                </div>

                <div class="col-md-12">
                    <div class="row">
                       product page
                        

                    </div>

                </div>


                <div class="footer col-md-12">
                    footer

                </div>



            </div>

        </div>

    </body>
</html>
