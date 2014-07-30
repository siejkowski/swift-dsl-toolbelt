
class Subscriptable {
    var value: String = "subscripted"
    subscript(index: String) -> String {
        get {
            return "\(index) value"
        }
        set {
            self.value = newValue
        }
    }
}
let example = Subscriptable()
example["some string"]
example[""] = "overscripted"
example["some string"]
