*gofer-core-accessing
mcRepositoryAsUser: usernameString withPassword: passwordString
	self isHttp | self isHttps
		ifTrue: [ ^ MCHttpRepository location: self asString user: usernameString password: passwordString ].
	self isFile
		ifTrue: [ ^ MCDirectoryRepository new directory: self asFileReference ].
	self scheme = #filetree
		ifTrue: [ ^ MCFileTreeRepository new directory: self asFileReferenceWithRelativePath ].
	self scheme = #ftp
		ifTrue: [ ^ MCFtpRepository
			host: (self hasPort ifTrue: [ self host, ':', self port asString ] ifFalse: [ self host ])
			directory: self path "MCFtpRepository assumes NO prefixed / in the path"
			user: usernameString
			password: passwordString. ].
	self error: ('No Monticello repository for URL scheme {1}' format: {(self scheme)})