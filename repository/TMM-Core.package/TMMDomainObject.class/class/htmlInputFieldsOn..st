mustache html
htmlInputFieldsOn: anXmlWriter

	self basicNew magritteDescription do: [ :each |
		self htmlInputFieldOn: anXmlWriter description: each ]