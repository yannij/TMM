route - flower
addRouteFlower

	self server
		GET:  '/flower-list' -> [:req |
			self actionFlowerList: req];
		output: (self mustacheNamed: 'flower-list');

		GET: '/flower/<voyageId>' -> [:req |
			self actionFlowerView: req];
		output: (self mustacheViewFor: TMMFlower);

		GET: '/flower-edit/<voyageId>' -> [:req |
			self actionFlowerView: req];
		output: (self mustacheEditFor: TMMFlower);
		POST: '/flower-edit/<voyageId>' -> [:req |
			self actionFlowerEdit: req];
		output: (self mustacheViewFor: TMMFlower);

		GET: '/flower-add' -> [:req |
			self actionFlowerAddForm: req];
		output: (self mustacheAddFor: TMMFlower);
		POST: '/flower-add' -> [:req |
			self actionFlowerAdd: req];
		output: (self mustacheViewFor: TMMFlower);

		yourself