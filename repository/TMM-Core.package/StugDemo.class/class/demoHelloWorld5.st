1 Hello World
demoHelloWorld5
	"
Teapot stopAll. self demoHelloWorld5
	"

	1701 to: 1706 do: [ :port |
		(Teapot configure: { #port -> port })
			GET: '/' -> ('Hello ', port asString);
 			start.
	]
