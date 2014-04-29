angular.module("yeomanAngularHamlApp", ['ngRoute','gridster']).config ($routeProvider) ->
  $routeProvider.when("/",
    templateUrl: "views/main.html"
    controller: "MainCtrl"
  ).otherwise redirectTo: "/"
