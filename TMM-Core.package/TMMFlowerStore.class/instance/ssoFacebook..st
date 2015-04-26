sso
ssoFacebook: request

	| facebookSession |
	
	facebookSession := self facebookSessionFor: request.
		
	^ facebookSession authenticationUrl asString 