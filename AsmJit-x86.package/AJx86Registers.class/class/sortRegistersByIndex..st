initialization
sortRegistersByIndex: aRegisterCollection
	^ aRegisterCollection sort: [ :regA :regB| regA index < regB index ].