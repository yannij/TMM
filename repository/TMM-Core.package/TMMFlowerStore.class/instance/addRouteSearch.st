route - flower
addRouteSearch

	self server
		GET: '/search' -> [:req | self handleQuery: req];
		output: (self mustacheListFor: TMMFlower);
		GET: '/search/<query>' -> [:req | self handleQuery: req];
		output: (self mustacheListFor: TMMFlower);
		POST: '/search' -> [:req | self handleQuery: req];
		output: (self mustacheListFor: TMMFlower)