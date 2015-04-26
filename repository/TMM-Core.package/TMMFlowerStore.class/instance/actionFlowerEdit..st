route - flower
actionFlowerEdit: req
	| result model |

	result := Dictionary new.

	"user := self loggedInUser: req.
	user isNil ifTrue: [
		^self output: req addAll: result]."

	model := self findFlowerOrNil: req.
	(model notNil) ifTrue: [
		model copyValuesFrom: req.
		model save.
		result := model asViewDictionary].

	^self output: req addAll: result