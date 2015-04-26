converting
asDictionary
	| result |

	result := Dictionary new.
	result
		at: 'voyageId' put: self voyageIdHexString;
		at: 'flowerId' put: self voyageIdHexString;
		at: 'flowerName' put: self name;
		at: 'flowerDescription' put: self description;
		yourself.

	^result