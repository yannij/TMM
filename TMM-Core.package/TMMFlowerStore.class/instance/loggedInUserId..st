route - login
loggedInUserId: req

	^ req znRequest session attributeAt: 'userid' ifAbsent: [ nil ]