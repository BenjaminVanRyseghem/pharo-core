pharo - updates
update30846
	"self new update30846"
	self withUpdateLog: '13236 Fix 1 extra height for Cairo surface
	https://pharo.fogbugz.com/f/cases/13236'.
	self loadTogether: self script108 merge: false.
	(World submorphs 
	detect: [ :each | 
		(each isKindOf: SystemWindow) and: [ each label =  'Welcome to Pharo 3.0!' ] ])
	delete.
	
[ | workspace window |
	
	workspace := Workspace openContents: '"
Pharo 3.0
=======

Welcome to Pharo, an immersive live programming environment.

You can learn pharo by highlighting the next line and selecting [Do it] from the context menu:"

PharoTutorial go.

"Pharo 3.0 comes with a whole set of packages you can use to explore the system and develop your own applications. But maybe you need other stuff or feel more comfortable using a tool you already know. To easily load projects, you can open the Configurations Browser by executing:"

MetacelloConfigurationBrowser open.

"You can also open the World menu (just click the desktop) and go to Tools, then Configuration Browser.

You can find information about Pharo on http://www.pharo.org. In particular, you may be interested in:

- Joining us and getting help http://www.pharo.org/get-help
- Getting the Pharo By Example book (available as a free PDF): http://www.pharobyexample.org
- Browser the documentation http://www.pharo.org/documentation
- Reporting problems http://www.pharo.org/get-involved

About this release
---------------------------
There are more than 2300 issues treated in this release. 

Sumarized issues for 3.0:
=========================

UI
--

- New theme and iconset.

Infrastructure
--------------

- Zeroconf scripts updated
- Ubuntu ppa
- Better [ackaging for standard download
- Enhanced continuous integration infrastructure

Kernel
------

- Opal Compiler replaces old compiler
- Continuation class now part of the core
- Simple delayed execution for blocks
- Announcement usage simplified

More
-----

- New debugger
- New inspectors
- New code importer
- New class builder

And a lot more!
You can check a more detailed explanation here: 
https://github.com/pharo-project/pharo-changelogs/blob/master/Pharo30ChangeLogs.md"'
	label: 'Welcome to Pharo 3.0!'.
	
window := workspace dependents detect: [ :each | 
		(each isKindOf: SystemWindow) and: [ each label = 'Welcome to Pharo 3.0!' ] ].
	
window extent: 700@400.
window center: Display extent / 2  ] value.
	self flushCaches.
