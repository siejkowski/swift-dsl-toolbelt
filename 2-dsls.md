&nbsp;  

&nbsp;  

# Why use DSL?

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

### To reduce boilerplate - e.g. wrap an extensive API into an easier form

	// https://github.com/iMartinKiss/KeepLayout
	[@[viewOne, viewTwo, viewThree] 
        keepHorizontalOffsets:KeepRequired(20.f)];

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

### To express the strictly limited functionality in a more readable way

	// https://github.com/martydill/ios-queryable
    NSArray* widgets = [[[[[self.managedObjectContext 
            ofType:@"Widget"]
            where:@"Type == 'abc'"]
            orderBy:@"createddate"]
            take:5]
            toArray];

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

### To bring widely-used conventions and techniques to the platform

    // https://github.com/kiwi-bdd/Kiwi
    describe(@"Team", ^{
        context(@"when newly created", ^{
            it(@"should have 11 players", ^{
                id team = [Team team];
                [[[team should] have:11] players];
            });
        });
    });

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

# What matters when writing a DSL?

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

### It should make your code easier to read and understand

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

### It should not mislead other programmers

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

### It should always aim at solving the problem in a simpler way, not in a more clever way

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

```swift
operator infix ^^ {}
func ^^ (left: String, right: String) -> String {
    return "(: \(left) ^.^ \(right) :)"
}
"hey" ^^ "ho"
```
&nbsp;  

&nbsp;  

&nbsp;  

&nbsp;  

## What about Swift?

### Still beta - no production code

### Some great experiments are being done, but a lot of them might be obsolete soon

### Hack! Hack! Hack!

&nbsp;  

&nbsp;  

&nbsp;  