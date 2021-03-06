initialization
initializeConditionCodes

	"Condition codes."

	"No condition code."
	CcNOCONDITION  := -1.

	"Condition codes from processor manuals."
	CcA             := 16r7.
	CcAE            := 16r3.
	CcB             := 16r2.
	CcBE            := 16r6.
	CcC             := 16r2.
	CcE             := 16r4.
	CcG             := 16rF.
	CcGE            := 16rD.
	CcL             := 16rC.
	CcLE            := 16rE.
	CcNA            := 16r6.
	CcNAE           := 16r2.
	CcNB            := 16r3.
	CcNBE           := 16r7.
	CcNC            := 16r3.
	CcNE            := 16r5.
	CcNG            := 16rE.
	CcNGE           := 16rC.
	CcNL            := 16rD.
	CcNLE           := 16rF.
	CcNO            := 16r1.
	CcNP            := 16rB.
	CcNS            := 16r9.
	CcNZ            := 16r5.
	CcO             := 16r0.
	CcP             := 16rA.
	CcPE            := 16rA.
	CcPO            := 16rB.
	CcS             := 16r8.
	CcZ             := 16r4.

	" Simplified condition codes"
	CcOVERFLOW      := 16r0.
	CcNOOVERFLOW   := 16r1.
	CcBELOW         := 16r2.
	CcABOVEEQUAL   := 16r3.
	CcEQUAL         := 16r4.
	CcNOTEQUAL     := 16r5.
	CcBELOWEQUAL   := 16r6.
	CcABOVE         := 16r7.
	CcSIGN          := 16r8.
	CcNOTSIGN      := 16r9.
	CcPARITYEVEN   := 16rA.
	CcPARITYODD    := 16rB.
	CcLESS          := 16rC.
	CcGREATEREQUAL := 16rD.
	CcLESSEQUAL    := 16rE.
	CcGREATER       := 16rF.

	"aliases"
	CcZERO          := 16r4.
	CcNOTZERO      := 16r5.
	CcNEGATIVE      := 16r8.
	CcPOSITIVE      := 16r9.

	"x87 floating point only"
	CcFPUNORDERED  := 16.
	CcFPNOTUNORDERED := 17.


