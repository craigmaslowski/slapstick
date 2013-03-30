(function(Mixins) {
	Mixins.DestroyableView = {
		destroy: function () {
			if (Backbone.Validation) Backbone.Validation.unbind(this);
	 		if (_.isFunction(this.unbindSubscriptions)) this.unbindSubscriptions();

			this.undelegateEvents();
			this.$el.removeData().unbind();
			this.remove();
			Backbone.View.prototype.remove.call(this);
		}
	};
})(module('Mixins'));