1 Hello World
demoHelloWorld
	"
http://smalltalkhub.com/#!/~zeroflag/Teapot

Teapot stopAll. self demoHelloWorld
	"

	Teapot on
		GET: '/welcome' -> 'Hello World!';
 		start.
