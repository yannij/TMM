instance creation
findLocalUserId: aUserId

	^ TMMUser selectOne: {
		'providerName' -> 'local'.
		'userId' -> aUserId
		} asDictionary