(function (Views) {
	Views.ListItem = Backbone.View.extend({
		tag: 'tr',
		cssClass: 'player',
		template: _.template('<td><%= name %></td><td><%= number %></td><td><%= position %></td><td><%= number_of_games %></td><td><%= goals %></td><td><%= assists %></td><td><%= plus_minus %></td><td><%= hits %></td><td><%= shots_on_goal %></td><td><%= penalty_minutes %></td>'),
		
		initialize: function () {
			this.render();
		},

		render: function () {
			var self = this;
			self.collection.each(function () {
				self.el.append(self.template(self.model));
			});
		}
	});
})(module('Player.Views'));