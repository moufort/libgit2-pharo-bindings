libgit - calls
remote_push: remote refspecs: refspecs opts: opts
	
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1))
		ifTrue: [ ^ self remote_push_v0251: remote refspecs: refspecs opts: opts ].
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1 2))
		ifTrue: [ ^ self remote_push_v100: remote refspecs: refspecs opts: opts ].
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1 4))
		ifTrue: [ ^ self remote_push_v120: remote refspecs: refspecs opts: opts ].
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1 8))
		ifTrue: [ ^ self remote_push_v140: remote refspecs: refspecs opts: opts ].	
	
	^ self remote_push_v180: remote refspecs: refspecs opts: opts