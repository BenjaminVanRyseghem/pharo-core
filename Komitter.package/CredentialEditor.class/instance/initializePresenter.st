initialize-release
initializePresenter

	showPassword 
		whenActivatedDo: [ password beDecrypted ];
		whenDesactivatedDo: [ password beEncrypted ]