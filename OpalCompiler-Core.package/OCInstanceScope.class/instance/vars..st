initializing
vars: names

	vars := Dictionary new.
	names withIndexDo: [:name :index |
		vars at: name put:
			(OCInstanceVariable new
				name: name;
				index: index;
				scope: self;
				yourself)].
