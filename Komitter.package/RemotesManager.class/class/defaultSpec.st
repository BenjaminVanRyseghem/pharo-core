specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :col | 
			col
				newRow: [ :r | 
					r
						newColumn: [ :c |  ];
						add: #editRemoteWidget width: self buttonHeight + 4;
						add: #removeRemoteWidget width: self buttonHeight + 4;
						add: #addRemoteWidget width: self buttonHeight ]
					height: self buttonHeight;
					add: #remotes ];
		yourself