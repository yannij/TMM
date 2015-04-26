route - login
addRouteLoginGoogle

	self server
		GET: '/sso-google-callback' -> [:req |
			self ssoGoogleCallback: req znRequest];
		output: [ZnResponse redirect: 'sso-google-data'];
		GET: '/sso-google-data' -> [:req |
			| data |
			data := self ssoGoogleData: req znRequest.
			self loggedInUser: req.
			(self headerList: req)
				at: 'debug' put: data;
				yourself ];
		output: (self mustacheNamed: 'debug');
		yourself.
		