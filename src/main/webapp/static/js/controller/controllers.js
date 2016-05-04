'use strict';

var userControllers = angular.module('userControllers', []);

userControllers.controller('UserList', ['$scope', 'UserService', function($scope, UserService) {
	var user={};
	var users=[];
	$scope.user={id:null,username:'',address:'',email:''};
	$scope.users=[];
	$scope.orderProp="id";
      
	$scope.fetchAllUsers = function(){
		users = UserService.query(function(){
			$scope.users = users;
		}, function(errResponse){
			console.error('Error while fetching Currencies');
		});
	};

	$scope.deleteUser = function(id){
		$scope.users.forEach(function(elem){
			if (elem.id===id) {
				user = elem;
			}
		});
		user.$delete(function(){
			console.log('delete success');
		},function(errResponse){
			console.error('Error while deleting User.');
		});
	};


      
  $scope.remove = function(id){
      console.log('id to be deleted', id);
      $scope.deleteUser(id);
  };
  
  $scope.fetchAllUsers();
}]);

userControllers.controller('UserDetail', ['$scope', '$routeParams', 'UserService',  
	function($scope, $routeParams, UserService) {
		var new_user;
		var user_;
		$scope.user={id:$routeParams.userId,username:'',address:'',email:''};
		$scope.users=[];

		$scope.fetchAllUsers = function(){
			users = UserService.query(function(){
				$scope.users = users;
			}, function(errResponse){
				console.error('Error while fetching Currencies');
			});
		};

		new_user = new UserService;
		new_user.username = user.username;
		new_user.address = user.address;
		new_user.email = user.email;
		new_user.$save(function(){
			console.log('Success creating User.');
		},function(){
			console.error('Error while creating User.');
		});

		$scope.updateUser = function(user, id){
			UserService.update(user, function(){
				console.log('Success while updating User.');
			},function(){
				console.error('Error while updating User.');
			});
		};

		$scope.submit = function() {
			if($scope.user.id==null){
				console.log('Saving New User', $scope.user);    
				$scope.createUser($scope.user);
			}else{
				$scope.updateUser($scope.user, $scope.user.id);
				console.log('User updated with id ', $scope.user.id);
			}
		};
      
		$scope.edit = function(id){
			console.log('id to be edited', id);
			for(var i = 0; i < $scope.users.length; i++){
				if($scope.users[i].id == id) {
					$scope.user = angular.copy($scope.users[i]);
					break;
				}
			}
		};
		$scope.fetchAllUsers();
}]);
