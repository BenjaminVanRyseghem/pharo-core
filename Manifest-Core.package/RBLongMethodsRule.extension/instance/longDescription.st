*Manifest-Core
longDescription

	^ 'This smell arises when a long method is found (with 10 or more statements). Note that, it counts statements, not lines. Long methods should often be split into several smaller ones. When you start to have empty line to separate groups of methods, this is an indication that you should probably define a new method. 
	Do not forget that methods are unit of extensions in an object-oriented language. It means that each time you define a method a subclass may override and extend it while taking advantage and reusing the calling context of your method. This is the basis for Hook and Template Design Pattern and central to good object-oriented design. So keep your methods short. 
	Use the extract method refactoring, it even checks whether the method you are extracting already exists in the class. 
	
	The defined number of statements can be edited in RBLongMethodsRule>>longMethodSize.'