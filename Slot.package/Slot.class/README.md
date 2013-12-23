I'm a meta-object for accessing a field in an Object.
By default each Slot corresponds to an instance variable and vice versa. Hence there is a Slot for each instance variable.

I define a protocol to read (#read:) and to write (#write:to:) values to a field inside an Object.

For customizing a subclass can override the meta-obejct-protocol methods. See subclasses for examples.

Vocabulary:
- variable: named accessor for a Slot
- Slot: class-side meta-object, mapping of names to values using a MOP to fields
- field: space occupied in an object, used to hold values accessed via Slots