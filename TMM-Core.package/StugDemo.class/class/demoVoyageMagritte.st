6 Voyage/Magritte
demoVoyageMagritte
	"
TMMFlower selectAll.

TMMFlower basicNew magritteDescription collect: [:each | each label ].

TMMFlower basicNew magritteDescription
	inject: OrderedCollection new
	into: [:value :each | value add: each label; yourself ].

	"