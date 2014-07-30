&nbsp;  

&nbsp;  

&nbsp;  

## Operator overload

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

#### Very limited set of operators is alowed

/­  =­  -­  +­  !­  *­  %­  <­  >­  &­  |­  ^­  ~­
also dots and unicode symbols

&nbsp;  

```swift
operator prefix ♥ {}
operator postfix ☕ {}
@prefix func ♥ <T> (value: T) -> String { return "I love \(value)" }
@postfix func ☕ <T> (value: T) -> String { return "\(value) but I need some coffee!" }

♥"Swift"☕
```
&nbsp;  

&nbsp;  

&nbsp;  

#### Operators don't require '&' syntax when obtaining inout value

&nbsp;  

```swift
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
```
&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

#### Providing ~= operator enables any type to be pattern matchable

&nbsp;  

```swift
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
```
&nbsp;  

&nbsp;  

&nbsp;  
