*Shout-Styling
shoutAboutToStyle: aPluggableShoutMorphOrView
	| cls |
	self selectedNode ifNil: [^false].
	cls  := self selectedNode isInspectable ifTrue: [self selectedNode getClass].
	aPluggableShoutMorphOrView classOrMetaClass: cls.
	^ wrapper shouldShout