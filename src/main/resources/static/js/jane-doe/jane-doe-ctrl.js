angular.module( 'home.jane-doe', [] ).config( function( $stateProvider ) {
  $stateProvider.state( 'home.jane-doe', {
    url: '/jane-doe',
    templateUrl: '../../js/jane-doe/jane-doe.tpl',
    controller: 'JaneDoeCtrl'
  } );
} ).controller( 'JaneDoeCtrl', function( $scope, JaneDoeUserService, $firebase ) {
  var URL = "https://shining-heat-1420.firebaseio.com" + "/notifications/" + "john-doe" + "/data/";
  var ref = new Firebase( URL );
  $scope.notifications = $firebase( ref );
  console.log( "$scope.notifications", $scope.notifications );
  $scope.pushNotificationtoJaneDoe = function() {
	  JaneDoeUserService.pushNotificationtoJaneDoe().success( function( response ) {
      console.log( "pushNotificationtoJaneDoe" );
    } ).error( function( response ) {
      console.log( "Something bad happened!" );
    } );
  };
} );
