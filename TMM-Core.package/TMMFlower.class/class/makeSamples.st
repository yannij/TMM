example data
makeSamples
	"
	self makeSamples.
	self selectAll.
	"
	(self new name: 'rose'; description: 'yada yada'; yourself) save.
	(self new name: 'violet'; description: 'yada'; yourself) save.
	(self new name: 'flock'; description: 'yada yada yada'; yourself) save.
