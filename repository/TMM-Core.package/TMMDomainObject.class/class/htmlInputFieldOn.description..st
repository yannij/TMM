mustache html
htmlInputFieldOn: anXmlWriter description:  magritteDescription
	| attributeName inputName inputValue |

	attributeName := magritteDescription accessor readSelector asString capitalized.
	inputName := self templateFieldNamePrefix, attributeName.
	inputValue := '{{', inputName, '}}'.

	anXmlWriter
		tag: 'div'
		attributes: {'class'->'form-group'}
		with: [
			anXmlWriter
				tag: 'label'
				attributes: {'for'->inputName. 'class'->'col-sm-2 control-label'}
				with: [
					anXmlWriter string: magritteDescription label].
			anXmlWriter
				tag: 'div'
				attributes: {'class'->'col-sm-10'}
				with: [
					anXmlWriter
						tag: 'input'
						attributes: {'id'->inputName. 'name'->inputName. 'class'->'form-control'. 'value'->inputValue}
						with: []
				]
		]