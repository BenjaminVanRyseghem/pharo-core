convenience
movsx: src to: dest
	"Ensure right src/dest order"
	^ self movsx: dest with: src