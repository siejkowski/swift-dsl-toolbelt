class PatternMatchable {
	let id : Int
	init(_ id: Int) { self.id = id }
}

operator infix ~= {}
func ~=(a: PatternMatchable, b: PatternMatchable) -> Bool {
    return a.id == b.id
}
func ~=(a: String, b: PatternMatchable) -> Bool {
    return a.toInt() == b.id
}

let matchMe = PatternMatchable(0)

switch matchMe {
	case PatternMatchable(1):
        "bingo!"
    case "2":
    	"another bingo!"
    default:
        "missed"
}