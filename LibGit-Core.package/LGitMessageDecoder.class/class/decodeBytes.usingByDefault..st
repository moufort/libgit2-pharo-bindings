decoding
decodeBytes: bytes usingByDefault: encoding

	"Try decoding first with the encoding libgit has detected.
	Otherwise, try to dynamically detect the encoding."
	^ [ (ZnCharacterEncoder newForEncoding: encoding) decodeBytes: bytes ]
		  on: ZnCharacterEncodingError
		  do: [ 
		  (ZnCharacterEncoder detectEncoding: bytes) decodeBytes: bytes ]