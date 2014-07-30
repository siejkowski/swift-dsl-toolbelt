&nbsp;  

&nbsp;  

&nbsp;  

# Subscripting

#### Almost the same as in Objective-C

&nbsp;  

&nbsp;  

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
