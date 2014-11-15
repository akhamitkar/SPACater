var app = angular.module('caterorder', []);

app.controller('DeptController', ['$http',function($http) {
  var caterorder = this;
   caterorder.depts = [];
   caterorder.dept = {};
  $http.get('/depts.json').success(function(data){
    caterorder.depts=data;  
	}); // http get close


  this.dept ={}; // Dept init  
  this.addDept = function(dept){  // addDept simply calls the post
  $http.post('/depts.json',{dept}); // Next line is interesting.
  $http.get('/depts.json').success(function(data){ // We load depts again to reflect row add 
    caterorder.depts=data;  
  caterorder.dept={};
   });
  }; // addDept close
 
  // Start PUT a dept
  this.editDept = function(dept){  // addDept simply calls the post
  url = '/depts/' + dept.id + '.json'
  // Next line is interesting.
  $http.put(url,{dept});
  $http.get('/depts.json').success(function(data){ // We load depts again to reflect row add 
    caterorder.depts=data;  
  this.dept={};
   });
  }; // editDept close

  // Start DELETE a dept
  this.deleteDept = function(deptid){  // addDept simply calls the post
  url = '/depts/' + deptid + '.json'
  $http.delete(url);
  $http.get('/depts.json').success(function(data){ // We load depts again to reflect row add 
    caterorder.depts=data;  
  this.dept={};
   });
  }; // deleteDept close



 }]); // Controller close




















