route - login
actionLoginPost: req
	| email password user message |

	email := (req at: 'email').
	user := TMMUser findLocalUserId: email.

	message := 'Login failed'.

	user notNil ifTrue: [
		password := (req at: 'password').
		user passwordHash asByteArray = (MD5 hashMessage: password) ifTrue: [
			message := 'Welcome back ', email.
			req session
				attributeAt: 'providerName' put: 'local';
				attributeAt: 'userid' put: email;
				attributeAt: 'profileImageUrl' put: 'picture';
				yourself.
		]
	].

	^(self headerList: req)
		at: 'debug' put: message;
		yourself