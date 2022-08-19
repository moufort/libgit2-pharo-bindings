accessing - platform
unix32LibraryName

	^ FFIUnix32LibraryFinder findAnyLibrary: #(
		'libgit2.so.1.4.4' 
		"This name is wrong, but some versions of the VM has this library shipped with the bad name"
		'libgit2.1.0.0.so' 
		'libgit2.so.1.0.0' 
		'libgit2.so.1.0' 
		'libgit2.so.0.25.1')