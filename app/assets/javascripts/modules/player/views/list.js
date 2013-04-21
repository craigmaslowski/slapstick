(function (Views) {
	Views.List = Backbone.View.extend({
		views: [],

		initialize: function () {
			this.collection.on('add', this.addPlayer);
		},

		addPlayer: function (model) {
			this.view.push(new Views.ListItem({
				model: model
			}));
		}
	});
})(module('Player.Views'));