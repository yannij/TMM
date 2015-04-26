5 Mustache
demoMustache2List
	"
	self demoMustache2List
	"
	| templateString context |

	templateString := 'A list of numbers
{{# list }}
Number: {{ number }}
{{/ list }}
'.

	context := {
		'label' -> 'fine'.
		'list' -> {
			{ 'number' -> 1 } asDictionary.
			{ 'number' -> 2 } asDictionary.
		}
	} asDictionary.

	^(MustacheTemplate on: templateString) value: context
