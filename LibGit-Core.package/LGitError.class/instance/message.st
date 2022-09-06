accessing
message

	self isNull ifTrue: [ ^ 'no error message set by libgit2' ].
	^ LGitMessageDecoder decodeBuffer: self prim_message