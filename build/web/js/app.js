var myApp = angular.module('myApp', []);

myApp.controller('myCtrl', function ($scope, $http) {

    $scope.message = "";
    $scope.error_message = "";

    //get All Product

    $scope.getAllproduct = function () {
        $http({
            method: "GET",
            url: 'http://localhost:8080/AngularWeb/webresources/products'
        }).then(
                function (response) {
                    $scope.products = response.data;
                },
                function (reason) {
                    $scope.error_message = reason.data;

                });

    };

    $scope.getAllproduct();

    //save product
    $scope.newProduct = {};
    $scope.saveProduct = function () {
        $http({
            method: 'post',
            url: 'http://localhost:8080/AngularWeb/webresources/products',
            data: angular.toJson($scope.newProduct),
            headers: {
                'contet-Type': 'application/json'
            }

        }).then(
                function (response) {
                    $scope.message = "product Saved successfully";
                    $scope.getAllproduct();


                },
                function (reason) {
                    $scope.error_message = reason.data;

                });

    };


    //select product by click

    $scope.clickedProduct = {};
    $scope.selectProduct = function (product) {

        $scope.clickedProduct = product;

    };

    //update product

    $scope.updateProduct = function () {
        $http({
            method: 'PUT',
            url: 'http://localhost:8080/AngularWeb/webresources/products'+$scope.clickedProduct.pid,
            data: angular.toJson($scope.clickedProduct),
            headers: {
                'contet-Type': 'application/json'
            }

        }).then(
                function (response) {
                    $scope.message = "product Update successfully";
                    $scope.getAllproduct();


                },
                function (reason) {
                    $scope.error_message = reason.data;

                }
        );

    };
    
    
    //delete product
    $scope.deleteProduct=function(){
       $http({
           method:'DELETE',
           url:'http://localhost:8080/AngularWeb/webresources/products/' +$scope.clickedProduct.pid
           
       }).then(
                function (response) {
                    $scope.message = "product deleted successfully";
                    $scope.getAllproduct();


                },
                function (reason) {
                    $scope.error_message = reason.data;

                });

        
        
    };
    

//clear message
$scope.messageClose= function(){
      $scope.message = "";
    $scope.error_message = "";
    
};

//get all dairyproduct
 $scope.getAllDairyproduct = function () {
        $http({
            method: "GET",
            url: 'http://localhost:8080/AngularWeb/webresources/dairys'
        }).then(
                function (response) {
                    $scope.dairys = response.data;
                },
                function (reason) {
                    $scope.error_message = reason.data;

                });

    };

    $scope.getAllDairyproduct();


//save dairyproduct

 $scope.newDairyProduct = {};
    $scope.saveDairyProduct = function () {
        $http({
            method: 'post',
            url: 'http://localhost:8080/AngularWeb/webresources/dairys',
            data: angular.toJson($scope.newDairyProduct),
            headers: {
                'contet-Type': 'application/json'
            }

        }).then(
                function (response) {
                    $scope.message = "product Saved successfully";
                    $scope.getAllDairyproduct();


                },
                function (reason) {
                    $scope.error_message = reason.data;

                });

    };
    
    //select dairyproduct
    
     $scope.clickedDairyProduct = {};
    $scope.selectDairyProduct = function (dairy) {

        $scope.clickedDairyProduct = dairy;

    };
    //update dairy product
    
      $scope.updateDairyProduct = function () {
          console.log($scope.clickedDairyProduct.pid);
          console.log(angular.toJson($scope.clickedDairyProduct));
        $http({
            method: 'PUT',
            url: 'http://localhost:8080/AngularWeb/webresources/dairys',
            data: angular.toJson($scope.clickedDairyProduct),
            headers: {
                'contet-Type': 'application/json'
            }

        }).then(
                function (response) {
                    $scope.message = "product Update successfully";
                    $scope.getAllDairyproduct();


                },
                function (reason) {
                    $scope.error_message = reason.data;

                }
        );

    };
    
    //delete dairy product
    
     $scope.deleteDairyProduct=function(){
       $http({
           method:'DELETE',
           url:'http://localhost:8080/AngularWeb/webresources/dairys/' +$scope.clickedDairyProduct.pid
           
       }).then(
                function (response) {
                    $scope.message = "product deleted successfully";
                    $scope.getAllDairyproduct();


                },
                function (reason) {
                    $scope.error_message = reason.data;

                });

        
        
    };
    
    //clear message

$scope.messageClose= function(){
      $scope.message = "";
    $scope.error_message = "";
    
};





});

