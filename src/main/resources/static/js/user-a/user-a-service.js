angular.module( 'app' ).factory( 'FirebaseAUserService', function( $http ) {
  return {
    pushNotificationtoA: function() {
      return $http.post( 'user/create-notification-a/' );
    },
  };
} );
