utility
mustacheAddFor: aClass

	^ [ :teaRequest | | object model |
		object := teaRequest body.
		model := (object respondsTo: #asDictionary)
			ifTrue: [ object asDictionary ]
			ifFalse: [ object ].		
		ZnResponse ok: (ZnStringEntity 
			with: (((Smalltalk at: #MustacheTemplate) on: (self templateContents: 'page'))
				value: model
				partials: (self partialsWithTemplateContents: aClass mustacheAdd))
			type: ZnMimeType textHtml) ]
