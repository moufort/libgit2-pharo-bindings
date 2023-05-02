accessing - platform
macLibraryName

	^ FFIMacLibraryFinder findAnyLibrary: #(
		'libgit2.1.6.4.dylib' 
		'libgit2.dylib')