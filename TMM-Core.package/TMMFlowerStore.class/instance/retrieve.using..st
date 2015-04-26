utility
retrieve: aModelClass using: req
	| id model |

	id := Integer readFrom: (req at: #voyageId) base: 16.
	model := aModelClass selectOne: { '_id' -> (OID value: id) } asDictionary.

	^model