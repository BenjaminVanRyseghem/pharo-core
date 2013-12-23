A ListComposableModel is an applicative model which handle a basic list.

| t |
t:= ListComposableModel new.
t openWithSpec.
t items: (Smalltalk allClasses).


self example

| t |
t:= ListComposableModel new.
t openWithSpec.
t sortingBlock: [:a :b| a name > b name].
t items: (Smalltalk allClasses).


| t |
t:= ListComposableModel new.
t openWithSpec.
t filteringBlock: [:col | col select: [:each | each name beginsWith: 'Zn']].
t sortingBlock: [:a :b| a name > b name].
t items: (Smalltalk allClasses).
