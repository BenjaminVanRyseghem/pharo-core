*Manifest-Core
longDescription

	^ 'This smell arises when an instance variable is not both read and written. If an instance variable is only read, the reads can be replaced by nil, since it could not have been assigned a value. If the variable is only written, then it does not need to store the result since it is never used. This check does not work for the data model classes since they use the #instVarAt:put: messages to set instance variables.'