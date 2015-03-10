angular.module( 'home.user-b', [] ).config( function( $stateProvider ) {
  $stateProvider.state( 'home.user-b', {
    url: '/user-b',
    templateUrl: '../../js/user-b/user-b.tpl',
    controller: 'UserBCtrl'
  } );
} ).controller( 'UserBCtrl', function( $scope, FirebaseBUserService, $firebase ) {
  var URL = "https://shining-heat-1420.firebaseio.com" + "/notifications/" + 1 + "/data/";
  var ref = new Firebase( URL );
  $scope.notifications = $firebase( ref );
  console.log( "$scope.notifications", $scope.notifications );
  $scope.pushNotificationtoB = function() {
    console.log( "pushNotificationtoB" );
    FirebaseBUserService.pushNotificationtoB().success( function( response ) {
      console.log( "pushNotificationtoB" );
    } ).error( function( response ) {
      console.log( "Something bad happened!" );
    } );
  };
} );
