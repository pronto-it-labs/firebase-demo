angular.module( 'home.john-doe', [] ).config( function( $stateProvider ) {
  $stateProvider.state( 'home.john-doe', {
    url: '/john-doe',
    templateUrl: '../../js/john-doe/john-doe.tpl',
    controller: 'JohnDoeCtrl'
  } );
} ).controller( 'JohnDoeCtrl', function( $scope, JohnDoeUserService, $firebase ) {
  var URL = "your-firebase-url-comes-here" + "/notifications/" + "jane-doe" + "/data/";
  var ref = new Firebase( URL );
  $scope.notifications = $firebase( ref );
  console.log( "$scope.notifications", $scope.notifications );
  $scope.pushNotificationtoJohnDoe = function() {
    console.log( "pushNotificationtoJohnDoe" );
    JohnDoeUserService.pushNotificationtoJohnDoe().success( function( response ) {
      console.log( "pushNotificationtoJohnDoe" );
    } ).error( function( response ) {
      console.log( "Something bad happened!" );
    } );
  };
} );
