route - login
loggedInUser: req
	| session userId providerName |

	session := req znRequest session.
	userId := session attributeAt: 'userid' ifAbsent: [ nil ].
	providerName := session attributeAt: 'providerName' ifAbsent: [ nil ].

	^(userId notNil and: [providerName notNil])
		ifTrue: [
			| user |
			user := TMMUser findUserId: userId providerName: providerName.
			"user isNil ifTrue: [
				user := TMVMUser userId: userId providerName: providerName.
				user save]."
			user]
		ifFalse: [ nil ]