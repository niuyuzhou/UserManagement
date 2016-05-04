'use strict';
App.factory('Application', function(){
	return {
		BaseUrl: 'http://localhost:8080/UserManagement/user'
	};
});

App.factory('UserService', ['$resource', 'Application',
    function($resource, Application){
		return $resource(Application.BaseUrl + '/:userId', 
				{userId:'@id'},
				{
					'update': {method: 'PUT'}
				}
			);
}]);
