utility
mustacheNamed: templateName

	^ [ :teaRequest | | object model |
		object := teaRequest body.
		model := (object respondsTo: #asDictionary)
			ifTrue: [ object asDictionary ]
			ifFalse: [ object ].		
		ZnResponse ok: (ZnStringEntity 
			with: (((Smalltalk at: #MustacheTemplate) on: (self templateContents: 'page'))
				value: model
				partials: (self partialsWithTemplateNamed: templateName))
			type: ZnMimeType textHtml) ]
