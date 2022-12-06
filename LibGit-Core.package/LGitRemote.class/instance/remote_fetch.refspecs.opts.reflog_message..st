libgit - calls
remote_fetch: remote refspecs: refspecs opts: opts reflog_message: message
	
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1)) ifTrue: [
		^ self remote_fetch_v0251: remote refspecs: refspecs opts: opts reflog_message: message. ].
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1 2)) ifTrue: [ 
		^ self remote_fetch_v100: remote refspecs: refspecs opts: opts reflog_message: message ].
	(self ffiLibrary uniqueInstance isVersionLessThan: #(1 4)) ifTrue: [ 
		^ self remote_fetch_v120: remote refspecs: refspecs opts: opts reflog_message: message ].
	
	^ self remote_fetch_v140: remote refspecs: refspecs opts: opts reflog_message: message