private
newCredentialsCallbackFor: provider
	
	"Callback defined in https://github.com/libgit2/libgit2/blob/936b184e7494158c20e522981f4a324cac6ffa47/include/git2/credential.h#L131
	
	Fill the credentials and return
		0 for success
		<0 for error
		>0 for no credentials
	"

	^ LGitCredAcquireCallback
		on: [ :output :url :username_from_url :allowed_types :data | | return |
			return := -1.
			[return := self
				putCredentialsType: allowed_types
				username: username_from_url
				provider: provider
				onto: output] on: Error fork: [ :error |
					"In case of exception, return -1 and continue executing.
					Try opening a debugger on pharo to debug the problem."
					error pass ].
			return ]