route - login
actionLogoutGet: req

	req znRequest session removeAttribute: 'userid'.
	^self ssoLogout: req znRequest
