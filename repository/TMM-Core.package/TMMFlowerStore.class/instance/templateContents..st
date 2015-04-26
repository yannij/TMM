utility
templateContents: aTemplateName

	^ self staticFilePath asFileReference / 'shtml' / (aTemplateName, '.shtml' )
		readStreamDo: [ :stream | stream contents ].
