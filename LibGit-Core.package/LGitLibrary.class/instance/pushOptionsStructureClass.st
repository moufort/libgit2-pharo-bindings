accessing
pushOptionsStructureClass

	"Find the correct class depending on the libgit version we are using"
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1))
		ifTrue: [ ^ LGitPushOptionsV02x ].
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1 2))
		ifTrue: [ ^ LGitPushOptionsV100 ].
	
	^ LGitPushOptionsV120