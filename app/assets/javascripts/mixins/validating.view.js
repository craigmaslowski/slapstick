(function(Mixins) {
	// For use with https://github.com/thedersen/backbone.validation
	Mixins.ValidatingView = {
		bindValidation: function () {
			Backbone.Validation.unbind(this);
			Backbone.Validation.bind(this, {
				forceUpdate: true,
				selector: 'class',
				valid: this.valid,
				invalid: this.invalid
			});
		},
	 
		valid: function (view, attr) {
			var $field = this.$("[data-field='" + attr + "']"),
				$error = this.$("[data-error-for='" + attr + "']");

			if ($field.length) $field.removeClass('validation-error');
			if ($error.length) $error.html('').hide();
		},
	 
		invalid: function (view, attr, error) {
			var $field = this.$("[data-field='" + attr + "']"),
				$error = this.$("[data-error-for='" + attr + "']");
	 
			if ($field.length) $field.addClass('validation-error');
			if ($error.length) $error.html(error).show();
		}
	};
})(module('Mixins'));