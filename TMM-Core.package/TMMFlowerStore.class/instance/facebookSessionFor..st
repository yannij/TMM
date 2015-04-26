sso
facebookSessionFor: aRequest
	^ aRequest session 
		attributeAt: 'facebook-session' 
		ifAbsentPut: [ ZnOAuth2Session facebook: (self ssoDataAt: 'facebook') ]