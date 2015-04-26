3 Response Transformers
demoResponseTransformers
	"
Teapot stopAll. self demoResponseTransformers.
	"

Teapot on 
    GET: '/hello' -> '<h1>hello<h1>'; output: #html;
    GET: '/jsonlist' -> #(1 2 3 4); output: #json;
    GET: '/sometext' -> 'this is text plain'; output: #text;
    GET: '/download' -> ['foobar.txt' asFileReference readStream]; output: #stream;
    start.

"
ZnEasy get: 'http://localhost:1701/hello'.
(ZnEasy get: 'http://localhost:1701/jsonlist') entity string.
ZnEasy get: 'http://localhost:1701/sometext'.
ZnEasy get: 'http://localhost:1701/download'.
"