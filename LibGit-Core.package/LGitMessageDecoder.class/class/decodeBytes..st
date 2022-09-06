as yet unclassified
decodeBytes: bytes

	"Try decoding first with utf8. Otherwise, try to dynamically detect the encoding."
	^ self decodeBytes: bytes usingByDefault: 'utf8'