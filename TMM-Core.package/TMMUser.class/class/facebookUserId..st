instance creation
facebookUserId: aUserId

	^ self new
		providerName: 'facebook';
		userId: aUserId;
		yourself