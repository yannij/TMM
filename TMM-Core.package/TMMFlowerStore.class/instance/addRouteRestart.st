route - main
addRouteRestart

	self server
		GET: '/restart' -> [:req | Smalltalk snapshot: false andQuit: true];
		output: (self mustacheNamed: 'home').
