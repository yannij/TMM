route - user
actionUserEdit: req
	| result btn loggedInUser |

	result := Dictionary new.

	loggedInUser := self loggedInUser: req.
	(loggedInUser isNil or: [ loggedInUser isSuperuser not ]) ifTrue: [
		^self output: req addAll: result].

	btn := (req at: 'btn-save' ifAbsent: [nil]).	
	btn notNil ifTrue: [
		| user |
		user := self userFromRequest: req.
		user notNil ifTrue: [ 
			user save.
			result := user asViewDictionary]].

	^self output: req addAll: result