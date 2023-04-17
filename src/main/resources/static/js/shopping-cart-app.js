const app = angular.module("shopping-cart-app",[]);

app.controller("shopping-cart-ctrl", function ($scope,$http){
    // quản lý giỏ hàng
    $scope.cart = {
        carts : [],
        // thêm sản phẩm vào giỏ hàng
        add(id){
            var item = this.carts.find(item => item.productId == id);
            if(item){
                item.qty++;
                this.saveToLocalStorage();
            }else{
                $http.get(`/rest/products/${id}`).then(resp => {
                    resp.data.qty = 1;
                    this.carts.push(resp.data);
                    this.saveToLocalStorage();
                })
            }
        },
        //xóa sản phẩm khỏi giỏ hàng
        remove(id){
            var index = this.carts.findIndex(item => item.productId == id);
            this.carts.splice(index,1);
            this.saveToLocalStorage();
        },
        //xóa sạch các mặt hàng trong giỏ
        clear(){
            this.carts = [];
            this.saveToLocalStorage();
        },
        // tính thành tiền của 1 sản phẩm
        amt_of(item){},
        // tính tổng số lượng các mặt hàng trong giỏ
        get count(){
            return this.carts.map(item => item.qty).reduce((total,qty) => total += qty,0);
        },
        // tổng thành tiền các mặt hàng trong giỏ
        get amount(){
            return this.carts.map(item => item.qty * item.price).reduce((total,qty) => total += qty,0);
        },
        // lưu giỏ hàng vào local storage
        saveToLocalStorage(){
            var json = JSON.stringify(angular.copy(this.carts));
            localStorage.setItem("cart",json);
        },
        // đọc giỏ hàng từ localStorage
        loadFormLocalStorage(){
            var json = localStorage.getItem("cart");
            this.carts = json ? JSON.parse(json) : [] ;
        },
    }
    $scope.cart.loadFormLocalStorage();
})