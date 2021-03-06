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
            .header{
                  border: 1px solid #DDD;
                padding: 20px;
                margin-top:  10px;
                box-shadow: 0px 0px 10px #DDD;
                height: 160px;
            }
            
            .footer{

                border: 1px solid #DDD;
                padding: 20px;
                margin-top:  10px;
                box-shadow: 0px 0px 10px #DDD;
            }
            .content{
               border: 1px solid #DDD;
                padding: 20px;
                margin-top:  10px;
                box-shadow: 0px 0px 10px #DDD; 
                height: 500px;
            }
            .menu{
                margin-top:  10px;

            }
            .sidebar{
                    border: 1px solid #DDD;
                padding: 20px;
                margin-top:  10px;
                box-shadow: 0px 0px 10px #DDD;
                height: 500px;
                
            }


        </style>




    </head>
    <body ng-controller="myCtrl">


        <div class="container" >
            <div class="row">
                <div class="header col-md-12">

                    <h1>E-commers site</a></h1>
                </div>

                <div class="menu col-md-12">
                    <div class="row">
                        <nav class="navbar navbar-default">
                            <div class="container-fluid">

                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="index.jsp">Home</a></li>
                                    <li><a href="product.jsp">Product</a></li>
                                    <li><a href="aboutus.jsp">About Us</a></li>
                                    <li><a href="blog.jsp">Blog</a></li>
                                </ul>

                                <ul class="nav navbar-nav navbar-right">
                                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                                </ul>
                            </div>
                        </nav>


                    </div>

                </div>

                <div class="col-md-12">
                    <div class="row">
                        <div class="sidebar col-md-3">
                            <ul class="">
                                <li class="active"><a href="#">Product Category</a></li>
                                <li><a href="dairy.jsp">dairy item</a></li>
                                <li><a href="#">Page 2</a></li>
                                <li><a href="#">Page 3</a></li>
                            </ul>

                        </div>

                        <div class="content col-md-9">
                            <button data-toggle="modal" data-target="#myModalSave" type="button" class="btn btn-success">Add New Product</button>
                            <br/>
                            <br/>
                            <div class="alert alert-success alert-dismissable" ng-show="message" >
                                <a href="#" class="close" ng-click="messageClose()">&times;</a>
                                <strong>Success!</strong> {{message}}
                            </div>

                            <table class="table table-striped table-bordered">
                                <thead>
                                    <tr>

                                        <th>ID</th>
                                        <th>Product Name</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th colspan="2">Action</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr ng-repeat="product in products">
                                        <td>{{$index + 1}}</td>
                                        <td>{{product.pname}}</td>
                                        <td>{{product.price}}</td>
                                        <td>{{product.qty}}</td>
                                        <td><button data-toggle="modal" data-target="#myModalEdit" type="button" class="btn btn-primary" ng-click="selectProduct(product)">Edit</button></td>
                                        <td><button data-toggle="modal" data-target="#myModalDelete" type="button" class="btn btn-danger" ng-click="selectProduct(product)">Delete</button></td>

                                    </tr>
                                </tbody>


                            </table>


                            <!-- Modal -->
                            <div id="myModalSave" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Insert Product</h4>
                                        </div>
                                        <div class="modal-body">

                                            <form >
                                                <div class="form-group">
                                                    <label for="pname">Product name:</label>
                                                    <input ng-model="newProduct.pname" type="text" class="form-control" id="pname">
                                                </div>
                                                <div class="form-group">
                                                    <label for="price">Price:</label>
                                                    <input ng-model="newProduct.price" type="text" class="form-control" id="price">
                                                </div>
                                                <div class="form-group">
                                                    <label for="qty">Quantity:</label>
                                                    <input ng-model="newProduct.qty" type="text" class="form-control" id="qty">
                                                </div>



                                                <button ng-click="saveProduct()" data-dismiss="modal" type="submit" class="btn btn-success">Submit</button>
                                            </form>


                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <!-- EditModal -->

                            <div id="myModalEdit" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Update Product</h4>
                                        </div>
                                        <div class="modal-body">

                                            <form >
                                                <div class="form-group">
                                                    <label for="pid">Product ID</label>
                                                    <input ng-model="clickedProduct.pid" type="text" class="form-control" id="pid">
                                                </div>

                                                <div class="form-group">
                                                    <label for="pname">Product name:</label>
                                                    <input ng-model="clickedProduct.pname" type="text" class="form-control" id="pname">
                                                </div>
                                                <div class="form-group">
                                                    <label for="price">Price:</label>
                                                    <input ng-model="clickedProduct.price" type="text" class="form-control" id="price">
                                                </div>
                                                <div class="form-group">
                                                    <label for="qty">Quantity:</label>
                                                    <input ng-model="clickedProduct.qty" type="text" class="form-control" id="qty">
                                                </div>



                                                <button ng-click="updateProduct()" data-dismiss="modal" type="submit" class="btn btn-success">Submit</button>
                                            </form>


                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>

                                </div>
                            </div>     



                            <!-- DeleteModal -->
                            <div id="myModalDelete" class="modal fade" role="dialog">
                                <div class="modal-dialog">

                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                            <h4 class="modal-title">Delete Product</h4>
                                        </div>
                                        <div class="modal-body">
                                            You are now delete{{clickedProduct.pname}}


                                        </div>
                                        <div class="modal-footer">
                                            <button ng-click="deleteProduct()" type="button" class="btn btn-success" data-dismiss="modal">Ok</button>
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                                        </div>
                                    </div>

                                </div>
                            </div>




                        </div>


                    </div>

                </div>


                <div class="footer col-md-12">
                    footer

                </div>



            </div>

        </div>

    </body>
</html>
