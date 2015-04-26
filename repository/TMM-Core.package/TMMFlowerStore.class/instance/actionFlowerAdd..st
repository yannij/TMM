route - flower
actionFlowerAdd: req
	| result btn user |

	result := Dictionary new.

	user := self loggedInUser: req.
	user isNil ifTrue: [
		^self output: req addAll: result].

	btn := (req at: 'btn-save' ifAbsent: [nil]).	
	(btn notNil and: [(req at: 'className' ifAbsent: ['']) notEmpty]) ifTrue: [
		| model |
		model := TMMFlower new.
		model copyValuesFrom: req.
		model save.
		result := model asViewDictionary].

	^self output: req addAll: result