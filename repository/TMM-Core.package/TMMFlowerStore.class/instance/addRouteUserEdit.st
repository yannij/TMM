route - user
addRouteUserEdit

	self server
		GET: '/user-edit/<voyageId>' -> [:req |
			self actionUserEditForm: req ];
		output: (self mustacheNamed: 'user-edit');
		yourself