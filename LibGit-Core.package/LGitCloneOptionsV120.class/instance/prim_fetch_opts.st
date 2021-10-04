libgit-fields
prim_fetch_opts
	"This method was automatically generated"
	^ LGitFetchOptionsV120 fromHandle: (handle referenceStructAt: OFFSET_PRIM_FETCH_OPTS length: LGitFetchOptionsV120 byteSize)