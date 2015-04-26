utility
partialsWithTemplateContents: templateContents

	^ {
		'htmlhead' -> (self templateContents: 'htmlhead').
		'header' -> (self templateContents: 'header').
		'content' -> templateContents.
		'footer' -> (self templateContents: 'footer').
	} asDictionary