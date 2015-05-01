mustache html
htmlTableOn: anXmlWriter

	anXmlWriter
		tag: 'table'
		attributes: {'class'->'report table table-striped table-condensed table-hover'}
		with: [
			self htmlTableHeadOn: anXmlWriter.
			self htmlTableBodyOn: anXmlWriter]