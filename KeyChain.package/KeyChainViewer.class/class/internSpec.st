specs
internSpec
	<spec>
	
	^{#ContainerModel.
			#add:. {{#model. #list }. #layout:.  #(FrameLayout
													bottomOffset: -50)}.
			 #add:. {{#model. #add }. #layout:.  #(FrameLayout
													topFraction: 1
													rightFraction: 0
													topOffset: -50
													rightOffset: 50
													bottomOffset: -25) }.
			#add:. {{#model. #edit }. #layout:. #(FrameLayout
													topFraction: 1
													leftOffset: 50
													topOffset: -50
													rightOffset: -50
													bottomOffset: -25) }.
			#add:. {{#model. #remove }. #layout:.  #(FrameLayout
													leftFraction: 1
													topFraction: 1
													leftOffset: -50
													topOffset: -50
													bottomOffset: -25) }.
			#add:. {{#model. #ok }. #layout: . #(FrameLayout
													topFraction: 1
													topOffset: -25) }}