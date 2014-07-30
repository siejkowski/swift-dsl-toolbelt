@infix func + (argument: (Int -> Int) -> Int, closure: Int -> Int) -> Int {
 	return argument(closure)
}

let operatorChainedResult = 
		closureReturningClosure { 10 * $0 } + { 20 * $0 }

operatorChainedResult