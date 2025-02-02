private
loadTestData
	| dictionary |
	(testDataLoaded isNotNil and: [ testDataLoaded ]) ifTrue: [ ^ self ].
	testDataLoaded := true.
	
	(FileSystem workingDirectory / 'test_data.json') exists ifFalse: [ ^ self ].
	(FileSystem workingDirectory / 'test_data.json') readStreamDo: [ :stream |
		dictionary := STON fromStream: stream ].
	
	(dictionary at: 'urls') keysAndValuesDo: [ :selector :url |
		self
			perform: selector asSymbol asMutator
			with: url ].
	(dictionary at: 'credentials') keysAndValuesDo: [ :selector :credential |
		LGitRemote
			perform: selector asSymbol asMutator
			with: credential ]