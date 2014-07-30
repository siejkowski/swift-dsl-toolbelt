operator infix ^^ {}
func ^^ (left: String, right: String) -> String {
    return "(: \(left) ^.^ \(right) :)"
}
"hey" ^^ "ho"