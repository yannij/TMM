converting
asDictionary
	| result |

	result := Dictionary new.
	result
		at: 'voyageId' put: self voyageId value printStringHex;
		at: 'userId' put: self userId;
		yourself.

	^result