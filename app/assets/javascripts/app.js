(function(App, Mixins) {
	// any app initialization tasks we need to do on every page load occur here.
	// app.start() is called in our server side layout.
	App.start = function () {
		// merge global mixins to native backbone types
		Backbone.puree({
			all: [
				Mixins.PostalSubscriber
			],
			view: [
				Mixins.DestroyableView
			]
		});
	};

	// used by postal convenience methods below to separate 
	// space delimited 'channel topic' parameter values
	var splitChannelTopic = function(channelTopic) {
		channelTopic = channelTopic || '';
		channelTopic = channelTopic.split(' ');
		if (channelTopic.length !== 2) throw new Error('Space delimited channel and topic not provided.');
		return channelTopic;
	};

	// convenience method for postal subscriptions
	// consumer should cache return value to unsubscribe
	App.on = function (channelTopic, callback) {
		channelTopic = splitChannelTopic(channelTopic);
		if (!_.isFunction(callback)) throw new Error('Callback function not provided.');
		return postal.channel(channelTopic[0]).subscribe(channelTopic[1], callback);
	};

	// convenience method for postal publishing
	App.emit = function (channelTopic, payload) {
		channelTopic = splitChannelTopic(channelTopic);
		postal.channel(channelTopic[0]).publish(channelTopic[1], payload);
	};
})(module('App'), module('Mixins'));