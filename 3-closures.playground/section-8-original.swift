let closureReturningClosure: (Int -> Int) ->
     ((Int -> Int) -> Int) = {
 	let result = $0(1)
 	return { closure in
 		return closure(result)
 	}
}

let notChainedResult = (closureReturningClosure { 10 * $0 }) { 20 * $0 }

notChainedResult