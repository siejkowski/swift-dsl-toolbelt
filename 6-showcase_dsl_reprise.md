&nbsp;  

&nbsp;  

# Github based showcase

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

    // by Kyle Fuller
    // https://github.com/kylef/QueryKit
    Person.queryset(context)
          .filter(Person.name == "Kyle")
          .delete()

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

    // https://github.com/robb/Cartography
    layout(view1, view2) { view1, view2 in
        view1.width   == (view.superview!.width - 50) * 0.5
        view2.width   == view1.width - 50
        view1.centerX == view.superview!.centerX
        view1.top >= view.superview!.top + 20
    }

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
