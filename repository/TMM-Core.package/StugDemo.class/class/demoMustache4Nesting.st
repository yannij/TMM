5 Mustache
demoMustache4Nesting
	"
	Called 'partials' in Mustache.

	self demoMustache4Nesting
	"
	| templateString userTemplateString |

	templateString := '<h2>Names</h2>
{{# names }}
   {{> user }}
{{/ names }}'.

	userTemplateString := '<strong>{{name}}</strong>'.

	^(MustacheTemplate on: templateString)
		value: {
			'names' -> {
				{ 'name' -> 'Username' } asDictionary.
				{ 'name' -> 'Alias' } asDictionary
			} } asDictionary
		partials: {'user' ->  userTemplateString} asDictionary.

