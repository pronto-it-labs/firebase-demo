angular.module( 'app' ).factory( 'JaneDoeUserService', function( $http ) {
  return {
	  pushNotificationtoJaneDoe: function() {
      return $http.post( 'user/create-notification-for-jane-doe/' );
    },
  };
} );
