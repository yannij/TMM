route - login
addRouteLogin

	self server
		GET: '/login' -> [:req |
			(self headerList: req)
				at: 'googleOauth2Url' put: (self ssoGoogle: req znRequest);
				at: 'facebookOauth2Url' put: (self ssoFacebook: req znRequest);
				at: 'twitterOauth1Url' put: (self ssoTwitter: req znRequest);
				yourself ];
		output: (self mustacheNamed: 'login');
		GET: '/logout' -> [:req |
			req znRequest session removeAttribute: 'userid'.
			self ssoLogout: req znRequest];
		output: [ZnResponse redirect: '/'];
		yourself.
		