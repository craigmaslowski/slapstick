(function (Models) {
	Models.Player = Backbone.Model.extend({
		url: '/players'
	});
})(module('Player.Models'))