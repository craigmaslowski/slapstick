// memoized module function supporting dot notated namspacing
var module = function () {
	var modules = {};

	return function (namespace) {
		var nodes = namespace.split('.'),
			lastNode;

		_.each(nodes, function (node) {
			// handle first iteration
			if (!lastNode) {
				if (!modules[node]) modules[node] = {};
				lastNode = modules[node];
			} else { // handle the rest of the iterations
				lastNode[node] = lastNode[node] || {};
				lastNode = lastNode[node];
			}
		})
		return lastNode;
	};
}();