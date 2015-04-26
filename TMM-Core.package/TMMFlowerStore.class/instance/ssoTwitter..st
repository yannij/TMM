sso
ssoTwitter: request

	| oauthService requestToken |

	oauthService := self twitterOAuth1Service.

	requestToken := oauthService getRequestTokenFor: request server url / 'sso-twitter-callback'.
	self twitterSessionFor: request put: requestToken.
	
	^ (oauthService loginUrlFor: requestToken) asString