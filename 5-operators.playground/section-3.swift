func updateValue<T>(value: T, inout updated: T) -> () {
    updated = value
}
var word = "brzydota"
updateValue("piękno", &word)
word

operator infix --> {}
func --><T>(value: T, inout updated: T) -> () {
    updated = value
}
var anotherWord = "marność"
"możność" --> anotherWord
anotherWord