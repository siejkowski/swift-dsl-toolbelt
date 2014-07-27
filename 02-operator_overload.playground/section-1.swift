operator infix ~~ {}

func ~~<T>(a: T, b: T) -> String {
    return "\(a) ~~ \(b)"
}

1 ~~ 2
2 ~~ 1
"bla" ~~ "ble"
