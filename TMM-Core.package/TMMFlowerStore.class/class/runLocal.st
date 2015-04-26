instance creation
runLocal
	"
	self runLocal.
	Teapot stopAll.
	"
	| server |

	server := TMMFlowerStore
		runScheme: 'http'
		host: 'localhost'
		portno: 1701
		serverPortno: 1701
		staticFilePath: self defaultStaticFilePath..

	"https://developers.google.com/console/help/new/#generatingoauth2"
	server
		ssoDataAt: 'google'
		put: (ZnOAuth2ConsumerData 
			key: self googleKey
			secret: self googleSecret
			redirectUrl: self defaultUrlPrefix, 'sso-google-callback').

	"Have NOT been successful at getting facebook credentials"
	server
		ssoDataAt: 'facebook'
		put: (ZnOAuth2ConsumerData 
			key: self facebookKey
			secret: self facebookSecret
			redirectUrl: self defaultUrlPrefix, 'sso-facebook-callback').

	"get secret token at:  https://apps.twitter.com/"
	server
		ssoDataAt: 'twitter'
		put: (ZnOAuth1ConsumerData newForTwitterAuthentication 
			consumer: self twitterKey;
			consumerSecret: self twitterSecret
			).

	^ server