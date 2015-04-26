template
htmlTableBodyOn: anXmlWriter

	anXmlWriter
		tag: 'tbody'
		with: [
			anXmlWriter raw: '{{# list}}'.
			anXmlWriter
				tag: 'tr'
				with: [
     		           		self listHeadings do: [:each |
						anXmlWriter
							tag: 'td'
							with: [anXmlWriter string: '{{flower', each, '}}']].
					anXmlWriter tag: 'td' with: [
						anXmlWriter raw: '<a href="{{editUrl}}"><i class="glyphicon glyphicon-pencil"></i></a>'].
					anXmlWriter tag: 'td' with: [
						anXmlWriter raw: '<a href="{{viewUrl}}"><i class="glyphicon glyphicon-chevron-right"></i></a>']].
			anXmlWriter raw: '{{/ list}}'.
		]