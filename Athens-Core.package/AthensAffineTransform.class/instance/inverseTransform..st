vector-transform
inverseTransform: aPoint 
	| px py y0 x0 |
	
	px := aPoint x.
	py := aPoint y.

"  (we assume matrix is never degenerate)
	Given straight transformation formulae:
		
	px := x0*sx + y0*shx + x.
	py := x0*shy + y0*sy + y.
	
	we doing inverse one, trying to find x0,y0 for rest of given variables (px,py,x,y,sx,sy,shx,shy).
	
	x0 := px - x - (shx*y0) / sx.
	y0 := py - y - (shy*x0) / sy.
	
	y0 := py - y - (shy*(px - x - (shx*y0) / sx)) / sy.

	sy * y0  == py - y - (shy*(px - x - (shx*y0) / sx)).

	sx * sy * y0  == (sx*(py - y)) - (shy*(px - x - (shx*y0))).

	sx * sy * y0  == sx*py - (sx*y) - (shy*px) + (shy*x) + (shy*shx*y0).

	(sx * sy * y0) - (shy*shx*y0)  == sx*py - (sx*y) - (shy*px) + (shy*x) .
	
	y0* ((sx * sy) - (shy*shx))  == sx*py - (sx*y) - (shy*px) + (shy*x) .

"
	y0  := sx*py - (sx*y) - (shy*px) + (shy*x) / ((sx * sy) - (shy*shx)).
	x0 := px - x - (shx*y0) / sx.

	^ x0@y0
	