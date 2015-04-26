route - main
recommendedList

	^ {
		'242x200.svg'->'Flower 1'.
		'242x200.svg'->'Flower 2'.
		'242x200.svg'->'Flower 3'.
		} collect: [ :each |
			{
			(Association key: 'heading' value: each value).
			(Association key: 'img' value: each key).
			(Association key: 'href' value: '/search/', each value)
			} asDictionary.
		]