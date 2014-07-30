// by Rob Rix
extension Array {
    subscript (i: ()) -> Swift.Array.Element {
        get { return self[self.count - 1] }
        set { self.append(newValue) }
    }
}
var array: [String] = []
array[] = "newValue"
array[]