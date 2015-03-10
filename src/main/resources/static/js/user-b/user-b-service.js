angular.module( 'app' ).factory( 'FirebaseBUserService', function( $http ) {
  return {
    pushNotificationtoB: function() {
      return $http.post( 'user/create-notification-b/' );
    },
  };
} );
