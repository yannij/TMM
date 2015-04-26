utility
output: req addAll: aDictionary

	^Dictionary new
		addAll: (self headerList: req);
		addAll: aDictionary;
		yourself