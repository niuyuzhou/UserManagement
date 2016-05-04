'use strict';

var App = angular.module('myApp',['ngRoute', 'userControllers', 'ngResource']);

App.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
    when('/users', {
      templateUrl: 'views/user-list.jsp',
      controller: 'UserList'
    }).
    when('/user/:userId', {
      templateUrl: 'views/user-detail.jsp',
      controller: 'UserDetail'
    }).
    otherwise({
      redirectTo: '/users'
    });
}]);