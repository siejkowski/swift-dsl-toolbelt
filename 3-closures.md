&nbsp;  

&nbsp;  

# Closures

#### Block on steroids. Easier to work with, easier to pass around.

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  
#### Trailing closures

&nbsp;  

```swift
func trailing<T>(argument: T, closure: T -> T) -> T {
	return closure(argument)
}
trailing("impossible") {
	return "\($0) is nothing"	
}
```
&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

#### Trailing closures in closures

&nbsp;  

```swift
let executeClosureWithZero: (Int -> Int) -> Int = { 
	return $0(0) 
}
executeClosureWithZero { return 30 &/ $0 }
```
&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

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

&nbsp;  

&nbsp;  

&nbsp;  

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

let notChainedResult = 
	(closureReturningClosure { 10 * $0 }) { 20 * $0 }

notChainedResult
```
&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

#### Chaining is possible with operator
&nbsp;  

```swift
@infix func --> (argument: (Int -> Int) -> Int, closure: Int -> Int) -> Int {
 	return argument(closure)
}

let operatorChainedResult = 
		closureReturningClosure { 10 * $0 } --> { 20 * $0 }

operatorChainedResult
```
&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

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

let withChainedResult = 
	withChainedClosure{ 10 * $0 }.with{ 20 * $0 }

withChainedResult
```
&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

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

&nbsp;  

&nbsp;  

&nbsp;  

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

&nbsp;  

&nbsp;  

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

&nbsp;  

&nbsp;  
