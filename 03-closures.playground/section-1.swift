func executor<T>(argument: T, #closure: T -> T) -> T {
	return closure(argument)
}
let executed = executor("looks like i'm gonna be returned", { return $0 })

executed