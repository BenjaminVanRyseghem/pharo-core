i am used to detect recursion during code generation..

use me like following:

NBRecursionDetect in: someMethod during: [
	... some block ..
	].

if recursion is detected, while evaluating the block, then NBCodeGenRecursion error will be signaled.

A recursion usually happens when generating code for some method requires generating code for very same method, and so it enters infinite loop