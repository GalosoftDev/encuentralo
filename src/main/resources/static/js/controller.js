

var cartApp = angular.module("cartApp", []);

cartApp.controller("cartCtrl", function($scope, $http){
	
	$scope.refreshCart = function(cartId) {
		$http.get('/encuentralo/rest/cart/'+$scope.cartId).success(function(data) {
			$scope.cart = data;
		});
	};
	
	$scope.clearCart = function() {
		$http.delete('/encuentralo/rest/cart/'+$scope.cartId).success($scope.refreshCart($scope.cartId));
	};
	

	$scope.testCart = function() {
		alert("Test cart desde angular...");
	};
	
	$scope.initCartId = function(cartId){
		$scope.cartId = cartId;
		$scope.refreshCart(cartId);
	};
	
	$scope.addToCart = function(productId){
		$http.put('/encuentralo/rest/cart/add/'+productId).success(function(data){
			      
			$scope.refreshCart($http.get('/encuentralo/rest/cart/cartId'));
			alert("Product added to cart");
		});
	};
	
	/*$scope.addToCart = function(productId){
		
			
			alert("Product added to cart" + productId);
	
	};*/
	
	
	
	$scope.removeFromCart = function(productId){
		$http.put('/encuentralo/rest/cart/remove/'+productId).success(function(data){
			$scope.refreshCart($http.get('/encuentralo/rest/cart/cartId'));
		});	
	};
});





