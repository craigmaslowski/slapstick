(function (Views) {
	Views.ListItem = Backbone.View.extend({
		tag: 'tr',
		cssClass: 'player',
		template: _.template('<td><%= name %></td><td><%= number %></td><td><%= position %></td><td><%= number_of_games %></td><td><%= goals %></td><td><%= assists %></td><td><%= plus_minus %></td><td><%= hits %></td><td><%= shots_on_goal %></td><td><%= penalty_minutes %></td>'),
		
		initialize: function () {
			this.render();
		},

		render: function () {
			this.el.append(this.template(this.model.attributes));
		}
	});
})(module('Player.Views'));