2 Parameters
demoParameters
	"
Teapot stopAll. self demoParameters.
	"

	Teapot on
		GET: '/hi' -> 'Bonjour!';
		GET: '/hi/<user>' -> [:req | 'Hello ', (req at: #user)];
 		start.
"
(ZnEasy get: 'http://localhost:1701/hi') entity string.
(ZnEasy get: 'http://localhost:1701/hi/user1234') entity string.
"