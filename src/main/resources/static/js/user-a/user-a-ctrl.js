angular.module( 'home.user-a', [] ).config( function( $stateProvider ) {
  $stateProvider.state( 'home.user-a', {
    url: '/user-a',
    templateUrl: '../../js/user-a/user-a.tpl',
    controller: 'UserACtrl'
  } );
} ).controller( 'UserACtrl', function( $scope, FirebaseAUserService, $firebase ) {
  var URL = "https://shining-heat-1420.firebaseio.com" + "/notifications/" + 2 + "/data/";
  var ref = new Firebase( URL );
  $scope.notifications = $firebase( ref );
  console.log( "$scope.notifications", $scope.notifications );
  $scope.pushNotificationtoA = function() {
    console.log( "pushNotificationtoA" );
    FirebaseAUserService.pushNotificationtoA().success( function( response ) {
      console.log( "pushNotificationtoA" );
    } ).error( function( response ) {
      console.log( "Something bad happened!" );
    } );
  };
} );
