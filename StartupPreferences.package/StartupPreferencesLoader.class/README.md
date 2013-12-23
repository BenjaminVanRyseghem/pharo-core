StartupLoader searches for and executes .st files from certain locations such as Library/Preferences/pharo on Mac OS X.  

StartupLoader looks within such locations for a 'pharo' folder. This contains the startup scripts common to all versions of Pharo, and also optionally a folder per Pharo version holding startup scripts suitable for that version only.  So a typical directory layout might be...

.../some/folders/pharo/Content/Resources/pharo.image.
.../some/folders/pharo/Content/Resources/startup.st
.../some/folders/.config/pharo/author.st
.../some/folders/.config/pharo/useSharedCache.st
.../some/folders/.config/pharo/1.4/mystartupFor14only.st
.../some/folders/.config/pharo/2.0/mystartupFor20only.st

(**Note however that '.config' is an invalid filename on Windows, so '..config' is used instead)

To know the real values for you...
Print the result of "StartupLoader preferencesGeneralFolder" which holds the startup scripts common to all versions of Pharo.
Print the result of "StartupLoader preferencesVersionFolder" which holds the startup scripts specific to the version of the current image.

-----------


StartupLoader example

will define a script sample startup.st in your unix root on unix 

Its contents is 

StartupLoader default executeAtomicItems: {
	StartupAtomicItem name: 'Open Help' code: 'Workspace openContents: ''Here is just an example of how to use the StartupLoader.
I should only be displayed once.
	
You can also see StartupLoader class>>#example'' label: ''Help''' isSingleton: true.
	StartupAtomicItem name: 'Open Workspace' code: 'Workspace openContents: ''I should be displayed each time'''.
}

For a more complete example, see StartupLoader class>>#example2