route - login
addRouteLogin

	self server
		GET: '/login' -> [:req | self actionLoginGet: req ];
		output: (self mustacheNamed: 'login');
		POST: '/login' -> [:req | self actionLoginPost: req ];
		output: (self mustacheNamed: 'debug');

		GET: '/logout' -> [:req | self actionLogoutGet: req];
		output: [ZnResponse redirect: '/'];

		GET: '/register' -> [:req | self actionRegisterGet: req ];
		output: (self mustacheNamed: 'register');
		POST: '/register' -> [:req | self actionRegisterPost: req ];
		output: (self mustacheNamed: 'debug');

		yourself.
		