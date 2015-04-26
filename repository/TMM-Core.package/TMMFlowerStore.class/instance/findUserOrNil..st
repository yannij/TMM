route - user
findUserOrNil: req
	| voyageId |

	voyageId := Integer readFrom: (req at: #voyageId) base: 16.
	^ TMMUser selectOne: { '_id' -> (OID value: voyageId) } asDictionary
