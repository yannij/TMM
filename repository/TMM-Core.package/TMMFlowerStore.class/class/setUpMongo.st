mongo
setUpMongo
	"
	self setUpMongo
	"
	| repo |

	repo := VOMongoRepository
		host: VOMongoRepository defaultHost
		database: 'tmm'.

	VORepository setRepository: repo.
