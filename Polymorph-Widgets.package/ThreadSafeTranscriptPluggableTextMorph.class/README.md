A ThreadSafeTranscriptPluggableTextMorph implements just enough thread-safe-ness required to updating its PluggableTextMorph while that is in its #drawSubmorphsOn: 
routine.

This is a temporary minimal impact solution to https://pharo.fogbugz.com/f/cases/13032 during Pharo 3 beta.  Consider pushing this upstream.