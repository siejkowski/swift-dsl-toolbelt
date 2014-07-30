func trailing<T>(argument: T, closure: T -> T) -> T {
	return closure(argument)
}
trailing("impossible") {
	return "\($0) is nothing"	
}