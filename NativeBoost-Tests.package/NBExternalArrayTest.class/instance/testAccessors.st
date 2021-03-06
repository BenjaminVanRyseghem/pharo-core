tests - class protocols
testAccessors

	"make sure a generated class has accessors installed "
	| cls m_at m_atput |
	
	cls := self apiClass ofType: 'int32' .
	
	self assert: (cls methodDict includesKey: #at: ).
	self assert: (cls methodDict includesKey: #at:put: ).
	
	m_at := cls compiledMethodAt: #at: .
	m_atput  := cls compiledMethodAt: #at:put: .

	"make sure they are properly installed"	
	self assert: m_at methodClass == cls.
	self assert: m_atput methodClass == cls.

	"make sure they are not same as in superclass "
	
	self assert: m_at ~~ (self apiClass compiledMethodAt: #at: ).
	self assert: m_atput ~~ (self apiClass compiledMethodAt: #at:put: ).
