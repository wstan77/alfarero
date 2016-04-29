angular.module("CdaApp", []).service('myService', function () { }).controller("Index", function($scope, $http){
	$scope.posts=[];  
	$scope.loading=true;
	$http.get("api/v1/admins")
	.success(function(data){
		console.log(data);
		$scope.admins=data;
		$scope.loading=false;
	})
	.error(function(err){ 
		$scope.loading=false;
	});
});