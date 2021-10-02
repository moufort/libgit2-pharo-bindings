accessing
fetchOptionsStructureClass

	"Find the correct class depending on the libgit version we are using"
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1))
		ifTrue: [ ^ LGitFetchOptionsV02x ].
	^ LGitFetchOptionsV100