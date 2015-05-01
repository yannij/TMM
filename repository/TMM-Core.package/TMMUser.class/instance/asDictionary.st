converting
asDictionary
	| result |

	result := Dictionary new.
	result
		at: 'voyageId' put: self voyageId value printStringHex;
		at: 'userId' put: self userId;
		at: 'userUserId' put: self userId;
		at: 'userProviderName' put: 	self providerName;
		yourself.

	^result