operations
initializeLibGit2
	
	self isAvailable ifFalse: [ ^ self ].
	
	[ 
		self libgit2_init.
		self recordInitializationSuccess ]
	on: Error
	do: [ :e | 
		self recordInitializationFailure.
		e pass ]