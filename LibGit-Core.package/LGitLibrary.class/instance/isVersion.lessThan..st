private
isVersion: version lessThan: versionArray
	"checks if the library version is smaller than a version.
	a version array is an array  with the form #(MAJOR) or #(MAJOR MINOR)"

	versionArray withIndexDo: [ :each :index |
		(version at: index) < each
			ifTrue: [ ^ true ] ].
		
	^ false
	