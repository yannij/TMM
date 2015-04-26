instance creation
findUserId: aUserId providerName: providerName

	^ TMMUser selectOne: {
		'providerName' -> providerName.
		'userId' -> aUserId
		} asDictionary