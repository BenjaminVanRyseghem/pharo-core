private
konamiCode

	^ code ifNil: [
			code := ''.
			{ Character arrowUp. Character arrowUp. Character arrowDown. Character arrowDown. Character arrowLeft. Character arrowRight. Character arrowLeft. Character arrowRight. $b. $a } do: [:char | 
				code := code, char asLowercase asString ].
		code] 