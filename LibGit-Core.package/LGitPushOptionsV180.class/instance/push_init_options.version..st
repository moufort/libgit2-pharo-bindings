libgit - calls
push_init_options: options version: version
	self
		ffiCall: #(LGitReturnCodeEnum git_push_init_options(LGitPushOptionsV180 *options, LGitOptionsVersionsEnum version))
		options: #()