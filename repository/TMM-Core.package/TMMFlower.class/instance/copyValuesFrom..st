converting
copyValuesFrom: req

	self
		name: (req at: 'flowerName');
		description: (req at: 'flowerDescription');
		yourself.
