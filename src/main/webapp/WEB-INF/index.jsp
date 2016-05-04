<!doctype html>
<html lang="en" manifest="NAME.manifest">
  <head>
    <meta charset="utf-8">  
    <title>User List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link href="static/css/app.css" rel="stylesheet"></link>
    <link href="static/css/userlist.css" rel="stylesheet"></link>
    <script src="static/js/angular/angular.js"></script>
    <script src="static/js/angular/angular-route.js"></script>
    <script src="static/js/angular/angular-resource.js"></script>
    <script src="static/js/app.js"></script>
    <script src="static/js/service/user_service.js"></script>
    <script src="static/js/controller/controllers.js"></script>
  </head>
  <body ng-app="myApp">
      <div ng-view></div>
  </body>
</html>