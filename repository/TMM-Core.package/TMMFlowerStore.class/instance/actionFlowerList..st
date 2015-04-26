route - flower
actionFlowerList: req
	| result |

	result := Dictionary new.

	result
		at: 'list'
		put: (TMMFlower selectAll collect: [:model | model asViewDictionary]).

	^self output: req addAll: result