const app = angular.module("product-app", []);

app.controller("product-ctrl", function ($scope, $http) {
    // $scope.products = [];
    $scope.more = [];

    $scope.proo = {
        products: [],
        // cates: [],
        initialize () {
            $http.get("/rest/products").then(resp => {
                // console.log(resp.data);
                // this.products.push(resp.data);
                // console.log(this.products);
                resp.data.forEach(item => {
                    item.createDate = new Date(item.createDate);
                    this.products.push(item);
                });
                
            });
            // $http.get("/rest/category").then(resp => {
            //     resp.data.forEach(item => {
            //         this.cates.push(item);
            //     });
            // })
        },
        // edit(id){
        //     var item = this.products.find(pro => pro.productId == id);
        //     this.form = angular.copy(item);
        // },
        imageChange(files) {
            var folder = "images";
            var data = new FormData();
            // console.log("File: ",files);
            data.append("file",files[0].name);
            $http.post("/rest/upload/" + folder, data, {
                transformRequest: angular.identity,
                headers: {'Content-type': undefined}
            }).then(resp => {
                $scope.more.image = resp.data.name;
                console.log($scope.more.image);
            }).catch(error => {
                alert("Lỗi upload hình!");
                console.log(error);
            })
        }
    }

    $scope.proo.initialize();
})