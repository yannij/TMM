sso
twitterSessionFor: aRequest put: anObject

	^ aRequest session attributeAt: 'twitter-session' put: anObject