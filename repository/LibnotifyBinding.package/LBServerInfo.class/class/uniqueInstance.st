accessing
uniqueInstance
	^ UniqueInstance ifNil: [ UniqueInstance := super new refresh; yourself ]