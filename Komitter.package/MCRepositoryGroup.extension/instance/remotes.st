*Komitter-Models
remotes

	^ self repositories select: [ :each | each isCache not ]