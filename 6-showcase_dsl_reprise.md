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
&nbsp; 

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

## Why not use DSL?

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  
