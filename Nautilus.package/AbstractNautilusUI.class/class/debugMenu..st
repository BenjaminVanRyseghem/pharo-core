menu
debugMenu: aBuilder
	<contextMenu>
	<nautilusGlobalMethodMenu>
	<nautilusGlobalProtocolMenu>
	<nautilusGlobalClassMenu>
	<nautilusGlobalPackageMenu>
	<nautilusGlobalGroupMenu>
	
	| target |
	target := aBuilder model.
	(aBuilder item: #DebugMenu)
			order: 9999;
			label: 'DEBUG'.
			
	(aBuilder item: #'Reset icon cache')
			order: 0;
			action: [ 
				AbstractNautilusUI resetIconCaches.
				AbstractMethodWidget resetMethodIconCache ];
			parent: #DebugMenu.
			
	(aBuilder item: #'Inspect me')
			order: 100;
			action: [ target inspect ];
			parent: #DebugMenu.
			
	(aBuilder item: #'Inspect my model ')
			order: 200;
			action: [ target model inspect];
			parent: #DebugMenu.