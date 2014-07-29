
class Classy {
    let id: Int
    init(_ id: Int) {
        self.id = id
    }
}

operator infix ~= {}

func ~=(a: Classy, b: Classy) -> Bool {
    return a.id == b.id
}

func ~=(pattern: String, value: Classy) -> Bool {
    return true
}



let classy = Classy(4)

switch classy {
    case Classy(2):
        println("4!")
    case let x where "bla" ~= x:
        println("string 4!")
    default:
        println("default")
}


