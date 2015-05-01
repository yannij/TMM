utility
teapotListBlock

	^ [ :teaRequest | | model objectClass |
		model := teaRequest body.
		objectClass := Smalltalk classNamed: (model at: 'objectClass').
		ZnResponse ok: (ZnStringEntity 
			with: (((Smalltalk at: #MustacheTemplate) on: (self templateContents: 'page'))
				value: model
				partials: (self partialsWithTemplateContents: objectClass mustacheList))
			type: ZnMimeType textHtml) ]
