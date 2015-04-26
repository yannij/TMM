config
config

	Config isNil ifTrue: [ Config := self buildConfig ].
	^Config