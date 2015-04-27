route - login
actionRegisterPost: req
	| email password password2 message user |

	email := (req at: 'email').
	password := (req at: 'password').
	password2 := (req at: 'password2').

	message := 'Passwords did not match.'.

	password = password2 ifTrue: [
		user := TMMUser findLocalUserId: email.
		user isNil ifTrue: [
			user := TMMUser userId: email providerName: 'local'.
			user passwordHash: (MD5 hashMessage: password).
			user save.
			message := 'Welcome ', email.
			]
		ifFalse: [
			message := email, ' already registered'.
			].
	].

	^(self headerList: req)
		at: 'debug' put: message;
		yourself