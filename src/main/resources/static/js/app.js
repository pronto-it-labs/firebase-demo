angular.module( 'app', [ 'ui.router', 'home', 'firebase' ] ).config( function( $httpProvider, $locationProvider,
  $urlRouterProvider ) {
  $locationProvider.html5Mode( true );
  $urlRouterProvider.otherwise( '/home' );
} ).run( function() {
  console.log( "app.js!" );
} );
