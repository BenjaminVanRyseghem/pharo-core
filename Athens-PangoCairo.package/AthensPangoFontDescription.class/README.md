Creates a new font description from a string representation in the form [FAMILY-LIST] [STYLE-OPTIONS] [SIZE], where FAMILY-LIST is a comma separated list of families optionally terminated by a comma, 

STYLE_OPTIONS is a whitespace separated list of words where each WORD describes one of style, variant, weight, stretch, or gravity,

 and SIZE is a decimal number (size in points) or optionally followed by the unit modifier 'px' for absolute size. Any one of the options may be absent. 

If FAMILY-LIST is absent, then the family_name field of the resulting font description will be initialized to NULL. If STYLE-OPTIONS is missing, then all style options will be set to the default values. If SIZE is missing, the size in the resulting font description will be set to 0.