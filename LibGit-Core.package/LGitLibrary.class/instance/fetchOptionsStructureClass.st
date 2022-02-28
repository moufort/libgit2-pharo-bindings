accessing
fetchOptionsStructureClass

	"Find the correct class depending on the libgit version we are using"
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1))
		ifTrue: [ ^ LGitFetchOptionsV02x ].
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1 2))
		ifTrue: [ ^ LGitFetchOptionsV100 ].
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1 4))
		ifTrue: [ ^ LGitFetchOptionsV120 ].
		
	^ LGitFetchOptionsV140