accessing
ssoDataAt: aKey

	^ self ssoData at: aKey ifAbsent: [ nil ]