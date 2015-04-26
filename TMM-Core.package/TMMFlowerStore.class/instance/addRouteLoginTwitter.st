route - login
addRouteLoginTwitter

	self server
		GET: '/sso-twitter-callback' -> [:req |
			self ssoTwitterCallback: req znRequest];
		output: [ZnResponse redirect: 'sso-twitter-data'];
		GET: '/sso-twitter-data' -> [:req |
			| data |
			data := self ssoTwitterData: req znRequest.
			self loggedInUser: req.
			(self headerList: req)
				at: 'debug' put: data;
				yourself ];
		output: (self mustacheNamed: 'debug');
		yourself.
		