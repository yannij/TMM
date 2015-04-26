example data
makeIndex
	"
db.Flower.ensureIndex( { name: ""text"", description: ""text"" } )

db.Flower.find( { $text: { $search: ""test5"" } } )
	"