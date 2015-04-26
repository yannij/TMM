route - user
actionUserView: req
	| result user |

	result := Dictionary new.
	user := self loggedInUser: req.
	user isNil ifTrue: [
		^self output: req addAll: result].

	result := user asViewDictionary.

	^self output: req addAll: result