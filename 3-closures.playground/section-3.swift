func transformator<T>(argument: T, inout closure: T -> T) -> () {
	closure = { $0; return argument }
}
var tmp: String -> String = { return $0 }
//transformator("not possible", &tmp)