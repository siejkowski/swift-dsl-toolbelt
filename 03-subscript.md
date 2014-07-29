```swift
import UIKit
```
## Subscripting

In Objective-C we used:

```
- (id)objectForKeyedSubscript:(id)key;
- (void)setObject:(id)object 
forKeyedSubscript:(id<NSCopying>)aKey;
- (id)objectAtIndexedSubscript:
					(NSUInteger)index;
- (void)setObject:(id)anObject 
atIndexedSubscript:(NSUInteger)index;

object[key] = value
object[index] = value
```

to get:  

&nbsp;  

```swift
var dict: [String:Int] = [:]
var array: [Int] = [42]
dict["meaning"] = array[0]
```
&nbsp;  
In Swift we have:  

&nbsp;  

```swift
class Classy {
	subscript(inbetweenBrackets: Any) -> Any {
    get {
        return inbetweenBrackets
    }
    set {
    	println("\(newValue)")    
    }
    }
}
```
&nbsp;  
Subscripts can:
* be defined in classes, structs and enums  

&nbsp;  

```swift
struct Structy {
	subscript(inbetweenBrackets: Any) -> Any {
        return inbetweenBrackets
    }
}
```
&nbsp;  
* be read-only (get) or read-write (get-set)  

&nbsp;  

```swift
enum Enumy {
	subscript(inbetweenBrackets: Any) -> Any {
    get {
        return inbetweenBrackets
    }
    set {
    	println("\(newValue)")    
    }
    }
}
```
&nbsp;  
* be overloaded  

&nbsp;  

```swift
extension Classy {
	subscript(inbetweenBrackets: (Any, Any)) -> (Any, Any) {
    get {
        return inbetweenBrackets
    }
    set {
    	println("\(newValue)")    
    }
    }
}
```
&nbsp;  
* have parameters of any type, multiple parameters, variadic, variable and named parameters  

&nbsp;  

```swift
extension Classy {
	subscript(first: @auto_closure () -> String, second: Bool -> (), var third: Int, forth forth: String, more: UIView...) -> Any {
        return "too many parameters"
    }
}
```
&nbsp;  
Subscripts can't:
* be generic  

&nbsp;  

```swift
extension Classy {
	// subscript<T>(inbetweenBrackets: T) -> T {
    // get {
    //     return inbetweenBrackets
    // }
    // set {
    // 	println("\(newValue)")    
    // }
    // }
}
```
&nbsp;  
* have inouts  

&nbsp;  

```swift
extension Classy {
	// subscript(inout inbetweenBrackets: Any) -> Any {
    //     return inbetweenBrackets
    // }
}
```
&nbsp;  
* have default values  

&nbsp;  

```swift
extension Classy {
	// subscript(inbetweenBrackets: Int = 42) -> Int {
    //     return inbetweenBrackets
    // }
}
```
&nbsp;  
* be write only  

&nbsp;  

```swift
extension Classy {
	// subscript(inbetweenBrackets: Any) -> Any {
    // set {
    // 	println("\(newValue)")    
    // }
    // }
}
```