tests
testIsVersionLessThan
	| lib |
	
	lib := LGitLibrary uniqueInstance .
	
	self assert: (lib isVersion: #(0 25 1) lessThan: #(1)).
	self assert: (lib isVersion: #(0 25 1) lessThan: #(1 0 0)).
	self assert: (lib isVersion: #(0 25 1) lessThan: #(0 28)).
	
	self assert: (lib isVersion: #(1 0 0) lessThan: #(1 2)).
	self assert: (lib isVersion: #(1 1 0) lessThan: #(1 2)).
	self assert: (lib isVersion: #(1 1 99) lessThan: #(1 2)).