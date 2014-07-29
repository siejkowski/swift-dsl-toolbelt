
class Classy {}

operator infix ~= {}

func ~=(a: Classy, b: Classy) -> Bool {
    return "\(a) ~~ \(b)"
}


