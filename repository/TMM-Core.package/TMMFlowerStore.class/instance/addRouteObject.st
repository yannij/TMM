route - main
addRouteObject

	self server
		GET:  '/l/<objectName>' -> [:req |
			self actionObectList: req];
		output: self teapotListBlock;

		GET: '/o/<objectName>/<voyageId>' -> [:req |
			self actionFlowerView: req];
		output: (self mustacheViewFor: TMMFlower);

		GET: '/e/<objectName>/<voyageId>' -> [:req |
			self actionFlowerView: req];
		output: (self mustacheEditFor: TMMFlower);
		POST: '/e/<objectName>/<voyageId>' -> [:req |
			self actionFlowerEdit: req];
		output: (self mustacheViewFor: TMMFlower);

		GET: '/a/<objectName>' -> [:req |
			self actionFlowerAddForm: req];
		output: (self mustacheAddFor: TMMFlower);
		POST: '/a/<objectName>' -> [:req |
			self actionFlowerAdd: req];
		output: (self mustacheViewFor: TMMFlower);

		yourself