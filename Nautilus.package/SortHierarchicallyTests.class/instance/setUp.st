setup
setUp

	completeTree := self asNodes: {String . ByteString . Symbol . ByteSymbol . WideSymbol . WideString} .
	partialTree := self asNodes: {String . ByteString . ByteSymbol . WideString}.
	unrelatedClasses := self asNodes: {ArrayedCollection . BlockClosure . Class  . Morph . Point}.
	archivesClasses :=  self asNodes: {Archive . TarArchive . ZipArchive . ArchiveMember . TarArchiveMember . ZipArchiveMember . ZipFileMember . ZipDirectoryMember . ZipNewFileMember . ZipStringMember . ZipFileConstants}