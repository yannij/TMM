route - main
addRouteHome

	self server
		GET: '/' -> [:req | self headerList: req ];
		output: (self mustacheNamed: 'home').
