route - flower
actionObectList: req
	| result objectName metaData objectClass |

	objectName := req at: 'objectName'.
	metaData := (TMMDomainObject allSubclasses collect: [:each | each magritteDescription ])
							detect: [ :each | each collectionName = objectName ] ifNone: [ nil ].
	objectClass := metaData kind.

	result := Dictionary new.
	result at: 'objectClass' put: objectClass name.

	result
		at: 'list'
		put: (objectClass selectAll collect: [:model | model asViewDictionary]).

	^self output: req addAll: result