route - upload
bytesForImageFileName: aString
	| imageType fileContents |

	imageType := 'png'.
	fileContents := aString asFileReference binaryReadStreamDo: [:stream | stream contents ].
	^ fileContents