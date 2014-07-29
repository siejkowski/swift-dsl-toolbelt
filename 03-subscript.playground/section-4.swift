class Classy {
	subscript(inbetweenBrackets: Any) -> Any {
    get {
        return inbetweenBrackets
    }
    set {
    	println("\(newValue)")    
    }
    }
}