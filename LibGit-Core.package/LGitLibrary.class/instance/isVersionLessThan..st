testing
isVersionLessThan: versionArray
	"checks if the library version is smaller than a version.
	a version array is an array  with the form #(MAJOR) or #(MAJOR MINOR)"
	
	^  self 
		isVersion: self version 
		lessThan: versionArray