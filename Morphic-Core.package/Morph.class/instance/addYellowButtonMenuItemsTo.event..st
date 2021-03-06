menu
addYellowButtonMenuItemsTo: aMenu event: evt 
	"Populate aMenu with appropriate menu items for a  
	yellow-button (context menu) click."
	aMenu defaultTarget: self.
	self defaultYellowButtonMenuEnabled ifFalse: [^ self].
	aMenu addStayUpItem.
	self addModelYellowButtonItemsTo: aMenu event: evt.
	self cmdGesturesEnabled ifTrue: [
			aMenu addLine.
			aMenu add: 'inspect' translated action: #inspect].
	aMenu addLine.
	self isWorldMorph ifFalse: [aMenu add: 'delete' translated action: #delete].
	self world selectedObject == self
		ifTrue: [aMenu add: 'halo off' translated action: #removeHalo]
		ifFalse: [aMenu add: 'halo on' translated action: #addHalo].
	(self isWorldMorph
			or: [self wantsToBeTopmost])
		ifFalse: [
			aMenu addLine.
			aMenu add: 'send to back' translated action: #goBehind.
			aMenu add: 'bring to front' translated action: #comeToFront.
			self addEmbeddingMenuItemsTo: aMenu hand: evt hand].
	self isWorldMorph ifFalse: [
			self isFullOnScreen ifFalse: [aMenu add: 'move onscreen' translated action: #goHome]].
			self addLayoutMenuItems: aMenu hand: evt hand.
			(owner notNil
					and: [owner isTextMorph])
				ifTrue: [self addTextAnchorMenuItems: aMenu hand: evt hand].
	self isWorldMorph ifFalse: [
			aMenu addLine.
			self addToggleItemsToHaloMenu: aMenu].
	aMenu addLine.
	self isWorldMorph
		ifFalse: [aMenu add: 'copy to paste buffer' translated action: #copyToPasteBuffer:].
	(self allStringsAfter: nil) isEmpty ifFalse: [aMenu add: 'copy text' translated action: #clipText].
	self addExportMenuItems: aMenu hand: evt hand.
	aMenu addLine.
	aMenu add: 'adhere to edge...' translated action: #adhereToEdge.
	self addCustomMenuItems: aMenu hand: evt hand