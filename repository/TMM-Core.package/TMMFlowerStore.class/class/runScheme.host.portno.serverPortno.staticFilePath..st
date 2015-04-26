instance creation
runScheme: aScheme host: aHostname portno: aPortno serverPortno: aListeningPortno staticFilePath: aFilePath
	"
	self runScheme: 'http' host: 'localhost' portno: 80 serverPortno: 9990 staticFilePath: '/home/git/www/tmm'
	"
	| url |
	
	Teapot stopAll.

	url := ZnUrl new
		scheme: aScheme;
		host: aHostname;
		port: aPortno;
		yourself.

	^self new
		initializeOn: { #port -> aListeningPortno. #serverUrl -> url };
		serveStaticFilesFrom: aFilePath;
		addRoutes;
		start;
		yourself