5 Mustache
demoMustache1
	"
	self demoMustache1
	"
	| templateString context |

	templateString := '<b>{{phrase}}</b> <i>{{name}}</i>!'.

	context := {'phrase' -> 'Hello'. 'name' -> 'World'} asDictionary.

	^(MustacheTemplate on: templateString) value: context
