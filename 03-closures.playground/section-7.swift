let ignoringNotTrailingClosure: ((Int -> Int)...) -> Int = {
	return $0[$0.count - 1](1)
}

let result = ignoringNotTrailingClosure(
    	{ 10 * $0 },
    	{ 20 * $0 }
    )
    { return 30 * $0 }

result