*Slot
asSlotCollection
	"Parse as slots.
	Example: 
	  'a b' asSlotCollection --> {a => Slot. b => Slot}
	"
	^ (self subStrings: ' ') collect: [ :x | x asSlot ]