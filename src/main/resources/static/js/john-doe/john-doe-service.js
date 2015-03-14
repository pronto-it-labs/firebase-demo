angular.module( 'app' ).factory( 'JohnDoeUserService', function( $http ) {
  return {
	  pushNotificationtoJohnDoe: function() {
      return $http.post( 'user/create-notification-for-john-doe/' );
    },
  };
} );
