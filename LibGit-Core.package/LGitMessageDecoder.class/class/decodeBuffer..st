decoding
decodeBuffer: anExternalAddress

	"Extract the buffer from the external address, then decode it"
	| bytes |
	bytes := self byteArrayFromBuffer: anExternalAddress getHandle.
	^ self decodeBytes: bytes