var app = angular.module('caterorder', []);

app.controller('DeptController', ['$http',function($http) {
  var caterorder = this;
   caterorder.depts = [];
  $http.get('/depts.json').success(function(data){
    caterorder.depts=data;  
	}); // http get close


  this.dept ={}; // Dept init  
  this.addDept = function(dept){  // addDept simply calls the post
  $http.post('/depts.json',{dept}); // Next line is interesting.
  $http.get('/depts.json').success(function(data){ // We load depts again to reflect row add 
    caterorder.depts=data;  
   });
  }; // addDept close
 
  // Start get a dept



 }]); // Controller close




















