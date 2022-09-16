decoding
byteArrayFromBuffer: aBuffer

	"Read the bytes  from the buffer inside a byte array until we see a NULL character"
	^ ByteArray streamContents: [ :aStream | 
		  | index readByte |
		  index := 1.
		  [ (readByte := aBuffer unsignedByteAt: index) = 0 ] whileFalse: [ 
			  aStream nextPut: readByte.
			  index := index + 1 ] ]