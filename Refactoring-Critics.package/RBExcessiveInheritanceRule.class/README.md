See my #rationale.

Several possibilities can occur. Here are some hints:
- check whether some classes in the hierarchy just do not add enough behavior to require a class in itself
- check whether all the classes are the root of a kind of little inheritance hierarchy. 

Note that often a framework may already define a certain level of inheritance, with  other layers added by user code. This rule does not take these frameworks into account. 	
	
The defined inheritance depth can be edited in #inheritanceDepth.