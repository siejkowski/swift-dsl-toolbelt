## Closures

Block on steroids. Easier to work with, easier to pass around.

#### Closures escape the name in named parameters:

&nbsp;  

```swift
func executor<T>(argument: T, #closure: T -> T) -> T {
	return closure(argument)
}
let executed = executor("looks like i'm gonna be returned", { return $0 })

executed
```
&nbsp;  
#### No inout closure passing is possible

&nbsp;  

```swift
func transformator<T>(argument: T, inout closure: T -> T) -> () {
	closure = { $0; return argument }
}
var tmp: String -> String = { return $0 }
//transformator("not possible", &tmp)
```
&nbsp;  
#### Trailing closures work in closures themselfs

&nbsp;  

```swift
let executeClosureWithZero: (Int -> Int) -> Int = { 
	return $0(0) 
}
executeClosureWithZero { return 30 &/ $0 }
```
&nbsp; 
#### Only the last one of variadic closures can be trailing
&nbsp;  

```swift
let ignoringNotTrailingClosure: ((Int -> Int)...) -> Int = {
	return $0[$0.count - 1](1)
}

let result = ignoringNotTrailingClosure(
    	{ 10 * $0 },
    	{ 20 * $0 }
    )
    { return 30 * $0 }

result
```
&nbsp; 

#### Cannot chain trailing closures
&nbsp;  

```swift
let closureReturningClosure: (Int -> Int) ->
     ((Int -> Int) -> Int) = {
 	let result = $0(1)
 	return { closure in
 		return closure(result)
 	}
}

let notChainedResult = (closureReturningClosure { 10 * $0 }) { 20 * $0 }

notChainedResult
```
&nbsp; 

#### Chaining is possible with operator
&nbsp;  

```swift
@infix func + (argument: (Int -> Int) -> Int, closure: Int -> Int) -> Int {
 	return argument(closure)
}

let operatorChainedResult = closureReturningClosure { 10 * $0 } + { 20 * $0 }

operatorChainedResult
```
&nbsp;  

#### Or with dedicated chaining object

&nbsp; 

```swift
class With<T> { 
 	let argument: T
 	init(_ argument: T) { self.argument = argument }
 	func with(closure: T -> T) -> T {
		return closure(argument)
	}
}

let withChainedClosure: (Int -> Int) -> With<Int> = {
 	return With($0(1))
}

let withChainedResult = withChainedClosure{ 10 * $0 }.with{ 20 * $0 }

withChainedResult
```
&nbsp;  

### @auto_closure

&nbsp;  

```swift
func notWorkingToday<T>(closure: @auto_closure () -> T) -> T? { 
	return nil
}

notWorkingToday("please work")
```
&nbsp;  

#### But there is no trailing auto closure

&nbsp;  

```swift
func workingToday<T>(closure: @auto_closure () -> T) -> T? { 
	return closure()
}

//workingToday "please work"
```
&nbsp; 

#### Nor there is an auto closure with parameters

&nbsp;  

```swift
//func workingWhenSupplied(closure: @auto_closure (String) -> String) -> String? {
//    return closure("a")
//}
//
//workingWhenSupplied("please work")
```
&nbsp; 

&nbsp; 
#### Functions are closures

&nbsp;  

```swift
func doSth<T>(function: (T, T) -> T, first: T, second: T) -> T {
	return function(first, second)
}

doSth(-, 10, 5)
```
&nbsp; 

#### Functions are not treated as trailing clousures!
&nbsp;  

```swift
func doSthYoda<T>(second: T, first: T, function: (T, T) -> T) -> T {
	return function(first, second)
}

doSthYoda(10, 5, -)
//doSthYoda(10, 5) -
```
&nbsp; 
