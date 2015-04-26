instance creation
googleUserId: aUserId

	^ self new
		providerName: 'google';
		userId: aUserId;
		yourself