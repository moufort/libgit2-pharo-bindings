libgit - calls
remote_push_v180: remote refspecs: refspecs opts: opts

	^ self ffiCallSafely: #(LGitReturnCodeEnum git_remote_push #(
			self, 
			LGitStringArray *refspecs, 
			LGitPushOptionsV180 *opts))
		options: #(optCoerceNilToNull)