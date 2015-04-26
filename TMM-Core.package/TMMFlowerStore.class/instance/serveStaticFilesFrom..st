initialize
serveStaticFilesFrom: aLocalFilePath

	self staticFilePath: aLocalFilePath.
	self server serveStatic: '/' from: aLocalFilePath.
