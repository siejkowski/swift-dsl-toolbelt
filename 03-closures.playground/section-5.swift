let executeClosureWithZero: (Int -> Int) -> Int = { 
	return $0(0) 
}
executeClosureWithZero { return 30 &/ $0 }