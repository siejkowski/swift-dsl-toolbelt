## Operator overload

* only limited number of characters is supporteds

```swift
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

let classy = Classy(4)

switch classy {
    case Classy(4):
        println("4!")
    default:
        println("default")
}
```