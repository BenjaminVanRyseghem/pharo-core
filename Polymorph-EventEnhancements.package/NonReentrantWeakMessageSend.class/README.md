NonReentrantWeakMessageSend does what it says, while the message is being executed, additional evaluations will be discarded.
It's used by when:sendOnce:to: protocol from Polymorph events, but unused in the base image.
when:send:to:exclusive: is used one place though.

It's useful when objects are mutually registered to each other's events, but the actions may lead to the others action being triggered.
Examples are 
- two lists whose contents update based on the selection in the other
- The DiffMorph (Uses ExclusiveWeakMessageSend)

ExclusiveWeakMessageSend are used when the decision whether to process an event is shared between multiple objects.
IE 2 objects respond to different events, but if received simultaneously, only the first of them should have it's action executed.

With Announcement, the corresponding functionality to non-reentrancy would be achieved using:
VW - AnnouncementCollection>>suspendWhile:  anActionBlock
Pharo - Announcer >> suspend: aSubscriber while: anActionBlock (As we neither have a specific AnnouncementCollection class, nor access to Registry itself. Not implemented yet though :P)

The shared state required to achieve Exclusivity would probably have to recide outside of the framework.