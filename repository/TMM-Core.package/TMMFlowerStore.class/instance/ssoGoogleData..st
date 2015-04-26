sso
ssoGoogleData: request
	| googleSession userData |

	googleSession := self googleSessionFor: request.
	userData := googleSession getUserData.

	request session
		attributeAt: 'providerName' put: 'google';
		attributeAt: 'userid' put: (userData at: 'email');
		yourself.

	^ NeoJSONWriter toStringPretty: userData