printing
printOn: aStream

	super printOn: aStream.

	aStream
		nextPut: $(;
		nextPutAll: self name printString;
		nextPutAll: ', ';
		nextPutAll: self description printString;
		nextPut: $);
		yourself