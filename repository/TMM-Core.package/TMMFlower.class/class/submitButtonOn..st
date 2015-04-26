template
submitButtonOn: anXmlWriter

	anXmlWriter
		tag: 'div'
		attributes: {'class'->'form-group'}
		with: [
			anXmlWriter
				tag: 'div'
				attributes: {'class'->'col-sm-offset-2 col-sm-10'}
				with: [
					anXmlWriter
						tag: 'button'
						attributes: {'type'->'submit'. 'class'->'btn btn-default'. 'name'->'btn-save'}
						with: [
							anXmlWriter string: 'Save']]]