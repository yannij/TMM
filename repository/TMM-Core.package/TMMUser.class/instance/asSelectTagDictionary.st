converting
asSelectTagDictionary
	| voyageId |

	voyageId := self voyageId value printStringHex.

	^ Dictionary new
		at: 'userVoyageId' put: voyageId;
		at: 'userId' put: self userId;
		yourself