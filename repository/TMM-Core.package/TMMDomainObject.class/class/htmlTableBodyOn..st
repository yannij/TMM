mustache html
htmlTableBodyOn: anXmlWriter

	anXmlWriter
		tag: 'tbody'
		with: [
			anXmlWriter raw: '{{# list}}'.
			anXmlWriter
				tag: 'tr'
				with: [
					self listHeadings do: [:each |
						| description getter |

						description := self basicNew magritteDescription detect: [:d | d label = each ] ifNone: [ nil ].
						getter := description accessor readSelector asString.
						getter := (getter copyFrom: 1 to: 1) asUppercase, (getter copyFrom: 2 to: getter size).
						getter := self templateFieldNamePrefix, getter.
						anXmlWriter
							tag: 'td'
							with: [anXmlWriter string: '{{', getter, '}}']].
						anXmlWriter tag: 'td' with: [
							anXmlWriter raw: '<a href="{{editUrl}}"><i class="glyphicon glyphicon-pencil"></i></a>'].
						anXmlWriter tag: 'td' with: [
							anXmlWriter raw: '<a href="{{viewUrl}}"><i class="glyphicon glyphicon-chevron-right"></i></a>']].
			anXmlWriter raw: '{{/ list}}'.
		]