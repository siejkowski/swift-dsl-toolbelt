class With<T> { 
 	let argument: T
 	init(_ argument: T) { self.argument = argument }
 	func with(closure: T -> T) -> T {
		return closure(argument)
	}
}

let withChainedClosure: (Int -> Int) -> With<Int> = {
 	return With($0(1))
}

let withChainedResult = 
	withChainedClosure{ 10 * $0 }.with{ 20 * $0 }

withChainedResult
