config
buildConfig
	"
	self buildConfig

	Example:
		See class comment because double quotes are needed
	"

	^NeoJSONReader fromString: ('config.json' asFileReference contents)