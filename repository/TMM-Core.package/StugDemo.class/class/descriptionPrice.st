code snippits
descriptionPrice
	<magritteDescription>
	^ MANumberDescription new
		accessor: #price;
		label: 'Price ';
		priority: 200;
		bePositive;
		yourself