route - upload
addRouteUpload

	self server
		GET: '/upload' -> [:req | self handleGetRequest: req];
		output: [ :object | object];
		POST: '/upload' -> [:req | self handlePostRequest: req];
		output: [ :object | object];
		yourself
