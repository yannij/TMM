template
htmlTableHeadOn: anXmlWriter

	anXmlWriter
		tag: 'thead'
		with: [
			anXmlWriter
				tag: 'tr'
				with: [
     		           		self listHeadings do: [:each |
						anXmlWriter
							tag: 'th'
							with: [anXmlWriter string: each]].
					anXmlWriter tag: 'th' with: [anXmlWriter raw: '&nbsp;'].
					anXmlWriter tag: 'th' with: [anXmlWriter raw: '&nbsp;']]]