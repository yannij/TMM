route - flower
handleQuery: req
	| query result |

	query := req at: #query ifAbsent: [''].
	result := query isEmpty
		ifTrue: [TMMFlower selectAll]
		ifFalse: [
			TMMFlower selectMany: {
				'$or' -> {
					{'name' -> { '$regex' -> query. '$options' -> 'i' } asDictionary } asDictionary.
					{'description' -> { '$regex' -> query. '$options' -> 'i' } asDictionary} asDictionary
				}
			} asDictionary
		].

	^self output: req addAll: {
		'query' -> query.
		'searchResultSize' -> result size.
		'list' -> (result withIndexCollect: [:each :index | each asSearchResultDictionaryWIthRank: index - 1])} asDictionary