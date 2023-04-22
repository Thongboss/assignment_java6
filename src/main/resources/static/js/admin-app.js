app = angular.module("admin-app",["ngRoute"]);

app.config(function ($routeProvider){
    $routeProvider
    .when("/product",{
        templateUrl: "/admin/products",
        controller: "product-ctrl"
    })
    .when("/authorize",{
        templateUrl: "/admin/authorize",
        controller: "authority-ctrl"
    })
    .when("/unauthorized",{
        templateUrl: "/admin/unauthorized",
        controller: "authority-ctrl"
    })
    .otherwise({
        template: "<h1 class='text-center'>Administration</h1>"
    });
});