A Job is a task to run and potentially notified to the user.  

 [:job | job title: 'Let us get started'.
	1to: 10 do: 
		[:each | 
			JobProgress progress: (0.1 * each); title: 'Youpi ', each printString .
			(Delay forMilliseconds: 100) wait. 
			] ]  asJob run