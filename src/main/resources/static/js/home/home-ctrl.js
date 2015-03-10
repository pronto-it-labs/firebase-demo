angular.module('home', [ 'home.user-a', 'home.user-b' ]).config(
		function($stateProvider) {
			$stateProvider.state('home', {
				url : '/home',
				templateUrl : '../../js/home/home.tpl',
				controller : 'HomeCtrl'
			});
		}).controller('HomeCtrl', function() {
});
