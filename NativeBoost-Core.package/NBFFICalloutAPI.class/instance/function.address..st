action
function: functionSignature address: fnAddressBlock

	^ NBFFICallout handleFailureIn: context nativeCode: [:gen |
			gen
				callType: conv;
				sender: context;
				parseOptions: options;
				anonSpec: functionSignature;
				generateCallToAddress: fnAddressBlock  
		]
