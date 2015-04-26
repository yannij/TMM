template
moustacheAdd
	| writer |

	writer := XMLWriter new.
	writer enablePrettyPrinting.
	writer
		tag: 'div'
		attributes: {'class'->'container'". 'style'->'display:table'"}
		with: [
			writer raw: '<h2>Add</h2>'.
			writer
				tag: 'form'
				attributes: {'class'->'form-horizontal'. 'method'->'post'. 'action'->'/flower-edit/{{flowerId}}'}
				with: [
					self htmlInputFieldsOn: writer.
					self submitButtonOn: writer]].

	^writer contents