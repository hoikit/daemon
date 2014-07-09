'use strict'

# Declare app level module which depends on filters, and services
App = angular.module('daemon', [
  'ngCookies'
  'ngResource'
  'ngRoute'
  'daemon.controllers'
  'daemon.directives'
  'daemon.filters'
  'daemon.services'
  'partials'
])

App.config([
  '$routeProvider'
  '$locationProvider'

($routeProvider, $locationProvider, config) ->

  $routeProvider

    .when('/control', {templateUrl: '/partials/control.html'})
    .when('/edit', {templateUrl: '/partials/edit.html'})
    .when('/simulate', {templateUrl: '/partials/simulate.html'})

    # Catch all
    .otherwise({redirectTo: '/control'})

  # Without server side support html5 must be disabled.
  $locationProvider.html5Mode(false)
])