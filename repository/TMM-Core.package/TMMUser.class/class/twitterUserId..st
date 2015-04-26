instance creation
twitterUserId: aUserId

	^ self new
		providerName: 'twitter';
		userId: aUserId;
		yourself