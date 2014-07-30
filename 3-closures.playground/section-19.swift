func doSth<T>(function: (T, T) -> T, first: T, second: T) -> T {
	return function(first, second)
}

doSth(-, 10, 5)