instance creation
on: model actionSelector: actionSelector status: status enabledIcon: enabledIcon disabledIcon: disabledIcon 

	^ self new
			model: model;
			actionSelector: actionSelector;
			color: Color transparent;
			borderWidth: 0;
			statusSelector: status;
			enabledIcon: enabledIcon;
			disabledIcon: disabledIcon;
			yourself