I am a class holding any object inside its unique instance variable. 
Each time the instance variable value changes, an announcement is emitted. 

The instance variable is accessed through `value` and `value:` while the registration is done by `whenChangedDo: aBlock`. 

In addition, infinite loops of propagation are prevented. 
Use case: you have two lists A, and B, and you want to keep their selection synchronised. 
So when A selection changes, you set B selection. 
But since B selection changes, you set A selection, and so on… 

This case is prevented by the use of a `lock` variable.

/ ! \ IMPORTANT / ! \
NewValueHolder will soon be replaced by ReactiveVariable
=============================================
Within Spec itself, NewValueHolder has been renamed to ReactiveVariable (during the beta phase of Pharo 3).
Since Pharo 3 was already in beta, NewValueHolder has been kept untouched.
For new code (and all code in future versions of Pharo), use the following two hook methods:
	asReactiveVariable - use wherever you would have used asValueHolder, which will soon be deprecated. For now, it returns a NewValueHolder. In the future it will return a (polymorphic) ReactiveVariable
	selectionReactiveVariable - as above, returns a SelectionValueHolder for now. This extension method allows the two different packages to coexist without having direct references from the Spec model.