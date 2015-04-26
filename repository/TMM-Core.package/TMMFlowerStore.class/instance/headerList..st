route - main
headerList: req
	| list result ssoUserId user |

	list := {
		'64x64.svg'->'rose'.
		'64x64.svg'->'violet'.
		'64x64.svg'->'tulip'.
		'64x64.svg'->'orchid'.
		} collect: [ :each |
			{
			(Association key: 'heading' value: each value).
			(Association key: 'img' value: each key).
			(Association key: 'href' value: '/search/', each value)
			} asDictionary.
		].

	result := { 
		'headerHomeUrl' -> '/'.
		'headerSearchUrl' -> '/search'.
		'navItemFindUrl' -> '/search'.
		'navItemListUrl' -> '/class-add'.
		'list' -> list.
		'recommended' -> self recommendedList
	} asDictionary.

	ssoUserId := self loggedInUserId: req.
	ssoUserId notNil ifTrue: [
		result at: 'logInOrOutUrl' put: '/logout'.
		result at: 'logInOrOutText' put: 'LOG OUT'.
		result at: 'loggedInUser' put: ' (', ssoUserId, ')'.
		user := self loggedInUser: req.
		(user notNil and: [ user isSuperuser ]) ifTrue: [
			result at: 'isSuperuser?' put: true]
	]
	ifFalse: [
		result at: 'logInOrOutUrl' put: '/login'.
		result at: 'logInOrOutText' put: 'LOG IN'.
		result at: 'loggedInUser' put: ''.
	].

	^result