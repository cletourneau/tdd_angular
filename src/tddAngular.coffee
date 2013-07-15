createApp = (name)->
  deps = []
  angular.module(name, deps)

configureControllers = (app)->
  app.controller 'searchController', searchController

configureRoutes = (app)->
  app.config ($routeProvider)->
    $routeProvider
      .when('/', templateUrl: 'search.html', controller: 'searchController')
      .otherwise(redirectTo: '/')

app = createApp 'tdd_angular'
configureControllers(app)
configureRoutes(app)
