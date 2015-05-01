printing
printOn: aStream

	super printOn: aStream.

	aStream
		nextPut: $(;
		nextPutAll: self providerName printString;
		nextPutAll: ', ';
		nextPutAll: self userId printString;
		nextPut: $);
		yourself