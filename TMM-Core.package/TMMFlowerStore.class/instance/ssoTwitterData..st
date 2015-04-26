sso
ssoTwitterData: request
	|  accessToken userData |

	accessToken := self twitterSessionFor: request
		ifAbsent: [ ^ self generateInvalidCallbackRequest ].

	userData := ZnOAuth1TwitterUserAccess new
		oauth1Service: self twitterOAuth1Service ;
		accessToken: accessToken ;
		accountVerifyCredentials.

	request session
		attributeAt: 'providerName' put: 'twitter';
		attributeAt: 'userid' put: (userData at: 'screen_name');
		yourself.

	^ NeoJSONWriter toStringPretty: userData