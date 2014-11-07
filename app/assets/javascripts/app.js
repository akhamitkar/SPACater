var app = angular.module('caterorder', []);

app.controller('OrderJsonCtrl', [ '$http',function($http){
 var jsonorders = this;
 jsonorders.orders = [];
 $http.get('/orders.json').success(function(data){
  jsonorders.orders = data;
 });
 }]);
