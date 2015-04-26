template
moustacheList
	| writer |

	writer := XMLWriter new.
	writer enablePrettyPrinting.
	writer
		tag: 'div'
		attributes: {'class'->'container'. 'style'->'display:table'}
		with: [
			writer
				tag: 'div'
				attributes: {'class'->'col-lg-12 col-md-12'}
				with: [
					self htmlTableOn: writer]].

	^writer contents