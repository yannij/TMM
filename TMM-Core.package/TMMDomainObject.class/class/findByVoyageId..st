mongo query
findByVoyageId: aVoyageId
	| id model |

	id := Integer readFrom: aVoyageId base: 16.
	model := self selectOne: { '_id' -> (OID value: id) } asDictionary.

	^model