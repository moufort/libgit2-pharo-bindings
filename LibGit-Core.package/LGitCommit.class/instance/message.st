accessing
message

	| encoding externaAddress |
	"Read the bytes from the buffer then decode it"

	externaAddress := self commit_message: self.

	"Try decoding first with the encoding libgit has detected.
	Otherwise, try to dynamically detect the encoding."
	encoding := self commit_message_encoding: self.
	^ LGitMessageDecoder
		decodeBytes:
		(LGitMessageDecoder byteArrayFromBuffer: externaAddress)
		usingByDefault: (encoding ifNil: [ 'utf8' ])