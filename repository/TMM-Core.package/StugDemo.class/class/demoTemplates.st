4 Templates
demoTemplates
	"
Teapot stopAll. self demoTemplates.
	"

Teapot on 
	GET: '/greet' -> {'phrase' -> 'Hello'. 'name' -> 'World'};
	output: (TeaOutput mustacheHtml: '<b>{{phrase}}</b> <i>{{name}}</i>!');
	start.

"
ZnEasy get: 'http://localhost:1701/greet'.
"