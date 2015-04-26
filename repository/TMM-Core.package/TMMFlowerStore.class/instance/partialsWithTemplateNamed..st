utility
partialsWithTemplateNamed: templateName

	^ {
		'htmlhead' -> (self templateContents: 'htmlhead').
		'header' -> (self templateContents: 'header').
		'content' -> (self templateContents: templateName).
		'footer' -> (self templateContents: 'footer').
	} asDictionary