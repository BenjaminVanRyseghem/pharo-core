I'm the UI representation of Nautilus with Package tree. 
I redefine the category column to add a tree who can manage groups, packages and tags.

I try to redefine just the basic, and for that reason there are some concepts that changed for bad (they are now less understandable). 
#selectedPackage now answers not a package but a "selection", and instance of a child of PackageTreeSelection who can be: 
- a package, like before 
- a package tag 
- a group

