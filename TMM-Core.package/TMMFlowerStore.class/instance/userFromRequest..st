route - user
userFromRequest: req
	| voyageId model |

	voyageId := req at: 'userVoyageId'.
	model := TMMUser findByVoyageId: voyageId.
	^ model