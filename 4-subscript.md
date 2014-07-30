## Subscripting

#### Subscripts can be overloaded  

&nbsp;  

```swift

class Subscriptable {
    subscript(tuple: (Int, Int)) -> Int {
        return tuple.0
    }
    subscript(tuple: (Int, Int)) -> (Int, Int) {
       return tuple
    }
}

let subscriptable = Subscriptable()

let tuple: (Int, Int) = subscriptable[(1,2)]
let element: Int = subscriptable[(1,2)]
```
&nbsp;  
#### Subscripts can't be generic

&nbsp;  

```swift
class NotGeneric {
    // subscript<T>(inbetweenBrackets: T) -> T {
    //     return inbetweenBrackets
    // }
}
```
&nbsp;  

#### Subscripts can't be write-only, but we can just ignore get

&nbsp;  

```swift
class WriteOnlyWannabe {
    subscript(whatever: String) -> String {
        get { return "" }
        set { println("\(newValue)") }
    }
}

WriteOnlyWannabe()["doesn't matter"] = "to be printed"
```
&nbsp;  
#### Nothing is also a type

&nbsp;  

```swift
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
```
&nbsp; 
