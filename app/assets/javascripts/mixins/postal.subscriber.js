(function(Mixins) {
	Mixins.PostalSubscriber = {
	  	bindSubscriptions: function () {
			var self = this;
			self._subscriptions = [];
			
			if (self.subscriptions) {
				_.each(self.subscriptions, function (subscription) {
					var handler = _.isFunction(subscription.handler)
						? subscription.handler
						: self[subscription.handler];
	 
					self._subscriptions.push(
						app.broker.channel(
							subscription.channel,
							subscription.topic)
						.subscribe(handler)
					);
				});
			}
		},
	 
		unbindSubscriptions: function () {
			var self = this;
			_.each(self._subscriptions, function (subscription) {
				subscription.unsubscribe();
			});
		}
	};
})(module('Mixins'));