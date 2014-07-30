## Operator overload

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
## Showcase

&nbsp;  

```swift
// by Leszek Ślażyński, https://github.com/slazyk
 
enum Bound<T: ForwardIndex> {
    case Closed (@auto_closure () -> T)
    case Open   (@auto_closure () -> T)
}

operator prefix  | { }
@prefix func  | <T: ForwardIndex> (x: T) -> Bound<T> {
    return .Open   (x)
}
operator postfix | { }
@postfix func | <T: ForwardIndex> (x: T) -> Bound<T> {
    return .Open   (x)
}
operator prefix  < { }
@prefix func  < <T: ForwardIndex> (x: T) -> Bound<T> {
    return .Closed (x)
}
operator postfix > { }
@postfix func > <T: ForwardIndex> (x: T) -> Bound<T> {
    return .Closed (x)
}

@infix func .. <T: ForwardIndex> (f: Bound<T>, t: Bound<T>) -> Range<T> {
    switch (f, t) {
    	case (.Closed (let x), .Closed (let y)):
            return x()...y()
    	case (.Closed (let x), .Open   (let y)):
            return x()..<y()
    	case (.Open   (let x), .Closed (let y)):
            return x().successor()...y()
    	case (.Open   (let x), .Open   (let y)):
            return x().successor()..<y()
    }
}

<1..5>
<1..5| 
|1..5> 
|1..5|
```
