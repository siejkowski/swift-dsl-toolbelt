&nbsp;  

&nbsp;  

&nbsp;  

## Subscripting

#### Almost the same as in Objective-C

&nbsp;  

&nbsp;  

&nbsp;  

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

&nbsp;  

&nbsp;  

&nbsp;  

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

&nbsp;  

&nbsp;  

&nbsp;  

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

&nbsp;  
