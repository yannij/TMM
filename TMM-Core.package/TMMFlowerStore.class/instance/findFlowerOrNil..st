route - flower
findFlowerOrNil: req
	| voyageId |

	voyageId := Integer readFrom: (req at: #voyageId) base: 16.
	^ TMMFlower selectOne: { '_id' -> (OID value: voyageId) } asDictionary
