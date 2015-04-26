5 Mustache
demoMustache3List
	"
	self demoMustache3List
	"
	| templateString packageNames context |

	templateString := '{{label}} Names:
{{# list }}
Name: {{ packageName }}{{/ list }}
'.

	packageNames := (RPackageOrganizer default packages
		collect: [ :each | each name ]) asSortedCollection.

	context := {
		'label' -> 'Package'.
		'list' -> (packageNames collect: [ :each | { 'packageName' -> each } asDictionary])
	} asDictionary.

	^(MustacheTemplate on: templateString) value: context
