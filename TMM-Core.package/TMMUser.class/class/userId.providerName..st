instance creation
userId: aUserId providerName: providerName

	^ self new
		providerName: providerName;
		userId: aUserId;
		yourself