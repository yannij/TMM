printing
printOn: aStream
	aStream
		nextPutAll: self name asString;
		nextPutAll: ' - ';
		nextPutAll: self description asString;
		yourself