route - user
actionUserEditForm: req
	| result |

	result := Dictionary new.
	result
		at: 'users'
		put: (TMMUser selectAll collect: [:each | each asSelectTagDictionary]);
		yourself.

	^self output: req addAll: result