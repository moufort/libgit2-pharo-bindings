accessing - platform
win32LibraryName

	^ FFIWindowsLibraryFinder findAnyLibrary: #(
		'libgit2-1-6-4.dll' 
		'libgit2-1-5-1.dll' 
		'libgit2-1-4-4.dll' 
		'libgit2-1-0-0.dll' 
		'libgit2.dll')