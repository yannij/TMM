sso
ssoGoogle: request

	| googleSession |
	
	googleSession := self googleSessionFor: request.
		
	^ googleSession authenticationUrl asString 