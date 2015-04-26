route - upload
handlePostRequest: request
	"POST /image <multipart form data with file part> - change the image and show the result.
	Do full error checking before accepting the newly uploaded image"
	
	| part newImage badRequest reference |

	badRequest := [ ^ ZnResponse badRequest: request ].
	(request hasEntity and: [ request contentType matches: ZnMimeType multiPartFormData ])
		ifFalse: badRequest.
	part := request entity 
		partNamed: #file 
		ifNone: badRequest.
	newImage := part entity.
	(newImage notNil and: [ newImage contentType matches: 'image/*' asZnMimeType ])
		ifFalse: badRequest.
	[ self formForImageEntity: newImage ] on: Error do: badRequest.
	"image := newImage."
	logoFileName := part fileName.
	reference := FileSystem workingDirectory / logoFileName.
	reference writeStreamDo: [ :ws | ws nextPutAll: newImage bytes ].
	"mimetype: part contentType."

	^ ZnResponse redirect: #upload
	