func doSthYoda<T>(second: T, first: T, function: (T, T) -> T) -> T {
	return function(first, second)
}

doSthYoda(10, 5, -)
//doSthYoda(10, 5) -