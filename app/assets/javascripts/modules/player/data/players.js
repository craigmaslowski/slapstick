(function (Collections, Models) {
	Collection.Players = Backbone.Collection.extend({
		model: Models.Player
	});
})(module('Player.Collections'), module('Player.Models'))