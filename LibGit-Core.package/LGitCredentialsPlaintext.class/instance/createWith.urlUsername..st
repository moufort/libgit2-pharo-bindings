operations
createWith: aStructure urlUsername: urlUsername

	<todo: 'use exceptions instead of assertions'>
	"I ignore the username that come from the url, as we are using plaintext credentials"

	self assert: self username isEmptyOrNil not.
	self assert: self passphrase isEmptyOrNil not.

	self withReturnHandlerDo: [
		self
			cred_userpass_plaintext_new: aStructure
			username: self username
			password: self passphrase ]