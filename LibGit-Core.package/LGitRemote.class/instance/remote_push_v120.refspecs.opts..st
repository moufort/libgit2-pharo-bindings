libgit - calls
remote_push_v120: remote refspecs: refspecs opts: opts

	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_remote_push #(self , LGitStringArray *refspecs , LGitPushOptionsV120 *opts))
		options: #(optCoerceNilToNull)