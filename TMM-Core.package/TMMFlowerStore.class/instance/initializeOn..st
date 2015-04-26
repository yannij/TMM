initialize
initializeOn: aConfiguration

	server := Teapot configure: aConfiguration.
	ssoData := Dictionary new.
