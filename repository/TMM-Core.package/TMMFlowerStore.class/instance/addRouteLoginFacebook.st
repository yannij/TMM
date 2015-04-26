route - login
addRouteLoginFacebook

	self server
		GET: '/sso-facebook-callback' -> [:req |
			self ssoFacebookCallback: req znRequest];
		output: [ZnResponse redirect: 'sso-facebook-data'];
		GET: '/sso-facebook-data' -> [:req |
			| data |
			data := self ssoFacebookData: req znRequest.
			(self headerList: req)
				at: 'debug' put: data;
				yourself ];
		output: (self mustacheNamed: 'debug');
		yourself.
		