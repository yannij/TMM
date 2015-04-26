converting
asEditDictionary
	| result |

	result := self asDictionary.
	result
		at: 'editUrl' put: '/flower-edit/', self voyageIdHexString;
		at: 'viewUrl' put: '/flower/', self voyageIdHexString;
		yourself.

	^result