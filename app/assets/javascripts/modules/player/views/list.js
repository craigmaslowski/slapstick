(function (Views) {
	Views.List = Backbone.View.extend({
		views: [],

		initialize: function () {
			this.collection.on('add', this.addPlayer);
		},

		addPlayer: function (model) {
			var view = new Views.ListItem({
				model: model
			});
			this.$el.append(view.el);
			this.views.push(view);
		}
	});
})(module('Player.Views'));