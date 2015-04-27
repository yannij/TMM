route - login
actionLoginGet: req

	^(self headerList: req)
		at: 'googleOauth2Url' put: (self ssoGoogle: req znRequest);
		at: 'facebookOauth2Url' put: (self ssoFacebook: req znRequest);
		at: 'twitterOauth1Url' put: (self ssoTwitter: req znRequest);
		yourself