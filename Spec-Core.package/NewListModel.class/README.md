| m |

m := NewListModel new.


m items: (10 to: 50) asOrderedCollection.
m headerTitle: 'Fubu'.
m setSelectedIndex: 5.

m openWithSpec.