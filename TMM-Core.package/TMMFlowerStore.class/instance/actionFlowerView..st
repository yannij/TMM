route - flower
actionFlowerView: req
	| model |

	model := self findFlowerOrNil: req.
	^self output: req addAll: model asViewDictionary