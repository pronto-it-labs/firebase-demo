angular.module('home', [ 'home.john-doe', 'home.jane-doe' ]).config(
		function($stateProvider) {
			$stateProvider.state('home', {
				url : '/home',
				templateUrl : '../../js/home/home.tpl',
				controller : 'HomeCtrl'
			});
		}).controller('HomeCtrl', function() {
});
