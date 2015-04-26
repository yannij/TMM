instance creation
findGoogleUserId: aUserId

	^ TMMUser selectOne: {
		'providerName' -> 'google'.
		'userId' -> aUserId
		} asDictionary