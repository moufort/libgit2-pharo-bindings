libgit - calls
clone_init_options: opts version: version 
	^ self
		ffiCall: #(LGitReturnCodeEnum git_clone_init_options(LGitCloneOptionsV140 *opts, LGitOptionsVersionsEnum version))
		options: #(  )