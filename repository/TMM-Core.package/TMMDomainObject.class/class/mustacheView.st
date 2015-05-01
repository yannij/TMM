mustache html
mustacheView
	| writer |

	writer := XMLWriter new.
	writer enablePrettyPrinting.
	writer
		tag: 'div'
		attributes: {'class'->'container'". 'style'->'display:table'"}
		with: [
			writer raw: '<h2>View</h2>'.
			writer
				tag: 'form'
				attributes: {'class'->'form-horizontal'. 'method'->'post'. 'action'->('/', self templateFieldNamePrefix, '-edit/{{voyageId}}')}
				with: [
					self htmlInputFieldsOn: writer]].

	^writer contents