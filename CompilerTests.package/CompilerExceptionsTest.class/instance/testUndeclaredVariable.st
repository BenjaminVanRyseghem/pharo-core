tests
testUndeclaredVariable

	self
		compiling: 'griffle ^ goo' shouldRaise: UndeclaredVariable;
		compiling: 'griffle ^ [ goo ] value' shouldRaise: UndeclaredVariable