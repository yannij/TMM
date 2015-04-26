sso
googleSessionFor: aRequest
	^ aRequest session 
		attributeAt: 'google-session' 
		ifAbsentPut: [ ZnOAuth2Session google: (self ssoDataAt: 'google') ]