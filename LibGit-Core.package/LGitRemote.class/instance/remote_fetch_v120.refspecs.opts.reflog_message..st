libgit - calls
remote_fetch_v120: remote refspecs: refspecs opts: opts reflog_message: reflog_message
	
	^ self
		ffiCallSafely:
			#(LGitReturnCodeEnum git_remote_fetch #(self , LGitStringArray * refspecs , LGitFetchOptionsV120 * opts , String reflog_message))
		options: #(optCoerceNilToNull)