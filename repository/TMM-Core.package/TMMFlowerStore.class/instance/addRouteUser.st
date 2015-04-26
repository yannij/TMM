route - user
addRouteUser

	self server
		GET: '/user/<voyageId>' -> [:req |
			self actionUserView: req];
		output: (self mustacheNamed: 'user');
		POST: '/user' -> [:req |
			self actionUserEdit: req];
		output: (self mustacheNamed: 'user');
		yourself