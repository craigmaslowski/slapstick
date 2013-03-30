Backbone.puree = function (config) {
	var mix = function (prototype, mixins) {
		mixins.unshift(prototype);
		_.extend.apply(_, mixins);
	};

	if (config.all) {		
		config.view = config.view || [];
		config.collection = config.collection || [];
		config.model = config.model || [];

		config.view = config.view.concat(config.all);
		config.collection = config.collection.concat(config.all);
		config.model = config.model.concat(config.all);
	}

	if (config.view) {
		mix(Backbone.View.prototype, config.view);	
	}
	if (config.collection) {
		mix(Backbone.Collection.prototype, config.collection);	
	}
	if (config.model) {
		mix(Backbone.Model.prototype, config.model);	
	}
};