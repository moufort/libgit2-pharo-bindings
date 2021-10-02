testing
isVersionLessThan: anArray
	| version |
	
	version := self version.
	anArray withIndexDo: [ :each :index |
		each < (version at: index)
			ifTrue: [ ^ true ] ].
		
	^ false
	