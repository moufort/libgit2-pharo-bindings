accessing
message

	| encoding externaAddress bytes |
	"Read the bytes  from the buffer inside a byte array until we see a NULL character"
	externaAddress := self commit_message: self.
	bytes := ByteArray streamContents: [ :aStream | 
		         | index readByte |
		         index := 1.
		         [ (readByte := externaAddress unsignedByteAt: index) = 0 ] 
			         whileFalse: [ 
				         aStream nextPut: readByte.
				         index := index + 1 ] ].

	"Try decoding first with the encoding libgit has detected.
	Otherwise, try to dynamically detect the encoding."
	encoding := self commit_message_encoding: self.
	^ [ (ZnCharacterEncoder newForEncoding: encoding) decodeBytes: bytes ]
		on: ZnCharacterEncodingError
		do: [ (ZnCharacterEncoder detectEncoding: bytes) decodeBytes: bytes ]