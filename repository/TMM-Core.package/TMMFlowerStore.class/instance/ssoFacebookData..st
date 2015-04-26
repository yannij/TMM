sso
ssoFacebookData: request
	| facebookSession userData |

	facebookSession := self facebookSessionFor: request.
	userData := facebookSession getUserData.

	request session
		attributeAt: 'providerName' put: 'facebook';
		attributeAt: 'userid' put: (userData at: 'email');
		yourself.

	^ NeoJSONWriter toStringPretty: userData