instructions
label: seqId
	lastSpecialReturn := nil.
	currentSeqId := seqId.
	currentSeqNum := currentSeqNum + 1.
	seqOrder at: seqId put: currentSeqNum.
	orderSeq at: currentSeqNum ifAbsentPut: [seqId].
	bytes := seqBytes at: seqId ifAbsentPut: [OrderedCollection new].
	jumps at: seqId ifAbsentPut: [nil].
	instrMap := instrMaps at: seqId ifAbsentPut: [OrderedCollection new].
	stack := stacks at: currentSeqId ifAbsentPut: [IRStackCount new]
	