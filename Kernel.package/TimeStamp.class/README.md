I am TimeStamp.
I am a DateAndTime.

I differ from my superclass in just the following aspects:
 - I have a different #printOn: (see #printSeparateDateAndTimeOn:)
 - I have a different #readFrom: (see #readSeparateDateAndTimeFrom:)
 - when instanciated, I am rounded to the nearest second 

I only exist to support method timestamps, but my superclass would be just as suited. 

TimeStamp is on its way of being removed from the system as it does not differ enough from its superclass to earn its right to exist.