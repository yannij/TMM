route - flower
actionFlowerAddForm: req
	| result user |

	result := Dictionary new.
	user := self loggedInUser: req.
	user isNil ifTrue: [
		^self output: req addAll: result].

	result := TMMFlower new asAddDictionary.

	^self output: req addAll: result