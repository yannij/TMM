route - upload
image
	| fileName |

	fileName := 'like.png'.
	logoFileName ifNotNil: [ fileName := logoFileName ].
	^ image := ZnEntity with: (self bytesForImageFileName: fileName) type: 'image/png'
