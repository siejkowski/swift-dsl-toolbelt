&nbsp;  

&nbsp;  

# Github based showcase

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

    // https://github.com/Quick/Nimble
    expect(1).to(equal(1))
    expect(1.2).to(beCloseTo(1.1, within: 1)) 
    expect{ "hello" }.to(equalTo("hello"))
    expect(value).toEventually(equal(1))

&nbsp; 

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

    // by Leszek Ślażyński, 
    // https://github.com/slazyk
    <1..5>
    <1..5| 
    |1..5> 
    |1..5|

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

    // https://github.com/kam800/SwiftMapper
    mapper.map { (field, user) in
        field["user_name"] => user.name
        field.min(18)["age"] => user.age
    }

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

## Dos and don'ts for DSL writing

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

```swift
import Foundation
```
